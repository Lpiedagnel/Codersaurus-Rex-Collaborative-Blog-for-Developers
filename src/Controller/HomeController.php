<?php

namespace App\Controller;

use App\Entity\Article;
use App\Repository\ArticleRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\DBAL\Types\Type;
use Pagerfanta\Doctrine\ORM\QueryAdapter;
use Pagerfanta\Pagerfanta;

class HomeController extends AbstractController
{
    #[Route('/', name: 'app_home')]
    public function index(ArticleRepository $articleRepository, Request $request): Response
    {
        $tags = $articleRepository->getAllTags();

        $tag = $request->query->get('tag');

        
        if ($tag === null) {
            $tagName = "Les derniers articles";

            $queryBuilder = $articleRepository->createFindLatest();

            $adapter = new QueryAdapter($queryBuilder);

            $articles = Pagerfanta::createForCurrentPageWithMaxPerPage(
                $adapter,
                $request->query->get('page', 1),
                4
            );

        } else {
            $tagName = $tag;

            $articles = $articleRepository->findByTag($tag);
        }


        
        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
            'articles' => $articles,
            'tags' => $tags,
            'currentTag' => $tagName
        ]);
    }
}
