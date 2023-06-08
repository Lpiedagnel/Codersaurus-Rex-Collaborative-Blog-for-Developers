<?php

namespace App\Controller;

use App\Entity\User;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class UserController extends AbstractController
{
    #[Route('/user/{id}', name: 'app_user_show')]
    public function index(User $userData): Response
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
}
