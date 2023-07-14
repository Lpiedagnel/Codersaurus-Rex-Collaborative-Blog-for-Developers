<?php

namespace App\Controller;

use App\Entity\Article;
use App\Form\ArticleType;
use App\Repository\ArticleRepository;
use App\Repository\UserRepository;
use App\Service\UploadImageService;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Bundle\SecurityBundle\Security;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Http\Attribute\IsGranted;
use Cocur\Slugify\Slugify;
use Symfony\Component\HttpKernel\KernelInterface;

#[Route('/article')]
class ArticleController extends AbstractController
{
    #[Route('/new', name: 'app_article_new', methods: ['GET', 'POST'])]
    #[IsGranted('ROLE_USER')]
    public function new(Request $request, ArticleRepository $articleRepository, Security $security, UploadImageService $uploadImage, KernelInterface $kernel): Response
    {
        $article = new Article();

        $form = $this->createForm(ArticleType::class, $article, ['required' => true]);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            
            // Create unique slug
            $slugify = new Slugify;
            $slug = $slugify->slugify($article->getTitle());
            
            // Verify if slug is unique
            $existingArticle = $articleRepository->findOneBy(['slug' => $slug]);
            $slug .= $existingArticle ? '-' . uniqid() : '';
            
            $article->setSlug($slug);
            
            // Check Upload
            /** @var UploadedFile $uploadedFile */
            $uploadedFile = $form['thumbnailUrl']->getData();
            
            if ($uploadedFile) {
                $destination = $this->getParameter('kernel.project_dir') . '/public/uploads/thumbnails/';
                $fileName = $slug . '.webp';
                
                $uploadImage->upload($uploadedFile, $destination, $fileName);
                
                $article->setThumbnailUrl('/uploads/thumbnails/' . $fileName);
            }
            
            $article->setAuthor($security->getUser());
            $article->setCreatedAt(new \DateTimeImmutable());
            $articleRepository->save($article, true);

            $this->addFlash('success', "Votre article a bien été soumis ! La rédaction s'occupera de le relire et vous tiendra au courant par Mail !");
            return $this->redirectToRoute('app_home', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('article/new.html.twig', [
            'article' => $article,
            'form' => $form,
        ]);
    }

    #[Route('/{slug}', name: 'app_article_show', methods: ['GET'])]
    public function show(Article $article, UserRepository $userRepository, ArticleRepository $articleRepository): Response
    {
        $authorId = $article->getAuthor();

        $user = $userRepository->find($authorId);
        $tags = $article->getTags();
        $randomKey = array_rand($tags);
        $randomTag = $tags[$randomKey];
        $similarArticlesData = $articleRepository->findByTag($randomTag, 3);

        $author = [
            'id' => $user->getId(),
            'username' => $user->getUsername(),
            'avatar_link' => $user->getAvatarLink(),
            'job' => $user->getJob(),
        ];

        $similarArticles = [];
        foreach ($similarArticlesData as $currentArticle) {
            $currentArticle = [
                'slug' => $currentArticle->getSlug(),
                'title' => $currentArticle->getTitle()
            ];

            $similarArticles[] = $currentArticle;
        }

        return $this->render('article/show.html.twig', [
            'article' => $article,
            'author' => $author,
            'similarArticles' => $similarArticles
        ]);
    }

    #[Route('/{slug}/edit', name: 'app_article_edit', methods: ['GET', 'POST'])]
    #[IsGranted('ROLE_EDITOR')]
    public function edit(Request $request, Article $article, ArticleRepository $articleRepository, UploadImageService $uploadImage): Response
    {
        $form = $this->createForm(ArticleType::class, $article, ['required' => false]);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            // Check Upload
            /** @var UploadedFile $uploadedFile */
            $uploadedFile = $form['thumbnailUrl']->getData();
            
            if ($uploadedFile) {
                $destination = $this->getParameter('kernel.project_dir') . '/public/uploads/thumbnails/';
                $fileName = $article->getSlug() . '.webp';
                
                $uploadImage->upload($uploadedFile, $destination, $fileName);
                
                $article->setThumbnailUrl('/uploads/thumbnails/' . $fileName);
            }

            $articleRepository->save($article, true);

            return $this->redirectToRoute('app_home', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('article/edit.html.twig', [
            'article' => $article,
            'form' => $form,
        ]);
    }

    #[Route('/{slug}', name: 'app_article_delete', methods: ['POST'])]
    #[IsGranted('ROLE_EDITOR')]
    public function delete(Request $request, Article $article, ArticleRepository $articleRepository): Response
    {
        if ($this->isCsrfTokenValid('delete'.$article->getId(), $request->request->get('_token'))) {
            $articleRepository->remove($article, true);
        }

        return $this->redirectToRoute('app_article_index', [], Response::HTTP_SEE_OTHER);
    }
}
