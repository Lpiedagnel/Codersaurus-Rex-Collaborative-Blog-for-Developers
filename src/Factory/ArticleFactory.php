<?php

namespace App\Factory;

use App\Entity\Article;
use App\Entity\User;
use App\Repository\UserRepository;
use App\Repository\ArticleRepository;
use Zenstruck\Foundry\ModelFactory;
use Zenstruck\Foundry\Proxy;
use Zenstruck\Foundry\RepositoryProxy;

/**
 * @extends ModelFactory<Article>
 *
 * @method        Article|Proxy create(array|callable $attributes = [])
 * @method static Article|Proxy createOne(array $attributes = [])
 * @method static Article|Proxy find(object|array|mixed $criteria)
 * @method static Article|Proxy findOrCreate(array $attributes)
 * @method static Article|Proxy first(string $sortedField = 'id')
 * @method static Article|Proxy last(string $sortedField = 'id')
 * @method static Article|Proxy random(array $attributes = [])
 * @method static Article|Proxy randomOrCreate(array $attributes = [])
 * @method static ArticleRepository|RepositoryProxy repository()
 * @method static Article[]|Proxy[] all()
 * @method static Article[]|Proxy[] createMany(int $number, array|callable $attributes = [])
 * @method static Article[]|Proxy[] createSequence(iterable|callable $sequence)
 * @method static Article[]|Proxy[] findBy(array $attributes)
 * @method static Article[]|Proxy[] randomRange(int $min, int $max, array $attributes = [])
 * @method static Article[]|Proxy[] randomSet(int $number, array $attributes = [])
 */
final class ArticleFactory extends ModelFactory
{
    const TITLES = [
        "Comment centrer une Div ?",
        "Apprendre le JavaScript",
        "WordPress est-il utile en 2023 ?",
        "S'empaler avec Drupal",
        "Faut-il se réorienter en Dev Web ?",
        "Les meilleures pratiques en matière de responsive design pour les sites Web modernes",
        "Les fondamentaux du HTML5 : tout ce que vous devez savoir",
        "Les secrets du CSS Grid pour créer des mises en page complexes",
        "Comment optimiser les performances de votre site Web pour une vitesse maximale",
        "Les bases du JavaScript : initiation à la programmation côté client",
        "Les meilleures bibliothèques JavaScript pour simplifier votre développement Web",
        "Créez un site Web professionnel avec Bootstrap : un guide étape par étape",
        "Le guide complet du SEO pour améliorer le classement de votre site sur les moteurs de recherche",
        "Comment intégrer des animations CSS époustouflantes dans vos projets Web",
        "Développement Web sécurisé : conseils pour protéger votre site contre les attaques",
        "Les meilleures pratiques pour concevoir une expérience utilisateur exceptionnelle",
        "Introduction à PHP : le langage de programmation côté serveur incontournable",
        "Comment créer une application Web réactive avec React.js",
        "Découvrez les avantages de l'utilisation de Vue.js dans vos projets Web",
        "Les tendances du design Web à suivre en 2023",
        "Introduction à Docker : facilitez le déploiement de vos applications Web",
        "Les bases du développement Web avec Django : un framework puissant en Python",
        "Comment gérer efficacement les formulaires dans le développement Web",
        "Les étapes pour construire un site Web e-commerce réussi",
        "L'avenir du développement Web : explorer les technologies émergentes"
    ];

    const THUMBNAILS = [
        "/uploads/thumbnails/article-1.webp",
        "/uploads/thumbnails/article-2.webp",
        "/uploads/thumbnails/article-3.webp",
        "/uploads/thumbnails/article-4.webp"
    ];

    /**
     * @see https://symfony.com/bundles/ZenstruckFoundryBundle/current/index.html#factories-as-services
     *
     * @todo inject services if required
     */
    
    private $userRepository;

    public function __construct(UserRepository $userRepository)
    {
        parent::__construct();
        $this->userRepository = $userRepository;
    }

    /**
     * @see https://symfony.com/bundles/ZenstruckFoundryBundle/current/index.html#model-factories
     *
     * @todo add your default values here
     */
    protected function getDefaults(): array
    {
        return [
            'author' => UserFactory::class,
            'comments' => [],
            'extract' => self::faker()->text(100),
            'content' => self::faker()->text(2000),
            'created_at' => \DateTimeImmutable::createFromMutable(self::faker()->dateTime()),
            'meta_description' => self::faker()->text(255),
            'meta_title' => self::faker()->text(100),
            'thumbnail_url' => self::faker()->randomElement(self::THUMBNAILS),
            'title' => self::faker()->randomElement(self::TITLES),
            'views_count' => self::faker()->randomNumber(),
            'slug' => self::faker()->slug(),
            'views_count' => self::faker()->numberBetween(0, 1000),
            'is_validated' => true
        ];
    }

    /**
     * @see https://symfony.com/bundles/ZenstruckFoundryBundle/current/index.html#initialization
     */
    protected function initialize(): self
    {
        return $this
            // ->afterInstantiate(function(Article $article): void {})
        ;
    }

    protected static function getClass(): string
    {
        return Article::class;
    }
}
