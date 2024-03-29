<?php

namespace App\Controller;

use App\Repository\ArticleRepository;
use App\Repository\CategoryRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Pagerfanta\Doctrine\ORM\QueryAdapter;
use Pagerfanta\Pagerfanta;

class HomeController extends AbstractController
{
    #[Route('/', name: 'app_home')]
    public function index(ArticleRepository $articleRepository, Request $request, CategoryRepository $categoryRepository): Response
    {
        // Handle category and get data
        $categoryData = $this->handleCategory($categoryRepository, $request, $articleRepository);

        // Add pagination
        $adapter = new QueryAdapter($categoryData['queryBuilder']);
        $articles = Pagerfanta::createForCurrentPageWithMaxPerPage(
            $adapter,
            $request->query->get('page', 1),
            4
        );

        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
            'articles' => $articles,
            'tags' => $categoryData['categoriesList'],
            'currentTag' => $categoryData['categoryTitle']
        ]);
    }

    private function handleCategory(CategoryRepository $categoryRepository, Request $request, ArticleRepository $articleRepository): array
    {
        // Get category
        $currentCategory = $request->query->get('category');
        
        $categoryData = [];

        // If no category selected
        if ($currentCategory === null) {
            $categoryData = [
                'queryBuilder' => $articleRepository->createFindLatest(),
                'categoryTitle' => "Les derniers articles"
            ];

        // If category selected
        } else {
            $categoryData = [
                'queryBuilder' => $articleRepository->createFindLatest(null, $currentCategory),
                'categoryTitle' => $currentCategory
            ];
        }

        // Get list of all categories
        $categoryData += [
            "categoriesList" => $categoryRepository->findAllCategoriesName()
        ];

        return $categoryData;
    }
}
