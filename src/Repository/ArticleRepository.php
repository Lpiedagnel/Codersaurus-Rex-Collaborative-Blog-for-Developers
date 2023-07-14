<?php

namespace App\Repository;

use App\Entity\Article;
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

    public function createFindLatest(int $limit = null): QueryBuilder
    {
        $query = $this->createQueryBuilder('a')
            ->andWhere('a.isValidated = true')
            ->orderBy('a.created_at', 'DESC');

        if ($limit !== null) {
            $query->setMaxResults($limit);
        }

        return $query;
    }

    public function findByTag(string $tag, int $limit = null): array
    {
        $queryBuilder = $this->createQueryBuilder('a');
        $queryBuilder
            ->andWhere(
                $queryBuilder->expr()->like(
                    'a.tags',
                    $queryBuilder->expr()->literal('%"' . $tag . '"%')
                )
            )
            ->andWhere('a.isValidated = true');

        if ($limit !== null) {
            $queryBuilder->setMaxResults($limit);
        }
    
        return $queryBuilder->getQuery()->getResult();

        // Other try with SQL
        /*
        $conn = $this->getEntityManager()->getConnection();
        $sql = "
            SELECT *
            FROM article
            WHERE JSON_CONTAINS(tags, :tag, '$')
            ";
        $stmt = $conn->prepare($sql);
        $stmt->bindValue('tag', $tag);
        $result = $stmt->executeQuery();
    
        return $result->fetchAll();
        */
    }

    public function getAllTags(): array
    {
        $query = $this->createQueryBuilder('a')
            ->select('a.tags')
            ->getQuery();
    
        $result = $query->getResult();

        // Get the "key" tag
        $tags = array_column($result, 'tags');
    
        // Merge all array and delete duplicate. The spread operator "..." unpack arrays.
        $allTags = array_unique(array_merge(...$tags));

        sort($allTags);
    
        return $allTags;
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
