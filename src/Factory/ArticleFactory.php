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
    const THUMBNAILS = [
        "/uploads/thumbnails/article-1.webp",
        "/uploads/thumbnails/article-2.webp",
        "/uploads/thumbnails/article-3.webp",
        "/uploads/thumbnails/article-4.webp",
        "/uploads/thumbnails/article-5.webp",
        "/uploads/thumbnails/article-6.webp",
        "/uploads/thumbnails/article-7.webp",
        "/uploads/thumbnails/article-8.webp",
        "/uploads/thumbnails/article-9.webp",
        "/uploads/thumbnails/article-10.webp",
        "/uploads/thumbnails/article-11.webp",
        "/uploads/thumbnails/article-12.webp",
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
        $createdAt = $this->faker()->dateTimeBetween('-2 years', '-1 days');

        return [
            'author' => UserFactory::class,
            'extract' => self::faker()->text(100),
            'content' => self::faker()->text(2000),
            'created_at' => \DateTimeImmutable::createFromMutable($createdAt),
            'meta_description' => self::faker()->text(255),
            'meta_title' => self::faker()->text(100),
            'thumbnail_url' => self::faker()->randomElement(self::THUMBNAILS),
            'title' => self::faker()->unique()->sentence(),
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
