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
use Symfony\Component\Security\Http\Attribute\IsGranted;
use Symfony\Component\Validator\Constraints\File;
use Cocur\Slugify\Slugify;
use Symfony\Component\HttpKernel\KernelInterface;
use Symfony\Component\Validator\Constraints\Length;
use FOS\CKEditorBundle\Form\Type\CKEditorType;

#[Route('/article')]
class ArticleController extends AbstractController
{
    #[Route('/new', name: 'app_article_new', methods: ['GET', 'POST'])]
    #[IsGranted('ROLE_USER')]
    public function new(Request $request, ArticleRepository $articleRepository, Security $security, UploadImageService $uploadImage, KernelInterface $kernel): Response
    {
        $article = new Article();


        $form = $this->createFormBuilder($article)
            ->add('title', TextType::class, [
                'attr' => [
                    'placeholder' => 'Entre 10 et 100 caractères'
                ],
                'required' => true,
                /*
                'constraints' => [
                    new Length([
                        'min' => 10,
                        'minMessage' => 'Le titre doit faire entre 10 et 100 caractères.',
                        'max' => 100,
                        'maxMessage' => 'Le titre doit faire entre 10 et 100 caractères.',
                    ])
                ]
                */
            ])
            ->add('extract', TextType::class, [
                'attr' => [
                    'placeholder' => 'Entre 30 et 100 caractères'
                ],
                'required' => true,
                /*
                'constraints' => [
                    new Length([
                        'min' => 30,
                        'minMessage' => 'Le résumé de l\'article doit faire entre 30 et 100 caractères.',
                        'max' => 100,
                        'maxMessage' => 'Le résumé de l\'article doit faire entre 30 et 100 caractères.',
                    ])
                ]
                */
            ])
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
            ->add('content', CKEditorType::class)
            ->add('thumbnailUrl', FileType::class, [
                'required' => true,
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
            ->add('meta_title', TextType::class, [
                'attr' => [
                    'placeholder' => 'Entre 40 et 60 caractères'
                ],
                /*
                'constraints' => [
                    new Length([
                        'min' => 40,
                        'minMessage' => 'La Meta Title doit faire entre 40 et 60 caractères.',
                        'max' => 60,
                        'maxMessage' => 'La Meta Title doit faire entre 40 et 60 caractères.',
                    ])
                ]
                */
            ])
            ->add('meta_description', TextareaType::class, [
                'attr' => [
                    'placeholder' => 'Entre 140 et 160 caractères'
                ],
                /*
                'constraints' => [
                    new Length([
                        'min' => 140,
                        'minMessage' => 'La Meta Description doit faire entre 140 et 160 caractères.',
                        'max' => 160,
                        'maxMessage' => 'La Meta Description doit faire entre 140 et 160 caractères.',
                    ])
                ]
                */
            ])
            ->getForm();

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

    #[Route('/{slug}/edit', name: 'app_article_edit', methods: ['GET', 'POST'])]
    #[IsGranted('ROLE_EDITOR')]
    public function edit(Request $request, Article $article, ArticleRepository $articleRepository): Response
    {
        $form = $this->createForm(ArticleType::class, $article);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $articleRepository->save($article, true);

            return $this->redirectToRoute('app_article_index', [], Response::HTTP_SEE_OTHER);
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
