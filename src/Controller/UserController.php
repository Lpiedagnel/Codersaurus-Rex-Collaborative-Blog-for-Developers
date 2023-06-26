<?php

namespace App\Controller;

use App\Entity\User;
use App\Form\UserType;
use App\Repository\UserRepository;
use Exception;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Bundle\SecurityBundle\Security;
use Symfony\Component\Form\Extension\Core\Type\BirthdayType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\RepeatedType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Http\Attribute\CurrentUser;
use Symfony\Component\Validator\Constraints\File;
use App\Service\UserAuthorizationService;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\PasswordHasher\Exception\InvalidPasswordException;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;
use Symfony\Component\Security\Http\Attribute\IsGranted;

#[Route('/user')]
class UserController extends AbstractController
{
    private $userAuthorization;

    public function __construct(UserAuthorizationService $userAuthorization)
    {
        $this->userAuthorization = $userAuthorization;
    }


    #[Route('/', name: 'app_user_index', methods: ['GET'])]
    public function index(UserRepository $userRepository, Security $security): Response
    {
        $usersData = $userRepository->findAll();

        $users = [];

        foreach ($usersData as $currentUser) {
            $user = [
                'id' => $currentUser->getId(),
                'avatar_link' => $currentUser->getAvatarLink(),
                'username' => $currentUser->getUsername(),
                'job' => $currentUser->getJob(),
                'role' => $currentUser->getRoles()
            ];
            $users[] = $user;
        }

        return $this->render('user/index.html.twig', [
            'users' => $users,
        ]);
    }

    /*
    #[Route('/new', name: 'app_user_new', methods: ['GET', 'POST'])]
    public function new(Request $request, UserRepository $userRepository): Response
    {
        $user = new User();
        $form = $this->createForm(UserType::class, $user);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $userRepository->save($user, true);

            return $this->redirectToRoute('app_user_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('user/new.html.twig', [
            'user' => $user,
            'form' => $form,
        ]);
    }
    */

    #[Route('/{id}', name: 'app_user_show', methods: ['GET'])]
    public function show(User $userData): Response
    {
        $user = [
            'username' => $userData->getUsername(),
            'job' => $userData->getJob(),
            'bio' => $userData->getBio(),
            'createdAt' => $userData->getCreatedAt(),
            'birthday' => $userData->getBirthday(),
            'avatar_link' => $userData->getAvatarLink(),
            'role' => $userData->getRoles(),
            'articles' => $userData->getArticles()
        ];

        return $this->render('user/show.html.twig', [
            'controller_name' => 'UserController',
            'user' => $user
        ]);
    }

    #[Route('/{id}/edit', name: 'app_user_edit', methods: ['GET', 'POST']), IsGranted('ROLE_USER')]
    public function edit(Request $request, User $user, UserRepository $userRepository, Security $security): Response
    {
        // Check auth
        $this->userAuthorization->checkUserAuthorization($user);

        $form = $this->createFormBuilder($user)
            ->add('email', EmailType::class)
            ->add('username', TextType::class)
            ->add('job', TextType::class, ['required' => false])
            ->add('bio', TextareaType::class, ['required' => false])
            ->add('birthday', BirthdayType::class, [
                'widget' => 'single_text',
                'format' => 'yyyy-MM-dd',
                'required' => false,
                'years' => range(date('Y') - 10, date('Y') - 100)
                ])
            ->add('avatarFile', FileType::class, [
                'required' => false,
                'mapped' => false,
                'attr' => [
                    'enctype' => 'multipart/form-data'
                ],
                'constraints' => [
                    new File([
                        'maxSize' => '1024k',
                        'maxSizeMessage' => 'Le fichier est trop volumineux. La taille maximale autorisée est 1024 Ko.',
                        'mimeTypes' => [
                            'image/jpg',
                            'image/jpeg',
                            'image/png',
                            'image/webp',
                        ],
                        'mimeTypesMessage' => 'Vous devez uploader une image (format .jpg, .jpeg, .png ou .webp)'
                    ])
                ]
            ])
            ->getForm()
            ;

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            // Check Upload
            /** @var UploadedFile $uploadedFile */
            $uploadedFile = $form['avatarFile']->getData();

            if ($uploadedFile) {
                $destination = $this->getParameter('kernel.project_dir') . '/public/uploads/avatars';
    
                $newFileName = $user->getId() . '.webp';
    
                $uploadedFile->move(
                    $destination,
                    $newFileName
                );
                $user->setAvatarLink('/uploads/avatars/' . $newFileName);
            }

            $userRepository->save($user, true);

            $this->addFlash('success', 'Votre profil a été mis à jour.');

            return $this->redirectToRoute('app_user_edit', ['id' => $user->getId()], Response::HTTP_SEE_OTHER);
        }

        return $this->render('user/edit.html.twig', [
            'user' => $user,
            'form' => $form,
        ]);
    }

    #[Route('/{id}/edit/password', name: 'app_user_password_edit', methods: ['GET', 'POST'])]
    public function changePassword(Request $request, User $user, UserPasswordHasherInterface $userPasswordHasher, EntityManagerInterface $entityManager): Response
    {
        // Check auth
        $this->userAuthorization->checkUserAuthorization($user);

        // Form
        $form = $this->createFormBuilder()
            ->add('currentPassword', PasswordType::class, [
                'required' => true
            ])
            ->add('newPassword', RepeatedType::class, [
                'type' => PasswordType::class, 
                'invalid_message' => 'Les mots de passe doivent être identiques !',
                'required' => true
            ])
            ->getForm()
            ;
            
        $form->handleRequest($request);

        // If submit
        if ($form->isSubmitted() && $form->isValid()) {
            
            // Check password
            $currentPassword = $form->get('currentPassword')->getData();

            if (!password_verify($currentPassword, $user->getPassword())) {
                throw new InvalidPasswordException();
            }

            $user->setPassword(
                $userPasswordHasher->hashPassword(
                    $user,
                    $form->get('newPassword')->getData()
                )
            );

            $entityManager->persist($user);
            $entityManager->flush();

            $this->addFlash('success', 'Votre mot de passe a bien été modifié.');

            return $this->redirectToRoute('app_user_edit', [ 'id' => $user->getId()]);
        }

        // Render
        return $this->render('user/edit-password.html.twig', [
            'user' => $user,
            'form' => $form
        ]);
    }
    

    #[Route('/{id}', name: 'app_user_delete', methods: ['POST'])]
    public function delete(Request $request, User $user, UserRepository $userRepository): Response
    {
        if ($this->isCsrfTokenValid('delete'.$user->getId(), $request->request->get('_token'))) {
            $userRepository->remove($user, true);
        }

        return $this->redirectToRoute('app_user_index', [], Response::HTTP_SEE_OTHER);
    }
}
