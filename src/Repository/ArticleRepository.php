<?php

namespace App\Repository;

use App\Entity\Article;
use App\Entity\Category;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;
use Doctrine\ORM\QueryBuilder;

/**
 * @extends ServiceEntityRepository<Article>
 *
 * @method Article|null find($id, $lockMode = null, $lockVersion = null)
 * @method Article|null findOneBy(array $criteria, array $orderBy = null)
 * @method Article[]    findAll()
 * @method Article[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ArticleRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Article::class);
    }

    public function save(Article $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(Article $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function createFindLatest(int $limit = null, String $categoryName = null): QueryBuilder
    {
        $query = $this->createQueryBuilder('a')
            ->andWhere('a.isValidated = true')
            ->orderBy('a.created_at', 'DESC');

        if ($categoryName !== null) {
            $query
                ->andWhere(':category MEMBER OF a.categories')
                ->setParameter('category', $categoryName);
        }

        if ($limit !== null) {
            $query->setMaxResults($limit);
        }

        return $query;
    }

    public function findWithSearch(string $search): array
    {
        $queryBuilder = $this->createQueryBuilder('article')
            ->andWhere('article.content LIKE :searchTerm OR article.title LIKE :searchTerm')
            ->setParameter('searchTerm', '%' . $search . '%');

        return $queryBuilder
            ->getQuery()
            ->getResult();
    }
    


//    /**
//     * @return Article[] Returns an array of Article objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('a')
//            ->andWhere('a.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('a.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?Article
//    {
//        return $this->createQueryBuilder('a')
//            ->andWhere('a.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
