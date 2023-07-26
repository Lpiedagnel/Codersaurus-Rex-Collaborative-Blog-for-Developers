<?php

namespace App\Service;

use App\Entity\Article;
use App\Repository\ArticleRepository;
use Symfony\Component\HttpFoundation\RequestStack;

class ArticleViewCounter
{
    private $requestStack;
    private $ArticleRepository;

    public function __construct(RequestStack $requestStack, ArticleRepository $articleRepository)
    {
        $this->requestStack = $requestStack;
        $this->ArticleRepository = $articleRepository;
    }

    public function incrementViewsCount(Article $article): void 
    {
        $articleId = $article->getId();

        // Check session if already was already viewed by the user.
        $session = $this->requestStack->getSession();
        if (!$session->has('viewed_articles')) {
            $session->set('viewed_articles', []);
        }

        $viewedArticles = $session->get('viewed_articles');

        if (!in_array($articleId, $viewedArticles)) {
            $article->setViewsCount($article->getViewsCount() + 1);
            $this->ArticleRepository->save($article, true);

            $viewedArticles[] = $articleId;
            $session->set('viewed_articles', $viewedArticles);
        }
    }
}