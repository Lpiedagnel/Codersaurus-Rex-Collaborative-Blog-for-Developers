<?php

namespace App\DataFixtures;

use App\Factory\ArticleFactory;
use App\Factory\UserFactory;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        UserFactory::createOne(['email' => 'admin@gmail.com', 'username' => 'Admin', 'password' => 'test', 'roles' => ['ROLE_ADMIN']]);
        UserFactory::createOne(['email' => 'editor@gmail.com', 'username' => 'Editor', 'password' => 'test', 'roles' => ['ROLE_EDITOR']]);
        UserFactory::createMany(10);
        ArticleFactory::createMany(50);

        $manager->flush();
    }
}
