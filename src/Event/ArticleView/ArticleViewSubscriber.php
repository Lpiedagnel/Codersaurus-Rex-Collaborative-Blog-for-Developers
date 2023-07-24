<?php

namespace App\EventSubcriber;

use App\Event\ArticleViewEvent;
use Symfony\Component\EventDispatcher\EventSubscriberInterface;
use Symfony\Component\HttpFoundation\Session\SessionInterface;

class ArticleViewSubscriber implements EventSubscriberInterface
{
    private $session;

    public function __construct(SessionInterface $session)
    {
        $this->session = $session;
    }

    public static function getSubscribedEvents()
    {
        return [
            ArticleViewEvent::class => 'onArticleView',
        ];
    }

    public function onArticleView(ArticleViewEvent $event)
    {
        $article = $event->getArticle();
        $articleId = $article->getId();

        // Check session if article was already view by the user. Prevent spamming.
        if (!$this->session->has('viewed_articles')) {
            $this->session->set('viewed_articles', []);
        }

        $viewedArticles = $this->session->get('viewed_articles');

        if (!in_array($articleId, $viewedArticles)) {
            // Add view
            $article->setViewsCount($article->getViewsCount() + 1);

            // Add article in the list of articles views in session
            $viewedArticles[] = $articleId;
            $this->session->set('viewed_articles', $viewedArticles);
        }
    }
}