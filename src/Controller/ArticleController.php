<?php

namespace App\Controller;

use App\Entity\Article;
use App\Form\ArticleType;
use App\Repository\ArticleRepository;
use App\Repository\UserRepository;
use App\Service\UploadImageService;
use Doctrine\DBAL\Types\StringType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Bundle\SecurityBundle\Security;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Validator\Constraints\File;

#[Route('/article')]
class ArticleController extends AbstractController
{
    #[Route('/new', name: 'app_article_new', methods: ['GET', 'POST'])]
    public function new(Request $request, ArticleRepository $articleRepository, Security $security, UploadImageService $uploadImage): Response
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
            ->add('thumbnailUrl', FileType::class, [
                'required' => false,
                'mapped' => false,
                'attr' => [
                    'enctype' => 'multipart/form-data'
                ],
                'constraints' => [
                    new File([
                        'maxSize' => '1024k',
                        'maxSizeMessage' => 'Le fichier est trop volumineux. La taille maximale autorisée est 1024 Ko.',
                        'mimeTypes' => [
                            'image/jpg',
                            'image/jpeg',
                            'image/png',
                            'image/webp',
                        ],
                        'mimeTypesMessage' => 'Vous devez uploader une image (format .jpg, .jpeg, .png ou .webp)'
                    ])
                ]
            ])
            ->add('meta_title', TextType::class)
            ->add('meta_description', TextareaType::class)
            ->getForm();

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $article->setCreatedAt(new \DateTimeImmutable());
            $article->setAuthor($security->getUser());

            // Check Upload
            /** @var UploadedFile $uploadedFile */
            $uploadedFile = $form['thumbnailUrl']->getData();

            if ($uploadedFile) {
                $destination = $this->getParameter('kernel.project_dir') . '/public/uploads/thumbnails/';
                $fileName = $form['title']->getData() . '.webp';

                $uploadImage->upload($uploadedFile, $destination, $fileName);

                $article->setThumbnailUrl('/uploads/thumbnails/' . $fileName);
            }

            $articleRepository->save($article, true);

            $this->addFlash('success', "Votre article a bien été soumis ! La rédaction s'occupera de le relire et vous tiendra au courant par Mail !");
            return $this->redirectToRoute('app_home', [], Response::HTTP_SEE_OTHER);
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
