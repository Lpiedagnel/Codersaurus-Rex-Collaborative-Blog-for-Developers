<?php

namespace App\Controller;

use App\Entity\Article;
use App\Repository\ArticleRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\DBAL\Types\Type;


class HomeController extends AbstractController
{
    #[Route('/', name: 'app_home')]
    public function index(ArticleRepository $articleRepository, Request $request): Response
    {
        $tag = $request->query->get('tag');
        
        if ($tag === null) {
            $articles = $articleRepository->findLatest(4);
        } else {
           $articles = $articleRepository->findByTag($tag);
        }
        
        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
            'articles' => $articles
        ]);
    }
}
