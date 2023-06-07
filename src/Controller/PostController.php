<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class PostController extends AbstractController
{
    #[Route('/post', name: 'app_post_show')]
    public function index(): Response
    {
        return $this->render('post/show.html.twig', [
            'controller_name' => 'PostController',
        ]);
    }
}