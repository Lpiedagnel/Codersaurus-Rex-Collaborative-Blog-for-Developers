<?php

namespace App\Form;

use App\Entity\Article;
use App\Entity\Category;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use FOS\CKEditorBundle\Form\Type\CKEditorType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Validator\Constraints\File;
use Symfony\Component\Validator\Constraints\Length;

class ArticleType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $isThumbnailIsRequired = $options['required'];
        $builder
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
        ->add('categories', EntityType::class, [
            'class' => Category::class,
            'choice_label' => 'name',
            'multiple' => true,
            'expanded' => true
        ])
        ->add('content', CKEditorType::class)
        ->add('thumbnailUrl', FileType::class, [
            'required' => $isThumbnailIsRequired,
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
                ]);
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Article::class,
        ]);
    }
}
