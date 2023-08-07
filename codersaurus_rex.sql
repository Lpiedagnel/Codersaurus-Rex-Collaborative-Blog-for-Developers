-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 07 août 2023 à 09:55
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `codersaurus_rex`
--
CREATE DATABASE IF NOT EXISTS `codersaurus_rex` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `codersaurus_rex`;

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `thumbnail_url` varchar(255) NOT NULL,
  `views_count` int(11) NOT NULL,
  `meta_title` varchar(100) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `extract` varchar(100) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_validated` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `author_id`, `title`, `content`, `created_at`, `updated_at`, `thumbnail_url`, `views_count`, `meta_title`, `meta_description`, `extract`, `slug`, `is_validated`) VALUES
(1, 10, 'Comment créer une application Web réactive avec React.js', 'Sapiente fuga quisquam excepturi. Quod et odio id sequi. Incidunt eligendi nostrum blanditiis. Quis facere ab quod sit labore rem. Id provident iste error molestiae libero. Ratione vel omnis eveniet voluptas. Atque eveniet quae illum velit quis recusandae. Tempore consequatur ex in inventore ipsum aperiam sapiente rerum. Architecto doloremque in hic id architecto tenetur. Voluptas et qui laboriosam inventore perspiciatis id nam. Harum dolores blanditiis non impedit. Suscipit velit sit placeat voluptatibus vel. Inventore quo voluptas quia. Voluptatem temporibus sequi rem vel aliquid. Consequuntur perferendis non corrupti vel dolor nobis. Itaque qui soluta quo tempora. Dicta aperiam nobis unde aut quia inventore quidem. Quas eum odit minima sit id. Cumque sunt corporis illum esse corrupti molestiae quis. Similique ut et sed occaecati esse earum est. Numquam voluptatem numquam error sint ullam impedit. Voluptate voluptate sit quia repellendus. Vero illum deleniti dolorem in dolores quis suscipit incidunt. Fugit adipisci occaecati molestiae et hic. Minima fugiat incidunt perspiciatis vitae architecto. Rem id eos ducimus autem earum consectetur asperiores. Quo omnis quisquam consequuntur fuga. Fugiat atque qui veniam. Et ab tempora quia recusandae mollitia sit exercitationem. Fuga sed voluptates nihil. Qui alias aut est vero ut. Corrupti dolor non quisquam labore vel omnis. Sapiente aspernatur velit autem distinctio sit quia. Perspiciatis harum delectus maxime quis. Vero velit sed nostrum et eos. Eaque aliquam ducimus repellendus. Voluptatem et consequuntur totam quos commodi unde. Rem ab beatae dolor aspernatur nemo. Architecto at id enim odit non optio. Aut saepe reiciendis eveniet. Qui temporibus quia dolorem sit reiciendis et in. Vel illo quis unde quam incidunt cumque optio. Provident ea nostrum natus et debitis aut voluptatem. Saepe est aliquid non nihil dicta mollitia perferendis.', '2002-02-03 13:31:29', NULL, '/uploads/thumbnails/article-4.webp', 843, 'Unde ut et et doloremque. Et rerum vero non ad.', 'Sit officia itaque qui ut. Inventore voluptas et est est voluptatum et quos eum. Iusto id at doloremque cupiditate et. Incidunt provident aut dolorem nisi quis. Impedit quis vero velit. Quos nam reiciendis soluta maxime molestiae quo et.', 'Soluta voluptas enim amet qui voluptates nihil. Ut quae fugit quod sit at recusandae.', 'dolorem-reiciendis-maxime-qui-at-quia-natus', 1),
(2, 12, 'Les meilleures bibliothèques JavaScript pour simplifier votre développement Web', 'Aut esse est quo odit. Necessitatibus sed ex ex veniam. Libero rerum quia adipisci et repellat quaerat quaerat. Quas voluptatibus fugiat quaerat non. Nobis sunt in molestias consequatur. Error et id omnis eos esse magni perferendis. Et dicta cupiditate voluptatem sequi doloribus. Molestiae dignissimos ullam sint. Ad quas ut at perspiciatis ut. Magni optio cupiditate quidem dolorem quia. Distinctio tempora facere ipsum omnis veritatis mollitia quae ut. Et eaque aspernatur at non praesentium rem iste. Voluptates maxime similique laudantium amet. Debitis dolorum atque quo temporibus et distinctio. Ut et iusto saepe porro nihil dolorem nihil temporibus. Qui quos praesentium dolore nobis vel. Voluptas unde dolor aut et ipsam laboriosam est dolorem. Minima delectus aliquid illo ea est libero. Atque consequatur omnis expedita fuga. Consequatur in voluptas magnam est. Doloribus maiores hic at rem. Minima quod eum animi aut. Dolores vitae dolores id amet. Sed veniam nihil ut hic illum. Atque ipsum impedit excepturi. Omnis et quis provident doloribus. Qui ut quod qui consequuntur omnis aut. Fugiat occaecati dolorum fugiat at voluptas. Quas voluptas nam magni nesciunt eos id eaque doloremque. Quia ad quos sequi autem laborum. Quod vero aliquid vitae totam vel. Qui dolore dolores ullam molestias. Illo itaque magni itaque officia sed. Minima voluptas sequi doloribus reiciendis pariatur aut. Error quae est beatae. Doloribus autem nemo magnam illum. Ratione porro qui et. Minima molestiae libero doloremque dignissimos aut. Corporis esse optio culpa accusantium ut. Eos molestiae omnis doloremque eum. Omnis totam facere molestias qui repudiandae. Perspiciatis voluptas et assumenda. Voluptatem molestiae et officiis quia quia perspiciatis dignissimos. Sequi tempore et fugit ut amet. Error soluta occaecati et quam. Voluptas at velit accusantium. Aspernatur inventore aut maiores consequuntur beatae cum.', '1971-10-14 18:57:56', NULL, '/uploads/thumbnails/article-4.webp', 466, 'Sunt et consequuntur doloremque dolor. Ad optio quasi consequuntur at nobis. Ut sint totam ut ea.', 'Eum sequi minima officiis sed culpa omnis aspernatur veniam. Blanditiis omnis ratione commodi. Quia provident at odio voluptatem aliquid pariatur. Assumenda eveniet laborum et qui. Autem ea provident ut voluptatum.', 'Sit eos voluptas est ut. Suscipit aut ullam sed harum et.', 'et-possimus-dignissimos-fugiat-et-fugiat-voluptate', 1),
(3, 3, 'Introduction à PHP : le langage de programmation côté serveur incontournable', 'Perferendis aperiam itaque est et molestiae. Explicabo quas molestias quaerat voluptas velit necessitatibus. Consequatur et in consequatur natus et minus dignissimos. Accusantium sit architecto ipsam iure et aut. Et veritatis qui facilis et. Beatae doloribus sit rerum est dicta accusamus molestias minus. Neque sit dolores aut voluptatem. Repellat recusandae hic sint rem excepturi. Exercitationem fuga sit et alias impedit cumque voluptatem. Fuga dignissimos voluptatem et eaque iusto exercitationem in. Non perferendis optio consequatur tenetur. Adipisci esse nostrum recusandae enim aliquam. Eaque porro enim sunt ex odit in adipisci dolorem. Doloremque est perspiciatis id hic officiis et voluptatem. Voluptatibus ut quaerat dolore eius qui voluptas. Laboriosam perferendis omnis ipsum perspiciatis ut id id dolores. Quibusdam est hic est asperiores repellendus omnis laudantium. Officiis molestiae voluptatem non quia distinctio. Rerum aut quia voluptatem id at neque. Eum id quisquam amet assumenda similique quos. Et perferendis vel deserunt eius possimus rerum sequi accusantium. Sint a odit accusamus non. Quibusdam soluta quas accusamus enim. Vitae dignissimos nihil est omnis non. Dolorem adipisci sit quaerat voluptatum repellendus voluptate illum. Consectetur dicta accusantium aspernatur voluptatem. Debitis qui doloremque magnam accusantium. Omnis est deleniti illo facere quasi qui optio. Dignissimos alias nostrum eos autem consequatur est. Quia ut laudantium voluptatem officiis architecto. Et neque enim doloribus. Perferendis qui odit modi sunt perspiciatis perspiciatis minima. Dolorem iure consequatur eveniet incidunt. Enim eligendi quidem doloremque a ab eius. Qui nisi aut eligendi et voluptatem temporibus. Optio a sunt impedit eius sit repudiandae. Quaerat illum impedit sed. A eum iste eos reprehenderit illo harum. Occaecati debitis modi nesciunt doloremque est. Ratione beatae minus excepturi explicabo quam.', '1972-04-23 07:37:36', NULL, '/uploads/thumbnails/article-4.webp', 709, 'Qui ipsam quia molestiae. Et libero temporibus quis placeat praesentium minima.', 'Fugit illo pariatur id nulla asperiores. Autem facere in aperiam nesciunt.', 'Aperiam aut eum itaque nulla quod. Voluptas et ea perspiciatis.', 'delectus-id-harum-ut-illo-porro-sint', 1),
(4, 10, 'Comment intégrer des animations CSS époustouflantes dans vos projets Web', 'Quod voluptatibus qui molestiae iusto et. Nulla itaque dolores laborum eaque odio commodi repellendus. Sint quasi numquam sint incidunt ipsam quidem. Quis qui voluptates est. Atque enim quo nesciunt id. Optio nostrum animi cupiditate aut consequatur et quae. Reprehenderit architecto quae aspernatur voluptates. Qui minus et dolor laborum rerum voluptatem. Quibusdam enim ut deserunt dolores doloremque. Sint aliquam maxime autem. Aliquam eum nostrum est rerum vitae suscipit recusandae. Mollitia sequi repellendus quae eum velit ad iste. Et est accusamus sapiente velit voluptas aut ab cumque. Neque velit officiis est facere consectetur quaerat quo. Aspernatur iusto ea sequi autem. Harum quibusdam delectus modi qui asperiores. Beatae aspernatur suscipit dolor aliquid beatae. Officia voluptatem molestiae fugiat qui. Facilis placeat rem occaecati illum sint molestiae ex. Error aut occaecati perspiciatis molestias fugiat praesentium. Veniam eum sit nisi aut accusantium ratione odit fugit. Ipsum aliquid est molestias quisquam. Repudiandae eius impedit autem culpa excepturi. Quia id eos nulla pariatur. Excepturi aut ex fugiat porro. Consequatur a quas ex molestiae pariatur harum. Placeat quidem ducimus recusandae quae sit nisi. Blanditiis perspiciatis unde ratione voluptatem qui sed assumenda. Nulla illum debitis nihil quisquam autem magni. Et unde qui in. Maiores modi magni facere est dolorem. Qui quae voluptate veritatis autem alias esse. Voluptatibus porro rerum sequi velit corrupti. Numquam tempora soluta voluptatem est mollitia dolores. Ex nostrum aut incidunt delectus. Blanditiis dolores minus et ipsum qui placeat. Veritatis id laborum beatae fugiat. Dolor provident sequi fugiat dignissimos omnis et. Quisquam dignissimos molestias et ea. Aspernatur aut inventore porro temporibus autem cum. Perspiciatis nulla in blanditiis cum quibusdam fugit quis voluptate. Voluptatem molestiae est tempora ut fuga accusamus.', '2018-01-26 21:20:35', NULL, '/uploads/thumbnails/article-2.webp', 641, 'Voluptas dolores qui corporis. Aperiam voluptatibus a nostrum.', 'Sed odio nisi distinctio. Architecto dolores inventore soluta aut harum. Necessitatibus maxime aut impedit omnis qui.', 'Quos est unde vitae veniam. Esse non sunt tempora itaque dolorem. At aut velit voluptas aut.', 'dolor-id-provident-dolor-consequatur-ut-dolores', 1),
(5, 5, 'Comment intégrer des animations CSS époustouflantes dans vos projets Web', 'Repudiandae nobis itaque nemo libero quaerat voluptas hic eum. Ad consequuntur velit omnis fuga veritatis voluptas. Quia autem unde libero et nam occaecati doloribus. Voluptatum voluptas repellat inventore. Odio vel eveniet voluptas ullam quam quia. Reprehenderit et est sed architecto laborum asperiores nihil. Qui tempore voluptatem minus similique molestias et. Ducimus et quam delectus voluptas. Libero qui sequi quasi sapiente unde perspiciatis distinctio enim. Iure nihil unde dolor. Et quaerat harum alias numquam et consequatur officia. Laudantium modi aliquid rem quasi. Deleniti ipsam nesciunt voluptatem placeat maxime reiciendis. Aut aut accusantium sit accusantium rerum dolores molestiae totam. Consequatur et corrupti eos ex praesentium. Voluptatibus voluptas ea molestiae corrupti velit iusto quas. Dolores eum qui tempore sed. Eum est aperiam nostrum sed dolore dolorum ut. Nobis voluptates non qui quibusdam. Cupiditate eius omnis commodi ut porro. Totam voluptas illum quia explicabo sed. Aut corporis vel repellat at libero aut consectetur. Expedita quis aut doloribus et laudantium. Nihil temporibus dolores ut quidem eaque. Tempora non quis nihil porro nobis consequatur amet. Et libero sint maiores harum totam ut autem. Unde tempore aspernatur aut qui voluptatum. Temporibus iusto nobis nesciunt enim magnam. Eveniet voluptatum dicta maxime aut. Laboriosam voluptas harum aut sit sint. Explicabo rerum qui maiores rerum. Velit esse totam illum aut unde sapiente culpa. Qui eligendi ab quo dolore illum. Facere sed a odit nostrum eligendi excepturi aut. Molestias est beatae modi aliquam. Optio nulla beatae id in quidem nisi asperiores. Eaque harum consectetur aspernatur quasi quos magni consectetur autem. Ratione cupiditate earum sed dicta rerum. Rerum in explicabo impedit aliquam in.', '1997-08-29 19:15:17', NULL, '/uploads/thumbnails/article-3.webp', 504, 'Voluptatibus ea voluptates suscipit. Praesentium culpa non voluptatum mollitia qui.', 'Nihil atque repellat ipsa molestiae consequatur quia quam. Ullam explicabo praesentium doloribus odit dolores. Atque et debitis qui soluta amet. Consequatur qui illo odit voluptate. Accusantium expedita ipsam error consequatur.', 'Illo provident eum debitis eveniet. Cupiditate odit dicta et quia. Sunt culpa esse blanditiis et.', 'praesentium-maiores-et-et-ratione-qui-dolor-sunt-cupiditate', 1),
(6, 3, 'Introduction à Docker : facilitez le déploiement de vos applications Web', 'Est modi at voluptatem accusantium. Vel iusto id est aut laborum. Aut omnis nam quia accusamus saepe aperiam magni. Voluptas ut reprehenderit est nostrum explicabo. Aut repudiandae consequatur corrupti recusandae numquam qui praesentium. Est sit asperiores rerum illum error. Aspernatur perspiciatis dolore at doloribus porro consequatur. Natus velit dolorem sequi sint autem. Illum eaque ab sed libero ut sint. Error adipisci eum officiis itaque unde quia. Nam sapiente ipsam ea occaecati aut. Reiciendis inventore voluptatibus accusamus officiis itaque nihil in. In expedita officiis non voluptas rerum commodi. Est voluptatum sed aut ea magnam aut. Sunt sed inventore dignissimos esse quia sunt vero omnis. Et blanditiis amet velit a saepe quidem. Qui autem nemo molestias. Aspernatur molestiae totam tenetur quasi autem tempore dolorem. Repudiandae quia atque et voluptas et distinctio. Magni adipisci est autem hic asperiores. Porro a sed vitae iste. Aut sed eum ducimus aut perspiciatis ipsum voluptatum. Qui veniam unde odit porro facilis harum perferendis. Nesciunt harum ut ut et iure accusamus. Placeat sit consequuntur nobis. Consequuntur ea fugit provident in aliquam modi et aut. Sed quibusdam ex nemo. Excepturi officiis hic veritatis ex numquam sint ea. Ut esse vel eligendi fugiat corporis minus quae. Nulla qui omnis vel numquam sed. Est temporibus ipsam qui. Veniam autem dolore distinctio sunt ut eum doloremque accusamus. Eum non quis aut molestiae reprehenderit non quis impedit. Excepturi asperiores sequi voluptas dignissimos cum rerum. Numquam doloremque sit a quas vel magnam ab id. Placeat necessitatibus laborum quaerat laborum eveniet voluptate aut vitae. Quod voluptas qui odio nemo porro voluptatem. Quibusdam suscipit autem aut vero ab eos. Veritatis et consequatur dolore eaque quia. Molestiae corrupti incidunt autem temporibus placeat.', '2002-08-13 15:48:08', NULL, '/uploads/thumbnails/article-2.webp', 132, 'Quis et molestias consequuntur sit. Totam quam neque quaerat ut. Rerum architecto et sed facilis.', 'Est natus sunt atque quia. Nam non aut dolorem sit est. Aut sapiente aut quidem consequatur ut. Veniam autem nulla ut nihil ut est placeat nulla. Ipsa culpa voluptas a rerum ducimus.', 'Quia unde error ut. Voluptas earum atque odio nulla est.', 'iste-quo-qui-doloribus-sint', 1),
(7, 2, 'Les fondamentaux du HTML5 : tout ce que vous devez savoir', 'Sequi ipsam dolor ut. Et praesentium sed aut autem odio et est minima. Quas aut fugiat dolor hic. Vel recusandae tempora tempora in distinctio suscipit quos exercitationem. Aut temporibus dolore quaerat illum. Quod sit blanditiis provident quos. Maxime dicta omnis quo at. Voluptatem est quas voluptates sit modi est ducimus fugit. Accusantium aliquam provident voluptas rerum beatae. Non non repellat quos eligendi esse quia nihil. Provident quisquam est eligendi tenetur fugiat. Ex soluta perferendis soluta quo similique accusantium. Sint provident reprehenderit velit sapiente et quidem et consequatur. Voluptatem magnam enim earum sequi qui. Quod rerum quia id ullam magnam officiis et est. Harum quia et nihil consequuntur provident. Architecto doloremque voluptatem eveniet eius nemo. Sit officia sequi alias explicabo quae. Est ipsam aut autem natus at consectetur. Deleniti nobis facilis animi similique totam labore molestiae ab. Nisi reiciendis rerum et sed sapiente omnis illo voluptatem. Similique quia quisquam ad aliquam et corrupti. Adipisci harum eos repellendus cupiditate est accusantium. Rerum non minus eum sunt molestiae ut totam. Est quo quidem repudiandae aut. Sed iusto tempora exercitationem asperiores eum. Doloribus ipsam soluta velit nihil nisi. Aut molestias harum nobis qui et a. Voluptatem rerum quaerat fuga illo officiis. Ipsa sit atque sequi ut consequatur. Ut numquam eius voluptatum alias. Ipsam aspernatur eum quas at necessitatibus voluptatem dolores. Aliquid facilis deleniti voluptatem dolorum. Dolores cupiditate ratione quidem quo quia sunt alias perferendis. Est voluptatem explicabo odit. In iusto quisquam dicta et inventore. Nam optio aspernatur dicta sed error modi sunt ipsum. Est dolorem nihil porro est. Qui illo quisquam tempore quo accusantium. Et et error dolorem aut.', '2007-08-25 20:50:08', NULL, '/uploads/thumbnails/article-1.webp', 135, 'Id qui vero quis vitae quidem. Deleniti beatae eveniet ipsam sunt ipsum.', 'Sunt placeat voluptate consequuntur ullam non et eum. Autem optio est earum omnis delectus. Quis incidunt voluptatem qui dolor. Ab est qui aut laudantium eligendi id eos. Sint nostrum ea ullam minima. Doloremque ab quia ut qui nulla eius dolores.', 'Quam optio quasi a dolores ullam aut. Magni iusto impedit quisquam animi.', 'veniam-eius-maiores-dolor-eos-est', 1),
(8, 3, 'Développement Web sécurisé : conseils pour protéger votre site contre les attaques', 'Atque ipsam aut sapiente vel ut. Omnis qui tempore est quae aliquid voluptatem quis. Error voluptatum quis quia aut. Esse dolorum labore asperiores fugit tempore architecto. Et necessitatibus est atque facilis quis. Voluptates tempora rem odit rerum debitis officia tenetur. Incidunt optio quasi ut recusandae unde. Inventore sed deserunt atque molestias blanditiis alias aut minus. Sunt assumenda voluptas officia itaque laudantium. Voluptatum eum distinctio molestiae enim tempore et. Assumenda impedit id sit veritatis. Molestias iusto eaque eius earum. Vitae est impedit dolores delectus dicta necessitatibus et. Dicta eum fugit perferendis a ut explicabo. Reprehenderit totam laboriosam quo harum consequatur rerum. Non sit quod tempore. Est eos quod excepturi reiciendis quo inventore. Aut sit autem earum. Aut nemo ea rerum quia consequuntur nisi. Soluta blanditiis enim eum eaque in est. Dolorem dolor repellendus sint laboriosam odio iure nam. Ipsam eaque hic totam. Cupiditate et pariatur et maiores rerum assumenda rem dolores. Ex ratione unde eligendi. Rerum necessitatibus consequatur provident. Non illum beatae ut aut consequatur. Exercitationem sit velit dolorum doloremque sit. Sed voluptates ratione debitis qui quos omnis aut. Labore aut quia sunt quo. Et et cumque voluptatibus quo est dolorum sequi cumque. A voluptates est accusantium maxime repellendus. Ut et sed suscipit non. Debitis expedita id voluptatem a qui ex. Id quisquam est sunt quaerat. Doloribus et quia atque saepe magni veniam. Aut facere assumenda distinctio et quam tenetur. Quas porro atque officia et enim nobis. Sed sint voluptas atque et voluptas aspernatur praesentium quia. Quia quia dolores atque eveniet quasi praesentium. Nihil fugit delectus sint eligendi. Reiciendis et consequatur quia. Architecto omnis consequuntur eos dolor ea est. Asperiores consectetur sunt quae consectetur eos ut voluptas atque. Aliquid est expedita quos blanditiis. Reiciendis et aliquid eaque eos consectetur eligendi.', '2002-11-26 07:25:37', NULL, '/uploads/thumbnails/article-2.webp', 809, 'Rerum eligendi ut at quod veritatis occaecati. Illum iste veniam quia nihil voluptas qui.', 'Autem adipisci qui provident quae. Eius incidunt quia amet nulla ullam magni omnis.', 'Ad sed ut quae modi. Earum iste autem aut voluptatibus esse.', 'eligendi-corrupti-omnis-esse-laudantium-consequatur-aut-non-quas', 1),
(9, 13, 'Les secrets du CSS Grid pour créer des mises en page complexes', 'Pariatur repellat voluptate soluta incidunt dolorum nemo. Placeat error ad tenetur esse. Et laboriosam aut quis voluptas laboriosam consequuntur quae eos. Et quaerat adipisci ea dolorum vitae. Voluptatum sed accusamus aliquam facilis molestiae. Cupiditate inventore sunt voluptatem aut iste at voluptatum. Reiciendis ad ullam saepe qui velit. In voluptas laborum blanditiis labore. Maiores iste corporis praesentium eveniet ut nam. Et facilis voluptas ut pariatur. Odit aut et sed est ut ipsam eos dolor. Eos ex sequi eum voluptas. Quaerat molestias soluta id accusamus. Vel officia iusto fugit veritatis saepe. Inventore animi veniam molestiae itaque placeat dolores. Incidunt aperiam corporis voluptatem excepturi repellat molestiae. Doloremque iusto est aut voluptatum doloremque voluptatem. Repudiandae asperiores autem laudantium voluptatem at qui. Repudiandae dolore eligendi unde distinctio in veritatis. In non suscipit numquam commodi. Error adipisci odio maiores voluptates et. Ad et perspiciatis labore totam est fugiat. Tempore nulla alias minima voluptatibus sint nostrum eos. Et unde tempore fuga omnis iste. Fugit id harum pariatur odio. Sit aut aut sapiente. Soluta repellendus ut optio est temporibus earum. Iste nesciunt dolores aliquid sapiente inventore facere odit. Quos ad tenetur molestiae illo nulla ut. Sed amet facilis in eaque voluptatibus libero illum. Enim adipisci nulla iste ad magnam mollitia. Iusto molestiae quidem harum blanditiis vel eos. Eum veritatis porro a fugit doloribus. Deleniti quasi culpa aspernatur tempore omnis. Aliquam delectus iusto ab velit. Unde repudiandae modi et nobis. Facilis quia quam sint ex. Adipisci sint asperiores omnis et nostrum modi explicabo. Sint molestiae voluptas magni delectus temporibus quas porro aut. Similique necessitatibus porro quidem. Adipisci dignissimos facilis ea blanditiis repellat expedita quia.', '1983-08-29 01:43:06', NULL, '/uploads/thumbnails/article-4.webp', 599, 'Ut blanditiis nam perferendis et est non eius. Nobis quisquam ullam quia libero.', 'Necessitatibus aliquam quam et voluptatem est voluptas. Quos alias reprehenderit dolorem temporibus nihil suscipit cum. Quia expedita amet voluptas. Veritatis sunt voluptates reprehenderit consequatur dicta non.', 'Et vel odit velit rerum ut. Ut et distinctio sequi quia sit aut. Dolores dicta qui soluta et.', 'quibusdam-omnis-commodi-voluptate-ratione-veritatis', 1),
(10, 11, 'Le guide complet du SEO pour améliorer le classement de votre site sur les moteurs de recherche', 'Sunt qui neque culpa animi modi quod. Nostrum harum sed qui. Voluptatibus vel voluptatem voluptatem hic. Molestiae rerum non repudiandae molestiae. Dolor rem deserunt impedit unde cumque. Voluptatem corrupti sed quia modi eum. Voluptatum et labore nisi at quod. Et repellendus temporibus fuga nihil. Nostrum quaerat quia consequuntur. Sapiente quis velit quisquam nesciunt alias fugit. Sit omnis iste quam aut excepturi assumenda sit. Odio doloremque eaque aliquam dicta excepturi eveniet. Aut adipisci omnis a doloremque. Odit corrupti quo dolorem blanditiis sint dolore suscipit. Distinctio placeat facilis omnis laudantium est numquam est natus. Maxime in sit et sit libero enim nisi. Laudantium impedit debitis nesciunt. Voluptas omnis dolores recusandae sed alias quia possimus. Qui incidunt quia sunt doloremque rerum. Consequatur quod quae qui. Amet quis facere at at tempore nesciunt. Cum harum assumenda commodi rerum et quas. Est rerum commodi ad dolorem repellat error. Reiciendis et accusantium et dolor magnam. Quas non est laudantium non mollitia sint suscipit. Consequatur temporibus amet aut nesciunt atque exercitationem. Beatae nesciunt ratione libero officiis dolores magnam. Dolor laborum rerum eos et. Quia sed facere corporis qui qui. Assumenda et similique qui quod fugit suscipit dolor. Omnis facere officia ea iusto. Dolore sunt ducimus sed ut tenetur. Reprehenderit quis inventore quibusdam molestiae corporis. Quis quis quis magnam maiores hic dolor. Nisi dolor ipsa autem et quisquam iusto nihil et. Consequatur expedita rem illum nam cum. Tempora aliquid iure voluptas soluta quos id. Architecto neque fuga quae velit consectetur sit. Qui quisquam eligendi amet itaque ipsam corrupti. Aliquid aut molestiae explicabo similique veritatis dolorem. Esse tempora laudantium at exercitationem harum. Recusandae quis quisquam ut earum eum qui. Fugiat doloremque quia saepe sunt voluptates cumque.', '2012-10-01 16:57:13', NULL, '/uploads/thumbnails/article-2.webp', 609, 'Laboriosam sequi labore et qui rerum pariatur. Ab error quod eum magnam ex.', 'Voluptatem dolorem ea nam pariatur distinctio neque nam. Sit aut voluptatum animi qui ea ut. Deserunt non porro blanditiis nulla aliquam sit.', 'Quam aut velit earum est. Voluptatibus qui rem totam blanditiis. Fuga eos enim ea libero.', 'ut-consequatur-ratione-dolores', 1),
(11, 13, 'Comment créer une application Web réactive avec React.js', 'Occaecati consequatur unde tenetur ut. Ab suscipit qui animi omnis. Labore tempora placeat culpa voluptatem natus. Qui sint laudantium id voluptate ad reiciendis. Perspiciatis impedit similique dolorem fugit numquam quisquam temporibus. Qui officia adipisci atque et cum deleniti. Officiis consectetur ipsam voluptatem voluptatem enim. Veritatis delectus ut tenetur ad corrupti officiis quidem et. Quia necessitatibus ducimus eaque qui molestiae numquam quo. Aut expedita qui recusandae architecto. Nostrum minima et itaque in ratione et. Mollitia sapiente sit eum vero velit atque aut. Nobis id incidunt similique. Natus omnis est doloremque culpa recusandae est repellat. Corporis ullam quasi architecto placeat non sed quas. Id possimus totam itaque cum occaecati esse. Voluptatibus qui dolores numquam placeat qui. Quia sed iure veniam et sit explicabo. Sunt id accusantium nostrum sapiente repellendus. Consequatur ut blanditiis saepe expedita eos ipsam. Assumenda quo saepe dolor quis consequatur ut eos quasi. Omnis corrupti inventore expedita qui. Est officiis corporis dicta exercitationem facilis. Sit quia enim ab voluptate veritatis veniam. Minima sunt ut ut laborum. Maxime officiis incidunt ut earum sit aliquid suscipit. Omnis laborum cumque atque esse velit est et alias. Dolor rerum doloremque id similique. Necessitatibus sint ab est aliquam ut aut. Nulla possimus et dignissimos in voluptas veritatis. Vel dolor veritatis velit minus. A pariatur ratione quia reiciendis mollitia officia. Qui amet laborum harum facere magnam. Quis explicabo assumenda rerum voluptatem maxime aut consectetur. Consectetur qui quae cum voluptatem velit soluta aut asperiores. Pariatur voluptas nam consectetur ut voluptas atque eligendi quas. Magni sint natus sint ea nemo. Ut ut magni nesciunt voluptatem ut. Accusamus similique quia esse omnis sequi ducimus odio. Inventore tenetur non quis culpa enim autem.', '2010-06-04 12:08:19', NULL, '/uploads/thumbnails/article-2.webp', 992, 'Repellendus et facere qui maxime officia non. Nihil assumenda aut omnis neque assumenda.', 'Animi ipsa suscipit doloribus est. Neque sit excepturi sunt quia unde sit eveniet eveniet. Sunt in autem ut.', 'Et sit voluptate omnis. Molestias dolores placeat culpa rerum deserunt iure et.', 'quam-corporis-sequi-exercitationem', 1),
(12, 6, 'L\'avenir du développement Web : explorer les technologies émergentes', 'Odio facere harum minus voluptas velit et culpa. Deleniti distinctio iusto est natus. Modi perferendis dolorem placeat distinctio ab suscipit et. Vitae earum consequuntur omnis mollitia et. Nisi inventore labore rerum. Sit et id eos sint est. Voluptatibus placeat qui unde repudiandae. Molestiae doloremque quae maiores vel recusandae. Aut sequi fugit vero autem laboriosam et eos. Aliquam earum in delectus suscipit nostrum. Consequuntur reiciendis facere in. Vel sit quaerat rerum aperiam neque. Repudiandae tempora nulla laborum ut iure veniam hic. Voluptatem ipsa optio aperiam. Voluptates voluptatibus quia nobis sapiente amet. Ipsum repudiandae error consequuntur iure quis eius neque. Tenetur occaecati inventore voluptatem doloribus minus voluptatem repudiandae ex. Pariatur eum eum maiores sit at. Et quis suscipit et nulla nobis. Necessitatibus at deleniti provident neque deleniti impedit ducimus. Voluptas fugiat quasi et distinctio nemo. Maiores ipsam deleniti nesciunt eos beatae voluptas ratione. Dignissimos minima rerum earum sed et. Molestias non ea suscipit consequatur inventore. Ducimus vero possimus cumque. Consequatur alias perferendis asperiores in. Ipsum fugit facilis accusantium. Accusamus ut eaque provident ut sit aut repudiandae ut. Ea rerum necessitatibus ut sint voluptates quaerat. Quia voluptatibus quasi odit voluptate suscipit. Ipsam autem id unde facere omnis magnam quo. Aut sit ut quisquam esse perspiciatis. Porro et maiores enim sed distinctio. Eius eveniet est qui fugit natus. Accusamus qui eos cupiditate nobis nihil quia. Fuga voluptate minus ratione quia. Corrupti pariatur et ducimus consequatur sint autem. Odit nihil corporis odit reiciendis ut et ut. Ratione enim ipsa est sunt illo nihil aut. Fugit veniam modi rerum illum non in doloribus. Numquam perspiciatis excepturi laborum et doloremque dolorem. Labore omnis omnis incidunt architecto a non. Est officiis officiis provident mollitia consequuntur qui.', '1995-11-01 12:06:48', NULL, '/uploads/thumbnails/article-2.webp', 457, 'Ut quam qui dolor nulla aut est. Et et qui nihil molestias. Labore nihil quidem ut qui.', 'Id earum quis adipisci voluptatem id consequatur ad rerum. Aut voluptatem voluptate consequatur enim voluptatem illo facilis error. Animi consequatur dolores consequatur molestiae modi amet animi fugiat.', 'Illum sed officiis quia. Nam animi ex in sint eligendi alias. Officiis fugiat est velit aut ipsam.', 'hic-maiores-iusto-provident-rerum-voluptatem-magni-voluptatem-recusandae', 1),
(13, 8, 'Comment optimiser les performances de votre site Web pour une vitesse maximale', 'Sapiente sit deleniti vel enim facere labore unde. Et similique est sit aut. Aut repellat possimus ex maiores quasi ea qui. Eos soluta cum et voluptatum consequatur. Laboriosam et et molestias repudiandae ut quo. Autem repellat nam quia nisi porro rerum. Et mollitia repellendus ducimus voluptatum voluptatem dolores. Laborum asperiores qui porro deserunt aperiam quidem. Cumque excepturi odit eum velit distinctio quidem totam. Officiis aperiam optio perferendis. Et vel nesciunt a ut et voluptatem. Expedita delectus consequuntur ea ipsam beatae deleniti unde. Laudantium qui esse voluptatum illum enim. Possimus quibusdam quia minus et a aliquid. Ut excepturi praesentium nemo. Et atque sint laboriosam et rem. Qui eum ut perferendis nulla vero aut quibusdam. Delectus reiciendis sunt consequuntur est. Commodi autem est voluptas est eum. Perferendis quia totam et possimus. Aut porro exercitationem inventore consequuntur veniam quibusdam sit. Adipisci aut quos ipsam voluptatibus voluptas aliquid quaerat. Soluta ullam delectus maxime quam optio consequuntur. Iusto fugiat ex mollitia qui est ea. Ut voluptatem numquam unde. Libero autem a adipisci. Nam ut et sit eum voluptatem omnis. Molestias perferendis dolores et facilis. Porro incidunt assumenda voluptatibus ut. A nihil totam sint veritatis et ut recusandae. Placeat voluptatem molestiae itaque deserunt quis doloremque atque. Temporibus error alias molestiae aperiam corporis aspernatur. Dolor tempore omnis est autem unde. Voluptates ducimus ratione in et et et. A earum ipsa consequatur et porro saepe expedita quis. Et molestias quibusdam beatae harum. Vero et sed sint nulla ut similique. Est maiores nesciunt assumenda voluptatibus doloribus. Dolor totam amet molestiae commodi officiis enim voluptatem. Quo asperiores sunt modi ipsa in nemo. Error eius laborum tempora dolorem praesentium eum cumque.', '2020-09-24 20:03:44', NULL, '/uploads/thumbnails/article-3.webp', 344, 'Quis suscipit fugiat voluptate nisi. Consequuntur quam eius dolores natus sunt excepturi.', 'Enim quasi magnam ut ut mollitia enim. Accusamus optio rerum provident ipsum ut. Quasi accusantium dolores possimus distinctio provident modi. Fugit impedit ut voluptas deserunt soluta.', 'Aut beatae quia et sapiente. Aut error fugit sunt nostrum accusamus. Qui eum nobis ab alias.', 'est-enim-autem-nesciunt-accusamus-est-consequuntur-asperiores', 1),
(14, 11, 'Créez un site Web professionnel avec Bootstrap : un guide étape par étape', 'Quaerat eum amet nihil voluptatem voluptatem. Rerum amet numquam omnis magni blanditiis. Provident sint et laboriosam et et. Doloremque similique soluta earum temporibus est sint corrupti. Et sequi et tempore quod. Sint alias reiciendis sunt impedit occaecati eum incidunt. Distinctio sed natus et ut ut. Qui et cumque doloribus ut. Itaque perferendis dolor rerum. Maiores ipsum voluptatem quasi eos qui quam. Ut in voluptatum aut reiciendis quod fugit temporibus veritatis. Nesciunt nobis quasi quia asperiores at quod eligendi. Est ipsa illo et omnis vel et quia. Nulla dolore tempora sapiente inventore. Id dicta reprehenderit quasi. Asperiores sit totam distinctio aliquam eaque. Officiis cumque nisi voluptate laboriosam doloremque quod qui. Dolor sint voluptatem nihil. Modi quisquam in unde sunt nemo rerum nihil repudiandae. Odio facere laboriosam nam sed. Quia hic quis aliquam aut et itaque ut. Velit culpa explicabo minima atque est. Omnis velit et rerum iusto est. Aut et eos quod neque corporis molestiae tempora. Rem eum repellat non consequatur delectus. Atque vel eos occaecati voluptas. Tempora ducimus nostrum dolore ea. Dolor et numquam rem consequuntur. Aut consequatur assumenda voluptate. Porro recusandae cum consequatur velit magni et. Porro necessitatibus vel accusantium debitis aut aspernatur necessitatibus. Quis dolores error vel qui voluptatem eum quo. Quibusdam nostrum ut alias magnam cupiditate molestias dolorum. Repudiandae asperiores hic et fuga quos sequi ipsum. In sunt cumque ut rerum. Molestiae porro est quos temporibus occaecati alias mollitia. Iusto perspiciatis voluptas nulla deserunt corrupti corporis et. Et blanditiis odit nemo nemo eligendi assumenda. Ut perferendis ullam a suscipit sit alias. Ipsa quibusdam quia aperiam nihil. Soluta et in accusantium unde. Magnam sed ducimus quidem placeat cupiditate voluptatibus. Aut nisi expedita saepe ullam. Quod quod sit voluptas minima mollitia rem veritatis eius.', '2009-08-06 09:24:12', NULL, '/uploads/thumbnails/article-4.webp', 608, 'Et at eos non iusto quasi velit. Veniam enim maxime voluptatum in doloribus saepe modi.', 'Molestiae dolor aperiam nam cumque cum accusantium tenetur. Consequatur nostrum nobis consequatur esse. Minus et tempore dolore est.', 'Voluptates eos atque laborum dolor. Unde rerum optio dolores veniam doloribus facilis repudiandae.', 'quia-omnis-facilis-quasi-rerum-consequatur-ad', 1),
(15, 13, 'Comment optimiser les performances de votre site Web pour une vitesse maximale', 'Possimus consequatur dolorem minima quibusdam facere quae. Eos saepe et architecto consequuntur itaque sit sapiente. Nostrum fugiat tempore tenetur amet dignissimos. Neque et aut nam totam. Rerum quia illum quia aut et magni voluptatum. Recusandae dolore quia eligendi a. Modi ratione et quia. Veritatis ut culpa est consectetur quos quod. Minima tempore mollitia maxime voluptatem quis quam ut. Aut ullam distinctio quis eum. Illum quibusdam debitis hic accusantium. Expedita quisquam libero incidunt eius. Itaque voluptatibus a reprehenderit sit hic vel temporibus. Dolor ab vero excepturi a adipisci et occaecati. Et et fuga nulla dolorem. Magni sed ullam soluta ipsam. Perferendis iure odio quisquam perferendis nobis eum. Fuga nobis omnis officiis fugiat exercitationem. Aliquam ad aut dignissimos. Atque totam dolorem laboriosam. Alias dolor quis itaque delectus voluptatem soluta. A fuga porro dolorum et. Fuga iusto maiores et enim rerum officia architecto. Voluptates quas debitis dignissimos ut. Et quasi provident itaque consectetur earum fuga. Repellat et dolores rerum distinctio maiores qui odio. Et reprehenderit nesciunt velit quae quia. Velit dolore sed fugiat eveniet excepturi qui est officia. Ea ut aut doloribus qui. Ut aut eum et non delectus assumenda. Molestiae autem omnis repellendus mollitia rerum eius. Velit placeat ut dicta harum ut quidem a reiciendis. Dolorem hic officiis voluptatibus labore eveniet. Cum repellendus doloribus eum. Delectus eos eligendi ut ut iste. At vel quis rerum itaque beatae non et. Non omnis nemo unde ipsum et ut voluptatibus. Autem quae consequuntur qui soluta quia neque vel praesentium. Veritatis maxime esse aut saepe voluptas aut. At rem esse magni et velit aliquam pariatur accusamus. Ut qui ipsa molestias consequatur dignissimos harum. Veniam et repudiandae cum libero et. Eum dolore nostrum ut ipsa voluptatibus. Tempora ex eum repellat rerum molestias enim dolorem.', '2009-07-07 08:12:01', NULL, '/uploads/thumbnails/article-1.webp', 847, 'Architecto quis nulla saepe. Qui sit cupiditate quas ut est. Dolore ipsam rerum aut qui eveniet.', 'Omnis ut dolorum saepe rerum ipsum similique. Nulla ex est in. Perspiciatis aliquam excepturi soluta accusantium aliquid reprehenderit quisquam.', 'Quidem qui autem modi saepe nulla harum. Velit autem est adipisci aut quis.', 'eos-dolor-voluptas-sed-et-voluptas-adipisci-qui-ut', 1),
(16, 4, 'L\'avenir du développement Web : explorer les technologies émergentes', 'Corrupti soluta nihil et quia sit eaque. Nostrum dolor qui et sint vitae ut ab. Voluptas quo adipisci non qui possimus. Est eveniet maxime aliquam ut distinctio quam exercitationem. Est ducimus animi est laboriosam beatae iusto asperiores. Quisquam porro repellendus molestiae. Qui est ab excepturi laudantium voluptatem rem. Nulla corrupti quae non necessitatibus quos explicabo aut. Hic sint qui sit sit quibusdam ut. Maxime consequatur aut quasi. Consequatur ratione sed quis ea quidem autem ut. Rerum deserunt delectus repellendus ratione. Officiis repudiandae sed et odio quo ut. Doloremque laborum ut deserunt nulla esse. Earum fugiat fuga cum nulla. Eos a quisquam voluptatum deleniti. Harum qui praesentium facere vitae. Beatae quia sunt aspernatur sit vero ratione. Quia fuga voluptate quas a non sint. Possimus aut aut rerum animi nostrum ipsum. Ipsa laudantium nisi distinctio aut. Voluptatem et ut voluptatum ut voluptas asperiores veniam ut. Asperiores incidunt molestiae blanditiis voluptas est repudiandae harum ab. Sint quia beatae et non eum aut. At earum incidunt quisquam et voluptatem reiciendis. Voluptatem quasi quo necessitatibus dicta in voluptatem. A consequatur nulla eaque et. Sed magnam eius rerum. Omnis maxime quibusdam et totam sint corporis aliquam itaque. Et consequatur quis quis. Eaque excepturi ipsam a non maiores. Similique et aut voluptatem ea quos commodi. Dolorem culpa rerum fugiat odio id labore. Ducimus placeat ipsa quo dignissimos tenetur quam nemo. Quae voluptatum temporibus ex necessitatibus sunt molestiae dolores. Itaque odio et quo quis quis voluptas eveniet sit. Dolorem similique libero deserunt et fuga vel. Corporis id reiciendis consequuntur pariatur. Qui itaque ex aut ut illum ex qui. Iste dolor est veritatis voluptates id deserunt. Voluptatum sint quibusdam officiis quae quia fugiat deserunt.', '1979-04-22 14:22:27', NULL, '/uploads/thumbnails/article-2.webp', 218, 'Non earum commodi nesciunt qui. Libero eum aut assumenda magni sunt. Alias omnis iure vel eveniet.', 'Quod optio quae aut soluta libero quis consequuntur non. Expedita eligendi natus et qui recusandae ipsum. Esse magnam labore qui pariatur modi exercitationem sint. Sed perferendis blanditiis quia non magnam ut.', 'Tenetur dolorum cum illo qui. Officia omnis sint explicabo tenetur voluptatem aliquid sint.', 'laudantium-inventore-rerum-sit-aut-accusamus', 1),
(17, 10, 'Les meilleures bibliothèques JavaScript pour simplifier votre développement Web', 'Quam quia ducimus et velit adipisci qui quia. Ratione itaque voluptatem sed. Corporis voluptatum et et mollitia qui voluptas ipsa. Magni provident natus velit ad. Harum facilis tempora et et ut. Dolores qui nam beatae rerum consequatur molestiae. Eum voluptatem adipisci aut quia. Qui quidem ut sit beatae tenetur. Consectetur sit enim aut. Culpa vitae voluptatem facilis rem sint recusandae veniam. Ipsam dolor et nostrum assumenda et minima in. Repudiandae doloribus repellat sit est non. Voluptatum voluptas ducimus nesciunt officiis quod fuga. Est dignissimos quidem velit fuga ad error rerum. Doloremque voluptatum numquam nisi id voluptate. Repellat voluptatem voluptatem autem aliquid dolorem veritatis. Assumenda enim porro molestiae fugiat voluptates eum amet. Voluptas consequatur omnis necessitatibus voluptatem. Repellat mollitia id maxime deserunt consequatur temporibus. Vero pariatur voluptatem laboriosam debitis. Ullam est dolorum et ut molestias id est. Dolorem asperiores nihil labore accusamus. Recusandae soluta nam dolore. Tempora expedita sed voluptates adipisci. Eos sit ipsa dolorem excepturi. Repellat odit fugiat voluptate asperiores sapiente. A quia pariatur libero itaque quibusdam. Assumenda et asperiores laboriosam assumenda. Rerum magni corporis est consequatur aspernatur alias rem. Aliquid velit quasi iure et. Quo est eaque odio possimus. Nihil deserunt delectus quos et. Et consectetur quod placeat architecto omnis. Officia aperiam quae non dolor doloremque. Officia est quibusdam et eos. Eum est qui unde qui commodi. Molestias quod et facilis dolores tenetur praesentium et. At magnam qui asperiores nesciunt officiis commodi dicta. Fuga eaque ut tenetur aut sit consectetur recusandae. Ut dolorem at consequatur rerum. Qui a est sed aliquid quia totam vel. Fugiat quasi voluptatum voluptatem qui delectus impedit. Quisquam est sit quos quod facilis omnis. Et dolor labore optio modi qui quo.', '1987-10-01 12:35:32', NULL, '/uploads/thumbnails/article-4.webp', 315, 'Eius dolores non non voluptas. Provident est accusamus ipsum magnam.', 'Qui recusandae velit alias sed. Hic culpa nostrum accusantium et accusamus amet. Optio quia tempore aperiam in. Asperiores odit veritatis expedita quia.', 'Reiciendis rem alias saepe maxime. Quisquam id quasi ex ullam rerum quos.', 'ut-expedita-non-est-illo-voluptatem-et-sit', 1),
(18, 3, 'Les tendances du design Web à suivre en 2023', 'Fugit aut consequatur sint est error. Dicta ut quia adipisci deleniti quia odio. Quis optio magnam aut vel. In magni aut dignissimos eum. Ducimus doloremque tempore exercitationem ipsam. Reprehenderit ratione ut excepturi. Inventore expedita earum ut vitae unde ut repellendus. Nihil illo facilis qui ut nihil provident. Ut accusamus architecto eius ut ad ex neque. Sed quasi magni ducimus amet molestiae ut occaecati. Quia sunt asperiores dolor facere repudiandae. Cupiditate voluptatum temporibus dignissimos rem eum aliquam omnis perspiciatis. Repellat aliquid voluptatem repellendus vel eos est non vel. Et itaque qui numquam et. Quae ea dolor omnis esse. Quas et impedit reiciendis quam rerum facilis. Maxime quisquam reiciendis voluptas. Mollitia ut ut eius omnis laboriosam vitae neque. Ad omnis magnam praesentium. Totam consequatur vero officia et omnis. Explicabo odit sapiente id eveniet eum dolor. Amet eius nulla qui qui debitis itaque. Tempora unde delectus harum reprehenderit. Atque molestiae velit quae eum facilis quam quae. Quaerat voluptatum pariatur doloremque fuga molestias et cumque. Quod eligendi nam et magni asperiores. Quae ex deserunt ratione non. Enim incidunt necessitatibus blanditiis rerum. Deleniti quia ipsum assumenda incidunt. Qui molestiae et et odit assumenda nam. Itaque rerum optio dolorum soluta quos qui enim. Eum ratione voluptatem aut consequuntur nihil ea facilis quasi. Nihil quia harum eius doloremque accusamus totam ut. Itaque reiciendis eveniet temporibus deserunt. Itaque qui molestias id et aut cupiditate explicabo. Natus harum eligendi a iste fugit omnis esse. At ipsam aspernatur repellat omnis occaecati est. Aliquam ratione dolorem qui at non. Aliquam voluptas consequatur reiciendis numquam asperiores est libero. Et sint et consequuntur. Nobis minima voluptatem assumenda magnam tempora. Voluptate quos inventore ea alias ipsam temporibus.', '1983-06-30 12:30:07', NULL, '/uploads/thumbnails/article-3.webp', 633, 'Nihil voluptatem et est suscipit dolorum. Hic deleniti rem iure omnis qui.', 'Dolores praesentium recusandae voluptate animi cumque eum. Ratione numquam dolorem velit in et. Sed perspiciatis omnis quidem est nesciunt atque sit.', 'Unde et laborum blanditiis nobis. Nesciunt in asperiores quia.', 'recusandae-eum-quidem-ipsum-accusantium-aut-aut-non-repellendus', 1),
(19, 8, 'Introduction à Docker : facilitez le déploiement de vos applications Web', 'Doloribus velit voluptatum vitae molestiae. Perspiciatis aut repellendus temporibus aut dolorem. Provident mollitia magni fuga id id voluptatem reprehenderit. Et ut ea quisquam consequatur dolores. Qui quibusdam necessitatibus occaecati. Vel blanditiis repellendus aut et. Iure odit libero omnis et. Velit rerum provident et et voluptatem itaque culpa. Aut sunt eum in architecto consequuntur sed. Tempora cum et blanditiis sint quia ad et beatae. Eaque beatae neque ut magnam molestiae architecto natus. Nulla velit animi amet est. Dolores illo iure iusto sed nihil qui quia architecto. Dolorem fuga sunt voluptatem. Explicabo aliquid veritatis reiciendis ea. Quo nulla inventore enim vel amet quia dicta veritatis. Veritatis ut deserunt temporibus animi sapiente et. Aut beatae dicta libero. Eius voluptatibus vero pariatur eum provident rerum. Optio odit possimus provident est. Ducimus eligendi cum veritatis ullam. Impedit sed rerum doloremque id. Expedita animi est aut ipsum ut. Omnis veritatis occaecati voluptas voluptatum rem. Necessitatibus ut libero omnis illum qui magni dolorem. Facilis distinctio possimus mollitia cum consequatur enim nihil. Pariatur quisquam assumenda est molestias inventore aut laboriosam. Aut aut error quis amet molestiae tempora. Libero quisquam sit labore vero. Nihil ullam occaecati vel sunt fuga. Illum consequatur consequatur eum pariatur accusantium soluta aut. Earum voluptate perferendis et est. Tempore dolor aut doloremque laborum possimus dolores perspiciatis. Saepe debitis nisi sequi officiis reprehenderit quas. Et consequuntur deleniti occaecati est voluptatum quidem. Totam voluptatem beatae quia non. Id facere consectetur maiores unde rerum. Sit ea vitae rerum aut amet distinctio. Ea eligendi id ducimus. Architecto doloribus id commodi. Mollitia mollitia necessitatibus aut itaque aut quos. Hic molestiae enim repudiandae qui qui consequatur. Est est doloremque dolorem voluptas.', '2004-02-15 17:15:13', NULL, '/uploads/thumbnails/article-4.webp', 97, 'Pariatur amet odit et enim labore enim. Rerum quo soluta aut ipsa ratione. Et dignissimos ut aut.', 'Impedit quo enim ut deleniti deleniti. Iusto fugit et enim tenetur sunt. Itaque cumque vel quibusdam natus ea. Aut quas est est quos qui laborum.', 'Ea non eveniet reprehenderit eos. Esse nihil voluptas quasi et.', 'ipsum-molestiae-necessitatibus-distinctio-excepturi', 1),
(20, 5, 'Comment gérer efficacement les formulaires dans le développement Web', 'Magni dolores odio atque magni blanditiis. Voluptatem velit doloribus fuga quia incidunt et quia. Tenetur voluptatum autem a et sed. Explicabo porro vero odit sint ipsum. Et quod qui possimus natus. Ea dolores fugiat eum expedita commodi. Aut vel dolorem molestiae voluptatem. Et adipisci reprehenderit dolor eveniet. Eum voluptates quasi rerum qui et fugiat. Ut accusantium reiciendis et unde vitae totam ab. Recusandae veniam quos dignissimos perferendis enim eius. Quibusdam sequi est quis minima et quo. Quasi quos et modi. Quam eaque consequuntur pariatur molestiae doloremque et. Commodi aliquam quo praesentium totam. Quia minima cumque rerum qui velit enim pariatur. Laboriosam est repudiandae qui excepturi ab quaerat. Est vitae in autem. Quia modi molestiae suscipit quis laborum velit illo. Et veniam nostrum corrupti soluta. Dolorum voluptates molestias hic aut reprehenderit debitis voluptatum. Maxime illum eligendi eius et non ipsa ipsa. Aliquam sit magni voluptas expedita quo. Distinctio illum magni sed delectus magni quia laborum. Est officia aut ex nesciunt numquam ut. Non delectus enim voluptas. Fugit aliquam blanditiis blanditiis officia necessitatibus et a possimus. Deleniti impedit quasi tempora. Sunt omnis explicabo nesciunt autem rerum et odio qui. Totam placeat incidunt placeat accusantium. Perspiciatis quo placeat hic facilis repellat quia pariatur laboriosam. Aut consectetur quisquam et qui molestiae eum voluptatem. Accusantium natus nobis exercitationem ea quis laboriosam eveniet. Harum neque saepe itaque deserunt et nam. Et voluptatem est aut dolor sed nam. Est animi blanditiis est ut similique molestias. Cupiditate sunt aut atque eius non consequatur. Quidem enim nemo omnis commodi a nulla. Delectus nemo consequatur cumque at. Aut et quo sit. Omnis sequi delectus vero velit accusantium. Eos deserunt omnis laborum aut voluptas perferendis. Optio natus voluptate modi accusantium quis.', '1972-04-08 06:54:01', NULL, '/uploads/thumbnails/article-4.webp', 82, 'Odio consequatur maxime recusandae excepturi in. Id voluptas dolorem nostrum asperiores.', 'Quia ipsa ut voluptatem rem laudantium. Repellat deleniti est dolorum fugit dolores porro autem. Aut est debitis ut eos molestias aut voluptate voluptatem. Qui libero possimus consequatur nostrum. Qui modi ipsa et eos cupiditate aliquid assumenda.', 'Ut ut voluptas totam ea iusto quam enim. Sit saepe repudiandae quos vitae et numquam sit.', 'maxime-molestiae-quam-corporis-minima', 1);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'HTML'),
(2, 'CSS'),
(3, 'JavaScript'),
(4, 'PHP'),
(5, 'Python'),
(6, 'Ruby'),
(7, 'Emploi'),
(8, 'Reconversion'),
(9, 'Étude de cas');

-- --------------------------------------------------------

--
-- Structure de la table `category_article`
--

CREATE TABLE `category_article` (
  `category_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category_article`
--

INSERT INTO `category_article` (`category_id`, `article_id`) VALUES
(1, 2),
(1, 5),
(2, 5),
(2, 10),
(2, 12),
(2, 14),
(2, 16),
(2, 19),
(3, 1),
(3, 4),
(3, 7),
(3, 10),
(3, 12),
(3, 13),
(4, 4),
(4, 6),
(4, 7),
(4, 9),
(4, 11),
(5, 6),
(5, 7),
(5, 8),
(5, 14),
(5, 17),
(5, 18),
(5, 19),
(6, 1),
(6, 8),
(6, 9),
(6, 11),
(6, 12),
(6, 15),
(6, 18),
(7, 6),
(7, 10),
(7, 15),
(7, 16),
(7, 19),
(7, 20),
(8, 2),
(8, 3),
(8, 5),
(8, 14),
(8, 17),
(8, 18),
(8, 20),
(9, 2),
(9, 3),
(9, 13),
(9, 15),
(9, 20);

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `content` longtext NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `article_id`, `author_id`, `content`, `created_at`) VALUES
(1, 9, 8, 'Maiores labore quasi molestiae fugiat harum eos. Ut blanditiis omnis veniam animi. Ullam consequatur et possimus autem. A optio aliquam facilis soluta dicta temporibus eaque eligendi. Excepturi odit deserunt et non velit excepturi maiores.', '1981-04-21 21:00:20'),
(2, 9, 2, 'Accusamus ut ipsam veniam esse nihil. Laudantium impedit ut atque similique laboriosam et. Minima ut neque voluptas optio ut labore. Alias velit nam similique facere a impedit consequatur. Et rem inventore ut eaque.', '2006-06-18 04:55:28'),
(3, 3, 13, 'Aut dolores et voluptates soluta sit. Id eum et temporibus sapiente et beatae nostrum. Libero odit non laudantium deserunt vero sint optio. Dolorem aliquid modi quia nostrum. Ad amet non ipsam. Perferendis est aut ullam nobis.', '1990-08-26 09:00:03'),
(4, 2, 8, 'Possimus ullam ut harum commodi dolorem facilis natus aut. Consequatur occaecati maiores cupiditate et aut sint deleniti. Hic dolorum eveniet tempore odio officiis. Quo sunt aspernatur occaecati ut accusamus.', '1988-03-26 20:24:57'),
(5, 9, 6, 'Sequi et incidunt quam minima esse. Ut facilis rerum voluptas ut qui vitae id iste. Autem ullam molestiae ut voluptates explicabo sint. Et nemo incidunt pariatur vel quas velit.', '1991-01-08 12:26:17'),
(6, 3, 9, 'Et possimus eum dolor vitae. Quas dolor eum fugiat iusto quos voluptate dolore. Nulla quia quo odit recusandae non ut corporis.', '2016-06-25 12:37:39'),
(7, 5, 5, 'Quos vel dolorem libero molestias ut. Ducimus ea possimus ut recusandae maiores occaecati hic. Harum accusamus nobis quidem recusandae dolor optio sed. Minima modi ut optio.', '2001-07-26 04:12:42'),
(8, 18, 8, 'Ipsum expedita et nostrum enim ea et qui. Aperiam vero excepturi velit esse. Quae voluptas ea nostrum ipsum qui. Est at omnis adipisci id.', '2009-12-20 05:59:53'),
(9, 7, 4, 'Pariatur eum est debitis et aut id qui dicta. Hic nesciunt commodi at possimus est a sed. Quia illo dolorem corporis sed nostrum sequi. Quod enim minus quisquam repellat sed. Quisquam laborum qui odit sit et eveniet.', '1982-05-19 21:23:13'),
(10, 8, 13, 'Nesciunt suscipit molestias esse earum architecto maiores molestiae. Omnis quo veritatis reiciendis exercitationem ullam dolor. Et dolorem quas est occaecati. Non atque quisquam iure esse aut dicta ut.', '2006-05-04 09:39:39'),
(11, 16, 6, 'Enim in qui magni eos maxime cum. Quod omnis quis nulla quam. Officiis sapiente ipsam accusantium molestias iure. Id maiores tenetur quaerat aut qui. Nobis explicabo quis vero ut. Possimus cum quod sapiente ut quia odit.', '1994-06-04 06:07:58'),
(12, 11, 6, 'Deleniti qui dolore est repudiandae exercitationem quae animi autem. Dignissimos blanditiis consequatur dolores dolorem laboriosam. Ab et sed necessitatibus culpa nostrum sed. Soluta ipsum dolore quibusdam harum et qui voluptas.', '1999-06-19 09:23:20'),
(13, 11, 8, 'Et et ex ea tempora ipsum delectus perferendis. Incidunt ipsam voluptatem laborum fugit sed ipsa cumque officia. In non consequatur omnis et eos in.', '2017-07-28 09:10:28'),
(14, 19, 7, 'Omnis nesciunt impedit a et facilis nihil. Voluptatem nulla soluta sapiente eaque nulla ad aperiam placeat. Sint officiis et eos rerum ex quod ut.', '2018-08-23 05:04:59'),
(15, 13, 6, 'Aut ipsum qui temporibus eligendi consectetur exercitationem. Deleniti magni sunt nobis quasi. Fugit veritatis id aut quas. Vero sunt voluptatibus id vero. Et iusto dolorem in et sed est delectus. Excepturi rerum nostrum est distinctio.', '2000-07-09 19:58:17'),
(16, 9, 4, 'Ratione exercitationem ipsum aut est tempore. Et aliquam cum dolores dicta necessitatibus eveniet. Ea asperiores assumenda aut laborum. Vel vero voluptatum quia omnis itaque.', '1980-09-15 00:26:38'),
(17, 11, 7, 'Vel recusandae ab provident voluptas. Earum quia qui illum perferendis. Et veniam consectetur iure rerum nesciunt. Cum quis maxime unde aut laudantium quia accusantium earum. Sint ipsum dicta consequatur ea eveniet sit soluta suscipit.', '2004-03-14 03:07:34'),
(18, 15, 10, 'Minima quos corporis iste voluptas. Et qui voluptatibus laudantium praesentium quia sed beatae. Quis omnis eum magnam delectus a sed. Eum quia voluptate qui fuga quis. Non laborum quis sapiente et neque nihil eum voluptas.', '1974-04-12 23:30:28'),
(19, 14, 10, 'Autem et perferendis ut iure. Aliquam ex enim est commodi qui minima quia et. Corrupti consequatur aspernatur aperiam voluptate eos est magnam. Qui vero dolor ratione minima omnis eaque iste.', '2013-11-27 04:12:04'),
(20, 16, 7, 'Ad voluptatem molestiae voluptates voluptas harum nobis et blanditiis. Enim omnis consequatur vel aut eos ut inventore quaerat. Deleniti sapiente officia et incidunt quasi quod. Reiciendis ea aut quae placeat aut.', '2003-06-20 17:18:42'),
(21, 3, 4, 'Voluptatem aut velit provident enim est. A hic expedita qui architecto. Explicabo praesentium dolorem aliquam. Nihil autem quod neque voluptatem commodi. Voluptas dolores adipisci qui sint qui. Et facere dolorem ad earum.', '1999-03-13 06:51:18'),
(22, 5, 5, 'Odit quisquam libero deserunt atque. Qui necessitatibus quos consequatur vitae. Aperiam ipsam unde omnis est dolores voluptatem. Vel facilis necessitatibus nam qui dolores quidem. Perspiciatis nulla et cum.', '1981-04-10 18:44:51'),
(23, 19, 4, 'Rerum molestiae et voluptates mollitia suscipit. Repellat fugit in accusamus ut. Magnam incidunt ut ex quis. Sunt aut numquam eos incidunt sed saepe.', '1984-05-25 16:58:01'),
(24, 13, 4, 'Blanditiis voluptatem ipsum ut inventore facilis minus dolorem. Sint dolores eos iste ea. Quasi modi id qui ea.', '1996-01-03 03:58:40'),
(25, 13, 13, 'Voluptatem itaque rerum quo velit dolorem. Consequuntur ut culpa qui debitis ipsum.', '2013-05-31 05:22:26'),
(26, 16, 13, 'Laudantium cumque qui at ut. Repellat aut iure velit aut. Tempore assumenda in itaque quibusdam nihil rerum placeat. Quia non illum iste enim minima adipisci.', '1972-12-21 11:13:11'),
(27, 5, 2, 'Reprehenderit unde eveniet aperiam. Reiciendis veniam iure et exercitationem ut sed non. Animi veniam ut repellat qui.', '2015-02-18 05:46:33'),
(28, 19, 2, 'Sed explicabo cumque sit ab voluptatibus consequatur dolorem eum. Earum fugit explicabo quis reiciendis. Neque voluptates porro voluptatibus eos ullam. Voluptatibus sed minima reiciendis temporibus.', '1979-07-05 00:53:00'),
(29, 11, 5, 'Blanditiis non aut aut amet enim ipsam. Iste quo rerum ad rerum totam. Quasi ut repudiandae quibusdam mollitia veniam culpa quos deleniti. In ad ratione inventore est quas et odio.', '2016-01-13 20:12:15'),
(30, 10, 2, 'Modi exercitationem natus id sunt qui in ut. Molestiae debitis et laudantium eos et. Sunt laboriosam culpa odio deserunt dolorum.', '2009-03-25 05:35:09'),
(31, 2, 8, 'Repellat facilis doloribus et labore omnis temporibus. Natus occaecati in voluptas nobis a. Eveniet labore et qui reprehenderit sunt consequuntur voluptatem. Excepturi temporibus eos qui. Magnam ex qui qui aut iste non ea.', '1975-04-16 03:42:41'),
(32, 3, 13, 'Et dolorem libero harum saepe rem. Ut cupiditate numquam quo ducimus incidunt. Exercitationem natus iure autem et. Praesentium et et accusantium non fugiat sapiente. Deleniti deleniti eum vel nobis cum sit. Eum ipsa in sapiente tenetur expedita.', '2017-10-28 07:02:15'),
(33, 15, 12, 'Sed quidem eum molestias. Porro ea sint labore voluptas sequi saepe quia labore. Magni expedita voluptatem sit quae suscipit. Ex magnam non soluta iure consequatur similique repellendus. Sit doloribus quam exercitationem.', '1978-05-03 22:30:07'),
(34, 8, 8, 'Repellat quam itaque molestias quasi dolorum deserunt. Officia repellat placeat voluptatibus doloremque quam qui aliquam. Incidunt similique et laborum.', '2021-04-23 13:21:01'),
(35, 9, 8, 'Error unde sunt numquam aut. Aliquid laboriosam optio odio velit cupiditate. Ipsa autem veritatis distinctio nam.', '2017-12-30 09:22:59'),
(36, 12, 5, 'Voluptatem rerum nemo enim facere omnis voluptatem quod. Reiciendis ut magni ipsum voluptatibus inventore qui. Nulla voluptatem earum quis vitae id consectetur. Et sit alias iure consequatur commodi quae iusto. Repellendus natus est explicabo iste.', '2003-01-25 00:11:20'),
(37, 2, 12, 'Rerum aut eos rerum repellat voluptate quas aut. Molestiae enim inventore asperiores quis error numquam dolor numquam. Eum doloremque alias sit sit vero qui earum. Asperiores fugit sapiente placeat eos quo nisi quos. Consectetur et odio esse odio.', '1984-02-29 09:08:17'),
(38, 15, 8, 'Sit fuga illo iste vitae provident dolorem. Qui enim nam saepe incidunt culpa ipsa est occaecati. Et iure ullam sit nesciunt enim et nam.', '2020-11-28 21:57:58'),
(39, 11, 7, 'Itaque nihil autem sed expedita sint corporis ut. Est dolorum eum a fugit libero ut pariatur. Inventore eos cupiditate ratione magnam excepturi consequatur alias non. Quasi distinctio accusamus ipsam molestiae consequatur molestiae corrupti.', '1971-06-05 13:04:50'),
(40, 5, 9, 'Iste provident dolor vel minus. Tenetur repudiandae odit sint saepe et. Culpa dolores qui quia. Unde aut impedit blanditiis quia.', '1986-06-22 01:56:39'),
(41, 2, 3, 'Facere recusandae eos velit qui quos recusandae aut. Officia saepe voluptatum consequuntur est pariatur reiciendis fugit. Dolor perspiciatis atque quam ratione. Ut et maiores eaque aut sit.', '1984-02-18 06:32:24'),
(42, 16, 5, 'Et nihil et veniam. Iure in iste amet in nisi ab nulla illum. Et qui autem eius magni qui aut. Ipsum autem ullam iure est.', '1970-11-17 16:24:03'),
(43, 6, 7, 'Itaque molestias vitae quod qui. Qui libero voluptatem quia animi. Dolor excepturi est porro aut reiciendis cumque molestias. Consequatur assumenda consequatur quas possimus minima rerum suscipit.', '1985-06-11 09:24:36'),
(44, 1, 4, 'Est enim dolor ut repellat est voluptatem. Vero in saepe et optio cupiditate. Aut vel deleniti natus non quis. Autem ad eum dolore. Odit non porro et quasi velit. Est illo voluptatem rerum quia quaerat perferendis aut.', '1982-12-08 18:21:07'),
(45, 2, 2, 'Et nihil eius nobis non. Earum delectus vitae aut quo inventore. Tempore provident voluptas animi ut.', '1999-05-06 13:15:20'),
(46, 17, 7, 'Dolor vel eligendi eius eum eveniet fugiat perspiciatis. Accusantium et officiis itaque quia cumque porro. Quam modi quia veritatis odio omnis.', '1991-12-13 12:59:17'),
(47, 1, 10, 'Dolore vel delectus explicabo quisquam non sapiente et. Possimus iste consectetur alias ad tempora. Labore eos labore quis repellat ad neque.', '1984-04-19 05:00:07'),
(48, 18, 11, 'Veniam iusto et voluptatem ea dolorum incidunt. In molestias sit aspernatur. Sit quia excepturi rem asperiores odio sed. Quos culpa quo mollitia iure quidem.', '2021-10-04 12:49:21'),
(49, 9, 5, 'Nostrum qui laborum odio voluptate officia. Voluptas est ea ut.', '2005-07-29 16:08:22'),
(50, 6, 12, 'Porro sed ea optio doloribus pariatur. Dolor omnis quis odit sint. Itaque dignissimos sint nam ducimus et iure ullam. Neque voluptate ea delectus qui optio sed autem. Ad perspiciatis voluptatum qui iste libero laboriosam quia velit.', '2005-02-13 21:14:01'),
(51, 9, 5, 'Quidem repellendus voluptatem soluta ea provident. Fugit commodi ipsam nesciunt a aut minus. Distinctio atque maiores qui fuga illum.', '1991-12-01 21:28:31'),
(52, 20, 8, 'Sed excepturi quis non et et et. Sapiente sequi et velit temporibus omnis voluptas. Vero rerum voluptatem dolores labore repellat. Voluptatibus dolor eos ea incidunt officiis quasi. Ratione veniam beatae et accusamus excepturi quia et.', '1989-06-24 00:57:43'),
(53, 20, 12, 'Sed rerum dicta et ea est assumenda sit. Dicta magni quod eveniet sint et. Omnis numquam quo accusantium praesentium eveniet. Natus in nihil quo numquam qui veniam. Maxime in inventore optio quia animi molestias maxime qui. Modi enim qui non.', '2012-08-26 01:30:06'),
(54, 9, 9, 'Id quis dolorem nobis corrupti. Et earum nulla consequuntur est et iure. Sunt voluptas quasi quis. Quia tempora non qui adipisci quia. Dolorem ullam sunt animi nihil dolorum temporibus accusamus enim. Amet eum nostrum similique.', '1993-10-16 12:49:40'),
(55, 6, 9, 'Molestias ut iusto optio sed recusandae. Mollitia voluptate adipisci aperiam voluptatum deleniti tenetur similique sunt. Distinctio nemo temporibus excepturi sequi vel.', '1989-09-09 20:59:47'),
(56, 11, 3, 'Aut voluptates ut voluptatem ut quaerat nisi. Molestiae voluptatem quia quia consectetur officiis. Inventore quia recusandae quaerat est omnis natus voluptatem.', '1971-04-22 02:05:16'),
(57, 9, 13, 'Non architecto officiis et et beatae ullam. Itaque est corrupti odit possimus. Omnis tempore repudiandae unde saepe. Odio ea qui molestiae sit aut aut rerum veritatis.', '2001-12-04 08:27:09'),
(58, 6, 7, 'Officiis fuga sed labore. Similique blanditiis magnam veniam adipisci optio sequi. Totam debitis aliquam autem.', '1975-01-21 03:00:47'),
(59, 6, 3, 'Quas molestiae enim ut officia totam sint officiis. Odit quia a ut magnam ratione quia. Voluptatem nesciunt ut temporibus doloremque consectetur rerum. Et voluptatibus excepturi quia et sint commodi.', '2011-06-15 07:17:16'),
(60, 20, 9, 'Quia reprehenderit ut nam velit consequatur. Minus qui repellendus nobis ut omnis enim itaque. Ipsum tenetur ut minima voluptas libero. Nihil non voluptatem sunt omnis voluptatem qui nihil.', '1974-07-08 02:58:32'),
(61, 5, 9, 'Dicta et vel quaerat voluptatibus officiis et soluta assumenda. Dolor ut nesciunt ipsa placeat. Magnam tenetur natus laboriosam sit velit dignissimos. Quidem officia vel neque fugit explicabo iusto quis.', '2012-05-21 03:30:55'),
(62, 5, 7, 'Rerum ratione nobis id qui quae quo. Sunt delectus et aperiam cum. Ab quia ab est ut. Ab vero asperiores sed voluptatem blanditiis qui harum ducimus. Esse perferendis voluptates quaerat dolorem et vel at. Rerum provident quae et repellendus.', '1981-06-18 06:24:03'),
(63, 15, 6, 'Accusamus reiciendis consequatur illum iste ut sunt facilis. Aut officiis officiis quae fugiat. Quis quis ut repellat. Recusandae veritatis veritatis ut et reprehenderit ad.', '2004-03-15 08:08:28'),
(64, 2, 8, 'Asperiores eveniet eligendi explicabo eaque. Aut quam odio odit iste. Ut quibusdam ut et sed occaecati. Occaecati ea voluptatem doloremque qui vel temporibus magni.', '2002-06-16 11:28:02'),
(65, 8, 2, 'Fuga ut et praesentium maxime labore. Ipsa nihil expedita animi magnam qui molestiae unde. Sint culpa saepe cupiditate.', '1999-07-10 16:54:51'),
(66, 1, 11, 'Hic et ipsa eos at blanditiis. Neque blanditiis sint aperiam excepturi voluptates nihil odit dolorem. Harum unde quis optio itaque omnis ut.', '1996-09-02 13:55:03'),
(67, 11, 13, 'Molestiae ut rem numquam. Dolore qui ut iure recusandae quia. Dolores repellendus vel voluptatem sit aut totam assumenda. Nihil rerum molestiae nobis omnis enim optio provident quia.', '2008-09-03 22:53:52'),
(68, 15, 5, 'Nam dolorum soluta perspiciatis praesentium unde. Dignissimos at sint earum in excepturi. Iusto nihil perferendis et aut doloribus veniam. Libero quod facere et omnis debitis rerum magni. Accusantium assumenda in ipsa.', '1986-10-21 00:33:04'),
(69, 2, 4, 'Earum voluptatem quia laborum odit commodi. Alias odio sunt ipsum aperiam sunt quod. Et ex expedita quia praesentium.', '1991-10-28 19:16:37'),
(70, 10, 12, 'Minus dicta sequi adipisci animi incidunt. Corporis quo et sit nihil aut magnam enim eligendi. Sapiente molestiae recusandae quas repellendus ut. Sunt error sit dolorem. Voluptates doloremque ut doloribus dolor labore laboriosam.', '1994-09-20 09:28:31'),
(71, 3, 6, 'Ut ullam modi illum minus mollitia. Nam est a eligendi quos ullam sit. Molestiae cupiditate occaecati dolores omnis.', '2019-07-27 04:56:38'),
(72, 9, 2, 'Ab necessitatibus nesciunt accusamus quasi ratione quia beatae. Reiciendis repudiandae rerum ipsa est voluptatem. Possimus nisi et eligendi qui quibusdam amet.', '1994-12-10 10:00:20'),
(73, 10, 7, 'Consectetur iste repellendus velit quis voluptatem facilis perspiciatis. Quis quibusdam sint temporibus qui. Eos totam consectetur quo dolorum debitis. Cum ipsa qui nam. Adipisci nulla ipsum non minima velit tempora est.', '1971-01-15 03:52:42'),
(74, 14, 9, 'Explicabo perspiciatis et qui soluta. Reiciendis vel sequi ducimus dolores quidem ut. Quia iusto ex ut ea atque autem. Laboriosam velit eveniet quo quos saepe corporis eum.', '2022-07-17 21:00:11'),
(75, 19, 13, 'Fugiat hic optio saepe a quae. Et quia totam a beatae vero consequatur tenetur. Dolorum aspernatur omnis et doloribus aspernatur qui optio.', '1976-01-13 22:22:17'),
(76, 3, 13, 'Reprehenderit occaecati aperiam fugiat voluptatem magnam autem explicabo. Non quo debitis fugit est. Eos aut dolorum nam sunt impedit. Qui maiores commodi fuga perferendis magni aliquid quae autem.', '2014-04-16 01:27:38'),
(77, 16, 10, 'Aliquam qui nostrum quia quia aliquam. Laboriosam repudiandae aspernatur quia aut. Voluptatem laudantium laudantium quidem ipsam cupiditate laborum officiis. Aut fuga qui iste reprehenderit et incidunt. Sint ut omnis nemo iusto architecto.', '1989-09-04 03:43:22'),
(78, 20, 2, 'Consequatur autem totam voluptatem distinctio id omnis. Praesentium provident quo id ratione iste. Aut et dolores iure ipsa.', '2011-06-13 14:52:11'),
(79, 18, 6, 'Totam et quo itaque aut sed deleniti. Maxime quam dolore rem quidem ratione aut aspernatur. Veniam soluta quia tempore nulla ullam. Quas necessitatibus totam deleniti quia non.', '2023-07-12 11:30:41'),
(80, 12, 5, 'Quia fugit similique non quasi alias. Eaque voluptate iusto voluptatum explicabo natus ipsum commodi. Nisi possimus veritatis perspiciatis veritatis. Qui dicta ut officiis in voluptatem quae dolorum.', '1981-05-22 09:29:54'),
(81, 10, 12, 'Sit nam quaerat ducimus provident est commodi facere. Est accusantium assumenda quia ut earum enim laudantium.', '1993-09-04 11:09:40'),
(82, 10, 2, 'Dolor reiciendis consequuntur quo non sint. Aliquid sed quasi et reiciendis. Neque similique doloribus odio est eius quis.', '2003-06-01 23:19:11'),
(83, 10, 7, 'Quam doloribus voluptas iusto a doloribus nihil. Qui qui architecto reprehenderit reiciendis libero voluptatum enim dicta. Similique veniam quam facilis a aperiam.', '2005-08-19 13:40:53'),
(84, 8, 9, 'Quia tempora odit asperiores labore consequatur accusamus. Placeat voluptatum rerum qui ut. Non aliquid ullam laboriosam non molestias architecto.', '2021-09-10 05:58:55'),
(85, 16, 6, 'In sint eos impedit nulla repudiandae voluptatibus fugiat rerum. Eligendi ducimus tempore suscipit. Maiores nostrum dolores quae pariatur vitae est beatae atque. Sed soluta placeat voluptates sed quo natus id.', '1980-06-24 13:54:57'),
(86, 20, 8, 'Aut placeat alias eos fugit quod. Omnis architecto voluptatem voluptatibus porro porro. Consectetur molestiae eos dicta vitae nobis.', '2003-02-07 08:06:47'),
(87, 6, 2, 'Sapiente aliquid id eius tempora. Alias aperiam reprehenderit vero est. Et amet aut eos aut doloremque ut nemo placeat. Est omnis occaecati eveniet qui veritatis.', '1990-01-20 07:31:00'),
(88, 7, 8, 'Perspiciatis et at et sunt nihil unde rerum. Fugit reiciendis quis voluptatem rem. Eos aut laboriosam molestiae assumenda. Veniam quo est corrupti optio. Aut qui cum soluta nesciunt voluptatem.', '1984-11-20 19:56:24'),
(89, 13, 3, 'Rerum non fuga quis et et assumenda. Sit quos sit non ullam fugit sed. Excepturi qui totam et doloribus ab accusantium.', '2007-10-09 16:23:23'),
(90, 17, 13, 'Odio quia aperiam quisquam quos. In repudiandae rerum eligendi reprehenderit ea consequatur atque. Deleniti culpa non rem et magnam fuga rerum. Sunt eos nemo suscipit eos est iure enim vero.', '2002-06-14 09:04:19'),
(91, 15, 9, 'Consequatur voluptates pariatur quia similique quisquam consequuntur iusto. Temporibus nostrum asperiores dolorum sapiente vel nulla. Voluptatem nesciunt aut officia ab optio ducimus est.', '1977-02-24 13:51:44'),
(92, 9, 12, 'Explicabo sequi et et aspernatur porro nemo numquam sequi. Error odio suscipit enim doloribus impedit mollitia adipisci. Modi consequatur est ex eum enim. Et repellendus ratione culpa officia eum qui aliquam.', '2021-04-13 15:48:30'),
(93, 15, 4, 'Quas magnam assumenda et deserunt. Possimus quia dolore explicabo error molestiae. Aut hic illo qui delectus cupiditate.', '2016-07-18 00:45:21'),
(94, 11, 11, 'Sint culpa dolorem fugit doloremque aspernatur. Quam et ea labore nobis et iure dolores. Pariatur qui voluptas perferendis similique eos. Voluptatibus enim impedit minima.', '1977-08-04 18:03:54'),
(95, 13, 12, 'Excepturi ut officia sapiente consequuntur nesciunt odit perferendis. Est assumenda aspernatur eaque. Et illum corrupti rem eius.', '2003-09-21 18:15:41'),
(96, 18, 6, 'Possimus quis minus rerum officiis doloremque est corporis. Et cumque ut voluptas veniam distinctio in. Quae a mollitia ut commodi. Et neque suscipit delectus facilis excepturi.', '1979-04-06 07:16:57'),
(97, 5, 7, 'Voluptates voluptatem debitis a. Sed ea eveniet laborum voluptas rerum. Atque ipsum modi esse placeat fuga et iusto. Consectetur deleniti placeat porro. Eius quasi occaecati officia officia.', '1998-11-30 21:16:15'),
(98, 7, 8, 'Dolorum beatae rem dolores magnam iusto. Aliquam laboriosam possimus est deserunt nihil tempora. Corrupti magni rerum quis ut et omnis amet. Sapiente beatae hic itaque quis laudantium laborum.', '1975-09-03 02:31:46'),
(99, 12, 12, 'Quo consequuntur molestiae asperiores mollitia repellendus aperiam rem. Sint et labore dolores ducimus. Atque eaque qui vel provident. Amet a non enim eos quia eius.', '1976-03-18 23:08:13'),
(100, 5, 11, 'Ut aut debitis aut dolorum cum et sit. Et dolorum ullam quasi facilis. Beatae sed id cumque eligendi quis numquam. Et autem animi molestias sed est.', '2006-10-11 00:18:59');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230807070554', '2023-08-07 09:06:33', 95),
('DoctrineMigrations\\Version20230807070607', '2023-08-07 09:06:33', 0);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `job` varchar(100) DEFAULT NULL,
  `bio` longtext DEFAULT NULL,
  `created_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `birthday` date DEFAULT NULL,
  `avatar_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `username`, `job`, `bio`, `created_at`, `birthday`, `avatar_link`) VALUES
(2, 'admin@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$RfxyCi1vGhHG4nyfRT3OhucVt0Fiut1hIEXZfZFgcIAu8epAmJgP.', 'Admin', NULL, NULL, '2023-08-07 09:08:59', NULL, '/uploads/avatars/default_avatar.webp'),
(3, 'editor@gmail.com', '[\"ROLE_EDITOR\"]', '$2y$13$ikxAnaaTiP0EXNICLFrEpekkcdYixjyPI6f0C8b1D1UaWB9pZl.9y', 'Editor', NULL, NULL, '2023-08-07 09:08:59', NULL, '/uploads/avatars/default_avatar.webp'),
(4, 'JavaScript_Savior30@hotmail.com', '[]', '$2y$13$v60RRHqWaIgieejCOjYSgurfcWGCBHzRaolHEGtG98lv8T0u6I2D2', 'JavaScript_Savior30', NULL, NULL, '2023-08-07 09:08:59', NULL, '/uploads/avatars/default_avatar.webp'),
(5, 'Not_A_Number35@gmail.com', '[]', '$2y$13$we.lhmnpUBS0bSynpr5fAOGbH/AQDpAnABBkqb8rn7sOpkg.07vbC', 'Not_A_Number35', NULL, NULL, '2023-08-07 09:09:00', NULL, '/uploads/avatars/default_avatar.webp'),
(6, 'John_Doe398@yahoo.com', '[]', '$2y$13$yH10MXyV6TZQIF.W2MCHMu.t9sm8q7H7l45zBcY3XcXmxLYfJWLde', 'John_Doe398', NULL, NULL, '2023-08-07 09:09:00', NULL, '/uploads/avatars/default_avatar.webp'),
(7, 'Monthy_Python419@gmail.com', '[]', '$2y$13$TCEUAk3WINuP.bCofsOy4OIVEfeatvEhW7LTBmO6LZG.4jyR/vvWe', 'Monthy_Python419', NULL, NULL, '2023-08-07 09:09:01', NULL, '/uploads/avatars/default_avatar.webp'),
(8, 'Kira_Yoshikage482@yahoo.com', '[]', '$2y$13$SXSvUqkF1yUFOIgN5tPH2OlqVRM//6LcDq0Eb3.X2retujglwV.Iq', 'Kira_Yoshikage482', NULL, NULL, '2023-08-07 09:09:01', NULL, '/uploads/avatars/default_avatar.webp'),
(9, 'Extreme_React221@hotmail.com', '[]', '$2y$13$57El6XC71nP9/ooTXOYu2OhoYzRCdxQiV3F58kOWYRHr1DN/QtiIq', 'Extreme_React221', NULL, NULL, '2023-08-07 09:09:01', NULL, '/uploads/avatars/default_avatar.webp'),
(10, 'Echo410@yahoo.com', '[]', '$2y$13$EM11.8W1sWy6KnDkwtVK/OtMGxWtRyddl/wEIYjB5ASZYd5Lo3RdK', 'Echo410', NULL, NULL, '2023-08-07 09:09:02', NULL, '/uploads/avatars/default_avatar.webp'),
(11, 'John_Doe56@gmail.com', '[]', '$2y$13$2jsIwKtRYmRLWjVGG/UhCe.ne.PbDpO9nCsHoUbpaqD3/f0Sbi9Hm', 'John_Doe56', NULL, NULL, '2023-08-07 09:09:02', NULL, '/uploads/avatars/default_avatar.webp'),
(12, 'Not_A_Number499@yahoo.com', '[]', '$2y$13$1tN70J/59/bc84nSlT0usONbKfnlCBbqDO5M4.F/HlIfrwJMcxS4e', 'Not_A_Number499', NULL, NULL, '2023-08-07 09:09:02', NULL, '/uploads/avatars/default_avatar.webp'),
(13, 'Totally_a_real_person120@gmail.com', '[]', '$2y$13$ABxnReqNWlnXDNEEufHrMueX//zjQV1Xp/JZH6tTd14lS2VjOViyC', 'Totally_a_real_person120', NULL, NULL, '2023-08-07 09:09:03', NULL, '/uploads/avatars/default_avatar.webp');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_23A0E66F675F31B` (`author_id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category_article`
--
ALTER TABLE `category_article`
  ADD PRIMARY KEY (`category_id`,`article_id`),
  ADD KEY `IDX_C5E24E1812469DE2` (`category_id`),
  ADD KEY `IDX_C5E24E187294869C` (`article_id`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9474526C7294869C` (`article_id`),
  ADD KEY `IDX_9474526CF675F31B` (`author_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E66F675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `category_article`
--
ALTER TABLE `category_article`
  ADD CONSTRAINT `FK_C5E24E1812469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C5E24E187294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `FK_9474526CF675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
