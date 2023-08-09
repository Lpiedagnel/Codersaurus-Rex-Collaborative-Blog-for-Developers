<?php

namespace App\DataFixtures;

use App\Factory\ArticleFactory;
use App\Factory\CategoryFactory;
use App\Factory\CommentFactory;
use App\Factory\UserFactory;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        UserFactory::createOne(['email' => 'admin@gmail.com', 'username' => 'Admin', 'password' => 'test', 'roles' => ['ROLE_ADMIN']]);
        UserFactory::createOne(['email' => 'editor@gmail.com', 'username' => 'Editor', 'password' => 'test', 'roles' => ['ROLE_EDITOR']]);
        UserFactory::createOne(['email' => 'test@gmail.com', 'username' => 'Compte de test', 'password' => 'test', 'roles' => ['ROLE_USER']]);
        UserFactory::createMany(10);
        CategoryFactory::createSequence(
            [
                ['name' => 'HTML'],
                ['name' => 'CSS'],
                ['name' => 'JavaScript'],
                ['name' => 'PHP'],
                ['name' => 'Python'],
                ['name' => 'Ruby'],
                ['name' => 'Emploi'],
                ['name' => 'Reconversion'],
                ['name' => 'Étude de cas']
            ]
        );
        ArticleFactory::createMany(20, function() {
            return [
                'author' => UserFactory::random(),
                'categories' => [
                    CategoryFactory::random(),
                    CategoryFactory::random(),
                    CategoryFactory::random()
                ]
            ];
        });
        CommentFactory::createMany(100, function() {
            return [
                'author' => UserFactory::random(),
                'article' => ArticleFactory::random()
            ];
        });

        $manager->flush();
    }
}
