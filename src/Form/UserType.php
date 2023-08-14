<?php

namespace App\Form;

use App\Entity\User;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\BirthdayType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints\File;

class UserType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
        ->add('email', EmailType::class, [
            'attr' => [
                'readonly' => true
            ]
        ])
        ->add('username', TextType::class)
        ->add('job', TextType::class, ['required' => false])
        ->add('bio', TextareaType::class, ['required' => false])
        ->add('birthday', BirthdayType::class, [
            'widget' => 'single_text',
            'format' => 'yyyy-MM-dd',
            'required' => false,
            'years' => range(date('Y') - 10, date('Y') - 100)
            ])
        ->add('avatarFile', FileType::class, [
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
        ]);
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => User::class,
        ]);
    }
}
