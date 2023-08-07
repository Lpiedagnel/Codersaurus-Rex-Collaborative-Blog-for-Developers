<?php

namespace App\Service;

use App\Entity\Article;
use App\Entity\User;
use Symfony\Component\Form\Form;
use Symfony\Component\HttpKernel\KernelInterface;

class UploadImageService
{

    private $kernel;

    public function __construct(KernelInterface $kernel)
    {
        $this->kernel = $kernel;
    }

    public function handleUpload(Form $form, $entity): void
    {
        // Check current Entity
        $isUser = false;
        $isArticle = false;

        // Upload for User
        if ($entity instanceof User) {
            $isUser = true;
            $folderName = 'avatars';
            $name = $entity->getId() . '.webp';
            $uploadedFile = $form['avatarFile']->getData();

        // Upload for Article
        } elseif ($entity instanceof Article) {
            $isArticle = true;
            $folderName = 'thumbnails';
            $name = $entity->getSlug() . '.webp';
            $uploadedFile = $form['thumbnailUrl']->getData();
        }

        // Upload the file
        $destination = $this->kernel->getProjectDir() . '/public/uploads/' . $folderName;
        $this->upload($uploadedFile, $destination, $name);

        // Store it to database
        if ($isUser) {
            $entity->setAvatarLink('/uploads/avatars/' . $name);
        } elseif ($isArticle) {
            $entity->setThumbnailUrl('/uploads/thumbnails/' . $name);
        }
    }

    private function upload($uploadedFile, String $path, $fileName): void
    {
        if ($uploadedFile) {

            $uploadedFile->move(
                $path,
                $fileName
            );
        }
    }
}