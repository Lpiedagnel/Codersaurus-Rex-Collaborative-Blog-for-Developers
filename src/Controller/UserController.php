<?php

namespace App\Controller;

use App\Entity\User;
use App\Form\UserType;
use App\Repository\UserRepository;
use App\Service\UploadImageService;
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
use Symfony\Component\Form\Form;
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
    public function index(UserRepository $userRepository): Response
    {
        $users = $userRepository->findAll();

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
    public function show(User $user): Response
    {
        return $this->render('user/show.html.twig', [
            'controller_name' => 'UserController',
            'user' => $user
        ]);
    }

    #[Route('/{id}/edit', name: 'app_user_edit', methods: ['GET', 'POST']), IsGranted('ROLE_USER')]
    public function edit(Request $request, User $user, UserRepository $userRepository, UploadImageService $uploadImageService): Response
    {
        // Check auth
        $this->userAuthorization->checkUserAuthorization($user);

        $form = $this->createForm(UserType::class, $user, ['required' => true]);

        // Get currentEmail
        $currentEmail = $user->getEmail();

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            // Check if user want to change mail and prevent it to doing so (Only for test version)
            if ($form->get('email')->getData() !== $currentEmail) {
                $this->addFlash('success', "Vous êtes sur une version de test de Codersaurus Rex. Il n'est donc pas possible de changer l'adresse mail du compte de test.");
                $user->setEmail($currentEmail);
            }

            // Manage upload
            $uploadedFile = $form['avatarFile']->getData();
            if ($uploadedFile) {
                $uploadImageService->handleUpload($form, $user);
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
            /*
            
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
            */

            $this->addFlash('success', "Vous êtes sur une version de test de Codersaurus Rex. Il n'est donc pas possible de changer le mot de passe du compte de test (sinon plus personne ne pourrait se connecter avec).");
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
