<?php

namespace App\Controller;

use App\Entity\Article;
use App\Entity\Comment;
use App\Event\ArticleViewEvent;
use App\Form\ArticleType;
use App\Form\CommentType;
use App\Repository\ArticleRepository;
use App\Repository\CommentRepository;
use App\Repository\UserRepository;
use App\Service\ArticleViewCounter;
use App\Service\UniqueSlugService;
use App\Service\UploadImageService;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Bundle\SecurityBundle\Security;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Http\Attribute\IsGranted;
use Cocur\Slugify\Slugify;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpKernel\KernelInterface;
use Doctrine\Common\Collections\Collection;
use Symfony\Component\Form\FormInterface as FormFormInterface;
use Symfony\Component\Form\Test\FormInterface;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Contracts\EventDispatcher\EventDispatcherInterface as EventDispatcherEventDispatcherInterface;

#[Route('/article')]
class ArticleController extends AbstractController
{

    #[Route('/new', name: 'app_article_new', methods: ['GET', 'POST'])]
    #[IsGranted('ROLE_USER')]
    public function new(Request $request, ArticleRepository $articleRepository, Security $security, UniqueSlugService $uniqueSlugService, UploadImageService $uploadImage): Response
    {
        $article = new Article();

        $form = $this->createForm(ArticleType::class, $article, ['required' => true]);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            
            $slug = $uniqueSlugService->createUniqueSlug($article->getTitle());
            $article->setSlug($slug);

            // Set categories
            $selectedCategories = $form['categories']->getData();
            foreach ($selectedCategories as $category) {
                $article->addCategory($category);
            }
            
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

    #[Route('/{slug}', name: 'app_article_show', methods: ['GET', 'POST'])]
    public function show(ArticleRepository $articleRepository, Request $request, Security $security, CommentRepository $commentRepository, EntityManagerInterface $entityManager, ArticleViewCounter $articleViewCounter): Response 
    {
        // Get article
        $slug = $request->get('slug');
        $article = $articleRepository->findArticleWithAuthorAndCategoriesAndComments($slug);
    
        // Get similar articles
        $similarArticles = $this->findSimilarArticles($articleRepository, $article);
    
        // Create Comment Form
        $commentForm = $this->createAndHandleCommentForm($request, $security, $article, $commentRepository, $entityManager);
    
        // Check if the form was successfully submitted and redirected. Otherwise the redirect doesn't work.
        if ($commentForm instanceof RedirectResponse) {
            return $commentForm;
        }
    
        // Add view count
        $articleViewCounter->incrementViewsCount($article);
    
        // Render
        return $this->render('article/show.html.twig', [
            'article' => $article,
            'author' => $article->getAuthor(),
            'similarArticles' => $similarArticles,
            'commentForm' => $commentForm,
            'comments' => $article->getComments(),
        ]);
    }
    
    private function createAndHandleCommentForm(Request $request, Security $security, Article $article, CommentRepository $commentRepository, EntityManagerInterface $entityManager): FormFormInterface | RedirectResponse 
    {
        $comment = new Comment();
        $commentForm = $this->createForm(CommentType::class, $comment);
        $commentForm->handleRequest($request);
    
        // If the form is submitted
        if ($commentForm->isSubmitted() && $commentForm->isValid()) {
            $comment->setAuthor($security->getUser());
            $comment->setArticle($article);
            $comment->setCreatedAt(new \DateTimeImmutable());
    
            $commentRepository->save($comment);
            $entityManager->flush();
    
            $this->addFlash('success', 'Votre commentaire a été publié !');
    
            // Redirect to current Page
            return $this->redirectToRoute('app_article_show', ['slug' => $article->getSlug()]);
        }
    
        return $commentForm;
    }
    
    private function findSimilarArticles(ArticleRepository $articleRepository, Article $article): array
    {
        $categories = $article->getCategories()->toArray();
        $randomCategory = $categories[array_rand($categories)];

        return $articleRepository->findArticlesWithCategory($randomCategory);
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

    #[Route('/{slug}/delete', name: 'app_article_delete', methods: ['POST'])]
    #[IsGranted('ROLE_EDITOR')]
    public function delete(Request $request, Article $article, ArticleRepository $articleRepository): Response
    {
        if ($this->isCsrfTokenValid('delete'.$article->getId(), $request->request->get('_token'))) {
            $articleRepository->remove($article, true);
        }

        $this->addFlash('success', "L'article a bien été supprimé.");

        return $this->redirectToRoute('app_article_dashboard', [], Response::HTTP_SEE_OTHER);
    }

    #[Route('/dashboard', name: 'app_article_dashboard', methods: ['GET'], priority: 3)]
    #[IsGranted('ROLE_EDITOR')]
    public function dashboard(ArticleRepository $articleRepository): Response 
    {
        $articles = $articleRepository->findBy([], ['isValidated' => 'ASC']);

        return $this->render('article/dashboard.html.twig', [
            'articles' => $articles
        ]);
    }

    #[Route('/{slug}', name: 'app_article_validation', methods: ['POST'], priority: 3)]
    #[IsGranted('ROLE_EDITOR')]
    public function validation(Request $request, Article $article, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('validation'. $article->getId(), $request->request->get('_token'))) {

            if ($article->isIsValidated() === false) {
                $article->setIsValidated(true);
                $this->addFlash('success', "L'article a bien été validé.");
            } else {
                $article->setIsValidated(false);
                $this->addFlash('error', "L'article n'est plus validé.");
            } 
            $entityManager->flush();
        }

        return $this->redirectToRoute('app_article_dashboard', [], Response::HTTP_SEE_OTHER);
    }

    #[Route('/search', name: 'app_article_search', methods: ['GET'], priority: 2)]
    public function search(Request $request, ArticleRepository $articleRepository): Response 
    {
        $articlesData = [];

        $searchTerms = $request->query->get('search');

        if ($searchTerms !== null && $searchTerms !== '') {
            $articlesData = $articleRepository->findWithSearch($searchTerms);

            if (empty($articlesData)) {
                $this->addFlash('error', "Aucun article a été trouvé en lien avec votre recherche.");
            }
            
        } elseif ($searchTerms !== null && $searchTerms === '') {
            $this->addFlash('error', 'Vous devez indiquer ce que vous recherchez dans la barre de recherche.');
        }
    
        $articles = [];
        foreach ($articlesData as $article) {
            $article = [
                'thumbnailUrl' => $article->getThumbnailUrl(),
                'title' => $article->getTitle(),
                'slug' => $article->getSlug(),
                'author' => $article->getAuthor()->getUsername(),
                'categories' => $article->getCategories()
            ];

            $articles[] = $article;
        }


        return $this->render('article/search.html.twig', [
            'articles' => $articles
        ]);
    }

}
