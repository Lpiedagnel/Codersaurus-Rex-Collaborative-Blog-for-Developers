<?php

namespace App\Controller;

use App\Entity\User;
use App\Form\UserType;
use App\Repository\UserRepository;
use Exception;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Bundle\SecurityBundle\Security;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Http\Attribute\CurrentUser;
use Symfony\Component\Validator\Constraints\File;

#[Route('/user')]
class UserController extends AbstractController
{
    #[Route('/', name: 'app_user_index', methods: ['GET'])]
    public function index(UserRepository $userRepository): Response
    {
        $usersData = $userRepository->findAll();

        $users = [];

        foreach ($usersData as $currentUser) {
            $user = [
                'id' => $currentUser->getId(),
                'avatar_link' => $currentUser->getAvatarLink(),
                'username' => $currentUser->getUsername(),
                'job' => $currentUser->getJob()
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
            'avatar_link' => $userData->getAvatarLink()
        ];

        return $this->render('user/show.html.twig', [
            'controller_name' => 'UserController',
            'user' => $user
        ]);
    }

    #[Route('/{id}/edit', name: 'app_user_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, User $user, UserRepository $userRepository, Security $security): Response
    {
        // Check auth
        $currentUser = $security->getUser();

        if ($currentUser->getId() !== $user->getId()) {
            throw new Exception("Vous n'avez pas l'autorisation de modifier ce compte.");
        }

        // $form = $this->createForm(UserType::class, $user);
        $form = $this->createFormBuilder($user)
            ->add('email', EmailType::class)
            ->add('username', TextType::class)
            ->add('job', TextType::class, ['required' => false])
            ->add('bio', TextareaType::class, ['required' => false])
            ->add('birthday', DateType::class, [
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
    
                $originalFileName = pathinfo($uploadedFile->getClientOriginalName(), PATHINFO_FILENAME);
                $newFileName = $user->getId() . '.webp';
    
                $uploadedFile->move(
                    $destination,
                    $newFileName
                );
                $user->setAvatarLink('/uploads/avatars/' . $newFileName);
            }

            $userRepository->save($user, true);

            return $this->redirectToRoute('app_user_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('user/edit.html.twig', [
            'user' => $user,
            'form' => $form,
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
