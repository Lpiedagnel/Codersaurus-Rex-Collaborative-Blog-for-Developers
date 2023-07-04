<?php

namespace App\Controller;

use App\Entity\Article;
use App\Form\ArticleType;
use App\Repository\ArticleRepository;
use App\Repository\UserRepository;
use Doctrine\DBAL\Types\StringType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/article')]
class ArticleController extends AbstractController
{
    #[Route('/new', name: 'app_article_new', methods: ['GET', 'POST'])]
    public function new(Request $request, ArticleRepository $articleRepository): Response
    {
        $article = new Article();

        $form = $this->createFormBuilder($article)
            ->add('title', TextType::class)
            ->add('extract', TextType::class)
            ->add('tags', ChoiceType::class, [
                'choices' => [
                    'HTML' => 'HTML',
                    'CSS' => 'CSS',
                    "JavaScript" => "JavaScript",
                    "PHP" => "PHP", 
                    "Python" => "Python", 
                    "Ruby" => "Ruby", 
                    "Java" => "Java", 
                    "WordPress" => "WordPress", 
                    "Prestashop" => "Prestashop", 
                    "Reconversion" => "Reconversion", 
                    "Lifestyle" => "Lifestyle", 
                    "Emplois" => "Emplois"
                ],
                'multiple' => true,
                'expanded' => true
            ])
            ->add('content', TextareaType::class)
            ->add('meta_title', TextType::class)
            ->add('meta_description', TextareaType::class)
            ->getForm();

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $article->setCreatedAt(new \DateTimeImmutable());

            $articleRepository->save($article, true);

            return $this->redirectToRoute('app_article_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('article/new.html.twig', [
            'article' => $article,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_article_show', methods: ['GET'])]
    public function show(Article $article, UserRepository $userRepository): Response
    {
        $authorId = $article->getAuthor();

        $user = $userRepository->find($authorId);

        $author = [
            'id' => $user->getId(),
            'username' => $user->getUsername(),
            'avatar_link' => $user->getAvatarLink(),
            'job' => $user->getJob(),
        ];

        return $this->render('article/show.html.twig', [
            'article' => $article,
            'author' => $author
        ]);
    }

    #[Route('/{id}/edit', name: 'app_article_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Article $article, ArticleRepository $articleRepository): Response
    {
        $form = $this->createForm(ArticleType::class, $article);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $articleRepository->save($article, true);

            return $this->redirectToRoute('app_article_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('article/edit.html.twig', [
            'article' => $article,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_article_delete', methods: ['POST'])]
    public function delete(Request $request, Article $article, ArticleRepository $articleRepository): Response
    {
        if ($this->isCsrfTokenValid('delete'.$article->getId(), $request->request->get('_token'))) {
            $articleRepository->remove($article, true);
        }

        return $this->redirectToRoute('app_article_index', [], Response::HTTP_SEE_OTHER);
    }
}
