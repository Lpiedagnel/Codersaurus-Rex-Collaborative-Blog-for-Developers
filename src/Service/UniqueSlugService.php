<?php

namespace App\Service;

use App\Repository\ArticleRepository;
use Cocur\Slugify\Slugify;

class UniqueSlugService
{

    private $slugify;
    private $articleRepository;

    public function __construct(Slugify $slugify, ArticleRepository $articleRepository)
    {
        $this->slugify = $slugify;
        $this->articleRepository = $articleRepository;
    }

    public function createUniqueSlug(String $title, ): String
    {
        // Create unique slug
        $slug = $this->slugify->slugify($title);
        
        // Verify if slug is unique
        $existingArticle = $this->articleRepository->findOneBy(['slug' => $slug]);
        $slug .= $existingArticle ? '-' . uniqid() : '';

        return $slug;
    }
}