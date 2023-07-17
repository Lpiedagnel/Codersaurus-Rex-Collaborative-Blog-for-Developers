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
        "Faut-il se réorienter en Dev Web ?"
    ];

    const THUMBNAILS = [
        "/uploads/thumbnails/article-1.webp",
        "/uploads/thumbnails/article-2.webp",
        "/uploads/thumbnails/article-3.webp",
        "/uploads/thumbnails/article-4.webp"
    ];

    const TAGS = [
        "HTML", "CSS", "JavaScript", "PHP", "Python", "Ruby", "Java", "WordPress", "Prestashop", "Reconversion", "Lifestyle", "Emplois"
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
            'tags' => self::faker()->randomElements(self::TAGS, 3),
            'thumbnail_url' => self::faker()->randomElement(self::THUMBNAILS),
            'title' => self::faker()->randomElement(self::TITLES),
            'views_count' => self::faker()->randomNumber(),
            'slug' => self::faker()->slug(),
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
