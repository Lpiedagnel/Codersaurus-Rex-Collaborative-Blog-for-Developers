<?php

namespace App\Controller;

use App\Entity\Article;
use App\Repository\ArticleRepository;
use App\Repository\CategoryRepository;
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
    public function index(ArticleRepository $articleRepository, Request $request, CategoryRepository $categoryRepository): Response
    {
        // Get categories
        $categories = $categoryRepository->findAllCategoriesName();
        $currentCategory = $request->query->get('category');

        // Get articles
        if ($currentCategory === null) {
            // Get last articles
            $queryBuilder = $articleRepository->createFindLatest();
            $categoryTitle = "Les derniers articles";

        } else {
            $queryBuilder = $articleRepository->createFindLatest(null, $currentCategory);
            $categoryTitle = $currentCategory;
        }

        // Add pagination
        $adapter = new QueryAdapter($queryBuilder);
        $articles = Pagerfanta::createForCurrentPageWithMaxPerPage(
            $adapter,
            $request->query->get('page', 1),
            4
        );

        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
            'articles' => $articles,
            'tags' => $categories,
            'currentTag' => $categoryTitle
        ]);
    }
}
