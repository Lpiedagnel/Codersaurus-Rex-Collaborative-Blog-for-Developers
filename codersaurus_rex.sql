-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 09 août 2023 à 12:36
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
(41, 78, 'L\'avenir du développement Web : explorer les technologies émergentes', 'Commodi sunt saepe maiores ipsum aut cupiditate odio. Aut accusamus excepturi impedit et magnam. Dolores molestiae eius assumenda. Et inventore deserunt molestias est quos sequi. Quia et eligendi quod. Et iste similique quibusdam id. Consequuntur facere natus vitae dolorem nihil voluptate hic. Ullam rem itaque sequi nesciunt minus. Aut magni totam architecto praesentium. Ut inventore harum officiis rerum qui. Repellat explicabo ut ut recusandae et. Dolorem id ut sit qui corporis dolorem distinctio quo. Enim natus sapiente molestiae quod fugit ullam et. Dolorem cum blanditiis omnis eius. Et magnam pariatur voluptates cumque aperiam. Labore dignissimos nam est eos quo sed molestiae adipisci. Temporibus iure dolor aut nihil odit eos. Neque sunt nemo quod id quisquam dolor. Qui deserunt illum dignissimos eum et cupiditate. Cumque nihil doloribus voluptas reiciendis voluptas optio a. Accusantium distinctio nihil ducimus officia ut. Voluptatibus qui debitis aperiam iste. Officia distinctio laborum vel illum cumque temporibus. Itaque asperiores vitae architecto enim. Velit recusandae dolorem ipsa sit quis. Vero quisquam cumque aut eveniet. Nulla repellat in et nulla quia repudiandae sapiente eum. Accusantium consequatur tempora et exercitationem pariatur rerum maiores. Porro harum facilis temporibus voluptate dolorum recusandae amet aut. Ullam consequatur magni et minus voluptatum sed. Voluptatem et minus quod. Ducimus eaque aut eveniet possimus sapiente inventore. Optio consectetur rerum quod error dolorem quis. Numquam quo ut esse. Voluptatem omnis reprehenderit accusantium eveniet eveniet eum. Enim tempora dolorem ipsam qui. Consequatur consequatur accusantium ad ea dolores. Iusto odio voluptas expedita officiis magnam ipsa deleniti. Commodi libero distinctio praesentium dolores. Iure facilis sit temporibus maiores aut. Sed enim labore et libero repudiandae ratione qui. A nulla aliquid fugit qui fuga. Omnis facere eligendi officiis distinctio est molestiae quia.', '2021-09-19 01:24:34', NULL, '/uploads/thumbnails/article-4.webp', 53, 'Dolores cumque dicta voluptatem. Porro in quis iure doloribus deleniti est.', 'Architecto voluptate delectus aut placeat voluptatem. Dicta eos autem quisquam quam recusandae rerum possimus. Error quidem tenetur cum nam magni. Autem amet minus ipsam quia quisquam ad et. Amet aut atque quam sed assumenda illum.', 'Consequatur autem natus libero est doloribus sequi. Est optio autem repellat et.', 'aliquam-voluptates-est-odio', 1),
(42, 85, 'Comment centrer une Div ?', 'Molestias ab est ullam quam perspiciatis. Unde beatae sint consequuntur ex nostrum. Fugit dolor et commodi dolores aliquid. Sed qui quaerat est blanditiis incidunt. Sed voluptatem totam porro nisi non perferendis. Nulla non molestiae at est reiciendis nihil quia. Aut illum non facere ut tenetur. Ullam qui debitis perferendis rerum iusto nam odit. Possimus minus consectetur saepe minus. Saepe exercitationem culpa culpa quod. Sit est expedita eligendi esse sit. Velit officiis ut quis iste voluptas illum. Culpa ea dolore vel consectetur non facere aut. Optio saepe quis ratione vel et qui sunt. Occaecati ab dolor sed tempore ut quisquam cum cum. Fuga hic nostrum occaecati. Quo recusandae qui adipisci optio quia. Blanditiis cumque ut odio et quo quia eos. Assumenda officiis qui sint maiores quia. Consequatur eius qui eos labore illo et. Nobis et et et unde sint. Porro perspiciatis accusantium nihil molestiae officia ex. Soluta expedita veritatis enim nesciunt deserunt ab est. Minima dolor autem perspiciatis expedita animi. Dolor eligendi et voluptatem sint tempora autem. Occaecati eum voluptatem rerum soluta est sunt. Blanditiis et adipisci ex repellat similique. Voluptas aliquid non et pariatur sequi dolorem labore. Et et sequi deserunt consequatur tenetur. Magni sed distinctio dolores cumque deserunt omnis. Autem ut voluptatem nihil recusandae quos sapiente. Aut qui est saepe molestiae rem quo necessitatibus. Laboriosam omnis molestiae iure dignissimos. Ea dolor et sed quod. Explicabo sunt deleniti aperiam nisi. Quo velit voluptas natus distinctio corporis rem similique quisquam. Recusandae qui iusto sit corporis ut aliquid. Odio doloribus quia ut eos qui dolores. Impedit odit quia ab vel architecto. Non voluptates aliquid voluptas nihil ipsa velit. Ducimus officiis non ullam eos nihil corrupti eum. Quas architecto sit cum dolorem dignissimos dolorum. Id earum nobis molestias. Et maxime illum mollitia perferendis sint sint.', '2022-09-27 04:53:20', NULL, '/uploads/thumbnails/article-3.webp', 970, 'Provident voluptas at tenetur dolor. Minus delectus at amet earum consequatur illo et.', 'Eligendi quam quisquam necessitatibus vitae aspernatur autem. Blanditiis suscipit nihil at perferendis beatae. Vel excepturi quod eveniet. Aut ipsam distinctio vitae delectus dicta consequatur.', 'Ratione et eligendi natus. Quos corporis aliquid non nisi ut reprehenderit ea repudiandae.', 'repellat-assumenda-dolore-rerum-saepe-velit-in-veniam', 1),
(43, 82, 'Le guide complet du SEO pour améliorer le classement de votre site sur les moteurs de recherche', 'Autem assumenda dignissimos doloremque dolorem. Assumenda suscipit iure aspernatur ratione quae deserunt. Quo delectus est vel explicabo sunt doloremque qui consequuntur. Vitae aut dolorum amet ipsam illum officiis et. Ea dolorem id atque omnis aperiam delectus. Iusto architecto sed et natus voluptatem. Velit qui odio cum aperiam ducimus molestiae. Ex facilis ea necessitatibus impedit qui sint minus. Dolorem quo ea nostrum mollitia omnis suscipit. Ipsam dicta asperiores in blanditiis eum reiciendis voluptatem cumque. Mollitia dolores sit vel sint architecto. Reprehenderit laboriosam repudiandae voluptas aliquam iusto et nulla. Est blanditiis eos voluptatem quia aspernatur modi. Sit magni cupiditate repellat aut voluptate minus et est. Iste consequatur corrupti reprehenderit aperiam velit porro. Eaque asperiores culpa accusamus et. Aliquam nam architecto maxime doloribus. Quas laudantium consequatur maxime autem aut animi sed. Et quis eius autem. Voluptatum dolorem quisquam alias et consequatur. Est perferendis harum exercitationem dolorem fugit qui iusto et. Illo numquam qui sapiente debitis. Vel eum aperiam quia in in aliquid. Sequi quidem alias omnis est velit cum officiis. Et ipsa nihil totam repellendus perspiciatis esse. Sequi et architecto odit quasi. Officiis voluptas impedit delectus consequatur quasi. Nemo quo eligendi aut dolorum cupiditate aut nulla. Quis odit id et quia. Quos eaque amet sint. Laboriosam nisi voluptatibus qui et vel. Asperiores pariatur necessitatibus quia illum sed perspiciatis. Omnis a rem sint et minima id nulla doloribus. Enim omnis quos aliquam quas sint nesciunt ut. At nobis vero quae. Ut voluptatibus odit eum eius recusandae dolores. Nam natus vitae vel ipsa minima. Maxime qui pariatur dolores quos ea dolorem veritatis quibusdam. Maiores eaque sunt deserunt consectetur. Et quisquam modi aut itaque. Exercitationem qui et eligendi est rerum odio possimus.', '2022-03-10 17:20:42', NULL, '/uploads/thumbnails/article-4.webp', 150, 'Delectus nisi hic omnis a. Dolorem quo alias minus nam et. Nihil aperiam et ut natus.', 'Consequuntur est sunt voluptatem. Impedit iure officiis omnis. Eligendi delectus dolorem sit doloribus. Mollitia excepturi et rerum qui quidem.', 'Totam autem vero dolorem est enim eaque. Enim voluptates id reiciendis qui sunt rerum voluptatem.', 'tempora-inventore-quia-est-voluptas-nobis-quo-porro-qui', 1),
(44, 77, 'Comment centrer une Div ?', 'Et laudantium numquam nihil consectetur quas rerum dicta perferendis. Quae non aspernatur officia animi dolores unde velit ut. Quia qui ullam impedit et. Non fugiat et porro blanditiis saepe praesentium. Eius quidem nisi provident iure repellat exercitationem sequi. Dolor voluptas eos incidunt ipsam atque vero. Quis adipisci vel voluptatem molestias totam excepturi dolorem. Dignissimos sint modi optio earum ex ut. In voluptatem voluptatibus accusamus tenetur delectus. Similique accusantium impedit accusantium eum neque at numquam dicta. Eos a deserunt impedit consequatur. Provident odio voluptatibus aperiam ex. Recusandae doloremque numquam a praesentium impedit deleniti nemo soluta. Voluptates et accusantium impedit vitae sunt facilis. Totam aliquid omnis dolores sit nam. Consequatur harum ullam porro exercitationem dicta. Cumque maxime et non at sequi minima. Impedit fugiat veritatis est nostrum quae quia. Distinctio iste nemo exercitationem libero. Aperiam ea et modi nostrum eos provident. Repellat est voluptatibus minus nihil sunt. Quisquam quo est at ad dolor doloribus. Magnam et molestiae autem accusantium. Voluptatem quidem dolores vero dignissimos hic impedit deleniti. Reprehenderit harum quo aperiam alias quam aut ducimus. In blanditiis voluptas quo et voluptatem sed. At aut tempora laboriosam sunt omnis. Velit sunt libero nam omnis dicta quasi et. Maxime eius magnam est adipisci et. Placeat est sint autem iure. Quidem autem molestiae dolorem natus qui delectus. Non provident voluptatem rerum quam voluptatibus. Deserunt nulla ipsam quod maxime. Eveniet voluptate repellendus doloribus. Esse est exercitationem molestiae ea. Adipisci autem at qui expedita voluptatem. Magni sunt veritatis rerum reprehenderit consectetur sunt et. Quia eaque provident voluptatem rerum velit consequatur. Ut in aliquam provident maxime nobis odit. Aut sed reprehenderit quae possimus vel ipsam. Voluptas adipisci fuga explicabo qui ab.', '2023-01-19 11:33:43', NULL, '/uploads/thumbnails/article-4.webp', 236, 'Quos similique adipisci voluptas aliquid. Repudiandae quo perferendis eaque quasi pariatur fugit.', 'Mollitia est neque aut pariatur cum beatae. Quos quae sed et et nisi laudantium est. Earum voluptatem autem assumenda minima rerum vitae.', 'Alias fuga et sed consequuntur. Numquam consectetur beatae vel iste.', 'ab-natus-culpa-sunt-voluptatum-error', 1),
(45, 83, 'Les secrets du CSS Grid pour créer des mises en page complexes', 'Asperiores nam quas consequatur ducimus. Minima et nobis ab quia perferendis. Quisquam ipsam quis corrupti quos sunt nulla. Omnis sint fuga repellat officiis qui. Et reiciendis tenetur dolores dicta rerum dolorem esse. Quisquam quo qui aut nulla omnis recusandae ad. Eos tempora alias ab laudantium dolorem a dicta. Id non qui quia animi explicabo et est. Iusto voluptatem dolorum et similique nisi maiores. Itaque suscipit voluptatem est sequi fugiat voluptas est. Est et minima nostrum molestiae dolor debitis iste voluptas. Totam sit nulla aperiam sit odio. Autem ea non autem enim et. Placeat rerum consequatur commodi saepe laboriosam optio deleniti. Ipsum possimus consequatur in aut qui sint. Sapiente sunt beatae sed blanditiis. Vitae harum neque delectus rerum eos voluptatem quia. Nihil nulla odio iusto est qui nesciunt et voluptatem. Sunt dolor ut quae officia saepe quia consequatur ut. Ut rerum sequi voluptas reiciendis saepe distinctio et. Est sunt suscipit sint ut. Qui non placeat quaerat at. Recusandae consequuntur architecto voluptatibus placeat eos. Aut praesentium magnam nisi adipisci. Nihil ab aut consequuntur sint est perspiciatis fugit sint. Consequuntur itaque natus consequuntur excepturi veritatis consequatur earum. Est id velit qui qui eius voluptatem. Delectus nobis eveniet non officiis. Velit similique vitae rerum odit. Impedit quia perspiciatis saepe sunt. Culpa atque est accusamus inventore. Aut et minus aut provident temporibus soluta cupiditate. Et et quia sunt distinctio quam amet numquam. Et officiis amet occaecati accusamus sunt numquam illo. Delectus molestiae accusantium sequi quasi illum omnis praesentium. Pariatur nostrum rerum consectetur autem molestiae repudiandae. Id deserunt nulla quia minus alias. Rerum magni quaerat quod adipisci et expedita vel deserunt. Sit ut et temporibus quos quisquam. Natus dolorum atque suscipit id architecto. Ut rerum minima blanditiis beatae velit. Quos quia ut et asperiores beatae ipsam unde.', '2022-08-12 05:38:55', NULL, '/uploads/thumbnails/article-1.webp', 608, 'Est odio quia eum rem. Ut porro natus quae ab rerum nam exercitationem.', 'Aspernatur beatae laudantium saepe maxime dicta minus. Fugiat sit ipsum ea nemo dolores accusamus. Voluptatem et nemo nesciunt sit aperiam explicabo.', 'Nulla consequatur mollitia dolor enim. Iusto et dolorem omnis voluptatem suscipit.', 'tempora-excepturi-vel-fugit-esse-qui-sequi-id-aperiam', 1),
(46, 74, 'Faut-il se réorienter en Dev Web ?', 'Blanditiis quis ullam fugit laudantium aut molestiae quam. Quae voluptates dicta autem accusamus veniam. Aut omnis ut eos aut voluptate qui. Ut eos fuga ut. Repudiandae cupiditate vero autem corrupti nesciunt nemo non. Ut porro sit non vel omnis. Aspernatur earum fugit enim nihil. Sapiente possimus placeat est nemo. Quia iure dolor tenetur earum magnam omnis. Dolores molestiae est esse aperiam quam et et. Distinctio sequi fugiat vitae suscipit beatae iste aut qui. Dolor nihil quisquam nemo impedit maxime enim enim. Dolorum voluptas perspiciatis magnam voluptas. Suscipit magni molestiae possimus voluptas vel dolore reiciendis. Molestiae rerum incidunt ratione molestiae fugiat voluptatem. Ut dicta est omnis perferendis aspernatur. Omnis rerum delectus ut enim consequatur quos id perspiciatis. Dolorum beatae voluptatibus nesciunt dolorem quasi. Sed beatae maxime sapiente officia illo. Deserunt corporis expedita exercitationem corrupti amet ducimus. Error qui consequatur est repudiandae qui sunt aliquam. Vero quibusdam deserunt sequi ut. Minus nobis blanditiis tempore aut rem. Nostrum neque eius quo odio. Neque nemo explicabo est voluptatem similique id minima. Mollitia qui nostrum harum praesentium distinctio aut est. Occaecati illo reprehenderit voluptates officia qui. Quos iure quaerat laboriosam et. Delectus iusto nulla eum numquam est perferendis. Voluptatem ut laudantium laudantium aut reiciendis. Officia assumenda quia asperiores beatae. Quis saepe mollitia molestiae et. Dolore unde et quos consequatur omnis vitae numquam. Est ipsa ut est placeat dicta eum aperiam. Nihil totam repudiandae id praesentium. Ullam ut molestias dolor qui. Voluptatibus molestias omnis voluptatem qui aut velit. Tenetur rerum tempora ut vitae. Corrupti recusandae dignissimos itaque voluptatem blanditiis placeat eos.', '2022-08-13 14:05:39', NULL, '/uploads/thumbnails/article-1.webp', 503, 'Expedita voluptatem rerum ut quis ut vel omnis. Itaque accusantium et velit aliquid.', 'Qui et nemo unde tempora. Aut repudiandae nam molestiae sapiente exercitationem minus.', 'In fugit consequuntur ex repudiandae dolores. Recusandae dolorem nam iste a.', 'id-maiores-consequatur-adipisci-quo', 1),
(47, 78, 'Introduction à PHP : le langage de programmation côté serveur incontournable', 'Ratione quo tenetur voluptatem qui exercitationem aut. Voluptas numquam blanditiis recusandae. Est distinctio veritatis commodi tenetur delectus. Numquam cumque excepturi officia iure provident. Nemo nulla cupiditate accusantium aut perspiciatis explicabo. Laudantium nulla saepe et. Repellat consequatur omnis tempore error dolorum. Debitis et quidem sit debitis itaque numquam sed. Laborum vel dolorem quae quia occaecati esse. Quod tenetur at reiciendis id quis dolores ea. Sit nobis aut consectetur ea odio provident qui maxime. Impedit non et ratione dolor. Doloremque possimus qui nihil id. Aut quis consectetur fugiat harum ea aliquid reprehenderit. Reiciendis sed quia placeat tempora accusamus quis. Est quaerat occaecati hic alias necessitatibus. Eveniet occaecati aut sed vel minima sunt fugit. Amet nemo expedita omnis fuga ut voluptates. Totam sed ducimus est non iusto enim quo dolorem. Minus sit dolorum ut excepturi officiis odit. Sit vitae ut ad magnam voluptatem qui. Omnis cupiditate corrupti magni vitae eos consequatur et ut. Quos sed qui vel occaecati optio recusandae. Pariatur possimus maiores aut omnis eius. Laudantium sint sequi ullam dicta accusantium incidunt nemo. Voluptatem consectetur consequuntur mollitia quaerat at at voluptatum facere. Ut voluptatem accusantium voluptates praesentium in est vero. Consequatur dolores asperiores in repellendus. Inventore autem aut aut sapiente soluta et quidem magni. Sapiente quis et reiciendis eaque ad pariatur pariatur numquam. Nisi dolores libero voluptatem praesentium. Quae eaque voluptatem harum molestiae voluptatem. Deserunt recusandae autem et dolorem. Voluptatibus iure eaque ratione adipisci enim aut. Eius vel nemo aspernatur enim. Dolorem repellat beatae error explicabo eum. Alias deserunt sint aut est ipsa praesentium. Pariatur quasi atque doloremque omnis. Odit qui accusantium similique doloribus delectus aliquid soluta.', '2022-12-04 14:34:46', NULL, '/uploads/thumbnails/article-3.webp', 339, 'Beatae velit quidem saepe. Quia itaque animi vero. Cupiditate quis ut iste.', 'Sunt recusandae quo sequi et est asperiores. Ut labore velit aliquid voluptatum fuga ut. Sint aut sed iste voluptate esse. Est exercitationem illum incidunt fugit error. Iusto minima eaque voluptatem et illo earum quas.', 'Nihil dolorem molestiae inventore vel id. Fugit eum consectetur enim. Ut necessitatibus et sit non.', 'officiis-assumenda-consequatur-ipsa-voluptatem-magni-veniam-at', 1),
(48, 85, 'S\'empaler avec Drupal', 'Optio deserunt quasi voluptas a ea autem sunt. Quae enim facere facere placeat voluptatem omnis. Nihil vel aspernatur sapiente at. Sed quasi quis quam esse fuga totam. Quis voluptas dolor tenetur distinctio ut pariatur nihil esse. Magni modi in similique libero. Ea ullam ut in distinctio ratione dolore. Quaerat sed optio nesciunt rerum excepturi delectus. Unde rem aut exercitationem eos minus quod cupiditate. Et pariatur corrupti est id. Dolores aut pariatur odit. In dolore qui quisquam eaque consequatur. Quo ut ex dicta nulla pariatur saepe facere. Eum sed eum provident repellendus quos quo ipsam. Doloribus et omnis ut consequuntur. Qui maxime rerum possimus quidem illum aliquid ipsam. Voluptas et quaerat provident eveniet. Maxime qui et iusto eius quae. Distinctio molestiae quasi aut. Aliquam quasi rerum voluptatem omnis dignissimos veritatis dicta. Rem voluptas dolorem qui ut praesentium quia deleniti ea. Quo sunt dignissimos beatae at reiciendis qui. Hic aliquam debitis sunt et ad. Quasi placeat quidem quae optio quas consectetur. Nulla sequi facere qui neque. Blanditiis aut tempore laboriosam accusantium aut tenetur. Deleniti et deserunt assumenda et praesentium et. Omnis accusamus voluptatum et qui. Expedita sit molestiae fuga nisi a ducimus adipisci. Rerum sint vel dolorem dignissimos architecto. Neque porro ipsa natus sint sed voluptas. Explicabo et blanditiis vero sunt voluptatem ipsa. Rerum expedita numquam eaque non et. Provident qui aspernatur quia dolorem quisquam. Quos expedita suscipit maiores consectetur repellat eius tempora cumque. Quia et qui voluptate expedita excepturi omnis placeat. Quas ut esse impedit eum. Corrupti voluptates debitis sunt autem amet voluptate autem dicta. Sint iste eos natus sit ducimus et qui exercitationem. Omnis et hic itaque est est dolorum.', '2023-04-03 04:11:26', NULL, '/uploads/thumbnails/article-3.webp', 688, 'Fugit sed aperiam ex aliquam et ipsam dolores. Ullam consequatur assumenda deserunt molestiae ea.', 'Soluta qui labore quaerat molestiae tenetur eligendi modi. Totam accusantium alias qui tenetur ipsum. Esse nam laudantium veniam aut. Omnis quibusdam reprehenderit adipisci quia ipsa suscipit perferendis. Laborum est voluptas ea aut corrupti.', 'Est ut non similique eveniet. Quia nesciunt qui atque tempore. Voluptates iste qui rerum et ut.', 'distinctio-nemo-debitis-est-officia-maiores-commodi-accusamus', 1),
(49, 76, 'Les meilleures bibliothèques JavaScript pour simplifier votre développement Web', 'Eius sint eos pariatur alias ducimus pariatur et. Et velit sunt odit dolore et repellat. Fugit iste mollitia in beatae nihil modi molestiae. Voluptas quidem ut temporibus repellat porro a necessitatibus rerum. Recusandae et quo dolores aperiam. Rerum accusamus eligendi laboriosam qui. Fuga expedita quasi repellendus rerum quia sed repellat. Nobis sed odit aliquam nihil ipsam deleniti tempore. Non veritatis ipsam voluptatum quo. Consequatur vero aut sit illo itaque inventore et. Non magnam inventore iste necessitatibus at molestiae magni. Qui sed fuga magni corporis quae vero illum at. Autem aliquid rem totam quia earum. Iure similique rerum eum asperiores. Distinctio distinctio aliquam perferendis ducimus. Dolore earum unde perspiciatis laudantium est explicabo omnis. Adipisci provident nam delectus ut sequi voluptates est. A cum commodi est praesentium eligendi dignissimos doloremque. Fuga occaecati est voluptas provident. Cumque corporis eos ipsa recusandae. Sint maxime dolorem mollitia voluptatem rerum dolorem. Delectus possimus et mollitia et quod. Quae ex eum aut excepturi harum eos doloremque velit. Quis aut sed ut dolore voluptate itaque eveniet. Optio ad saepe iure quia. Quaerat illo quasi earum aut cum. Nemo eveniet iste soluta dicta quia. Culpa neque sapiente explicabo debitis. Autem minus quasi repellat consequatur et dolores. Accusantium aut dolorem atque explicabo vitae voluptas quo. Libero harum enim expedita consequatur doloremque. Itaque laborum rerum qui occaecati ea. Veritatis impedit doloremque nihil sapiente aut maiores accusamus aut. Libero ut fugit aut. Mollitia sapiente quibusdam excepturi dolorem. Et hic eaque natus earum delectus quos autem est. Saepe ut hic est voluptas ex. Voluptas molestiae ipsum atque repellendus nulla qui cumque. Incidunt inventore aut aliquam explicabo consequatur necessitatibus. Sint autem consequatur optio dolores aliquid est.', '2023-06-18 10:15:46', NULL, '/uploads/thumbnails/article-4.webp', 727, 'Et perferendis fuga veniam dicta perferendis. Rerum eum autem qui qui.', 'Et possimus sunt incidunt voluptatem expedita rerum eos. Velit officia nam consequatur ut deserunt distinctio. Quia totam eum sed fugit nihil itaque. Veniam debitis quia fugiat id esse possimus.', 'Et illo sit harum. Corrupti libero quia quia magni deleniti. Quod aut rerum voluptatum tempore.', 'placeat-ex-quaerat-quaerat-atque', 1),
(50, 78, 'WordPress est-il utile en 2023 ?', 'Aut magni id blanditiis necessitatibus animi esse ut. Qui sit nobis magni earum et nam aut. Illo sint delectus numquam exercitationem quisquam. Voluptatem eligendi magni soluta facere laborum. Nulla id odio earum nesciunt ipsum voluptatem inventore temporibus. Dolore facere eum quidem et ut ut. Nesciunt repellat eligendi magnam doloremque unde id deleniti. Minima ullam aut eum accusantium aliquid aut qui. Sint et a fugiat numquam provident vel aut. Minima sunt quo illum quo. Odio corporis provident et totam maxime. Recusandae vel reprehenderit aut. Cumque tempore cum eum voluptatibus. Voluptas omnis repellendus tempore dolorem ut eum doloremque. Veniam quod iusto mollitia. Suscipit unde modi impedit repellendus ut et. Deleniti totam ullam quia quis nam dolor et fugiat. Facere expedita sit aperiam corporis consequatur voluptatem omnis. Consequatur modi modi nesciunt molestiae dolores sunt odio. Assumenda enim maxime quidem deleniti. Enim enim quos odio rerum est ullam ipsam. Voluptate at ex non non molestiae beatae. Voluptatibus et in modi nulla sed et nostrum. Ut libero culpa nihil. Vel iusto rerum est ex ducimus. Dolorem atque repellat dolores mollitia perferendis consequuntur ex quia. Modi perferendis eos possimus natus occaecati. Officiis dolorum quia rerum doloremque voluptatum. Et ipsum voluptatum sunt. Deserunt corrupti officia fuga. Odio est alias quae qui voluptas. Quo et qui eligendi. Et numquam architecto est ullam dignissimos voluptatum. Quibusdam et blanditiis nam officia consequatur omnis. Doloribus hic labore praesentium in quod quia. Nemo modi dolore est aliquid eos optio. Velit cum ex similique et. Dolores libero vitae voluptatibus et autem aut. Sunt ipsam eligendi quasi dicta magnam ratione. Et porro quia voluptatem omnis aut voluptatum. Amet explicabo dolor sequi animi ab est. Natus odit facilis itaque commodi non nam rerum.', '2021-11-18 04:58:14', NULL, '/uploads/thumbnails/article-4.webp', 157, 'Enim ducimus qui aut dolores est accusamus. Neque quidem ullam quia ullam sit fugiat consequatur.', 'Cupiditate maxime rem laborum ut. Aut aliquam in nam nihil perferendis aut quo. Itaque illo et voluptatum sequi.', 'Ea consequuntur eum libero. Debitis sed porro in.', 'ducimus-dolores-tenetur-quaerat-ea', 1),
(51, 78, 'Comment centrer une Div ?', 'Quidem beatae dolorum aut similique neque. Corporis non exercitationem corrupti reiciendis. Minima velit magnam quia fuga aut id et. Culpa inventore quia adipisci. Minus voluptatem accusantium recusandae nobis eos. Quam culpa sint quis. Animi est voluptatem sit non ea. Id at sequi ipsum sint ullam. Sit labore explicabo voluptatum quis in necessitatibus dolor. Eius dolor nobis sunt officia ut voluptatem ullam. Quam cum dolorem laudantium eveniet totam aspernatur. Quasi omnis nihil molestiae perspiciatis. Sint odio impedit voluptatem in doloremque rem saepe. Sed delectus repellendus eius commodi. Tenetur similique delectus perferendis sed voluptatibus quia inventore. Placeat nulla iure sit veritatis. Dolorum voluptate repudiandae molestias neque autem enim. Qui numquam velit in omnis facere. Aperiam quidem aperiam magni dolore. Natus eligendi similique esse distinctio sapiente laborum. Fuga aperiam atque magnam. Sapiente explicabo doloremque accusamus voluptatem eum. Non iure vel voluptatibus molestias dignissimos aperiam corrupti. Error veniam quas ratione dicta possimus ut voluptatem eum. Soluta reprehenderit error atque officiis. Doloribus perspiciatis totam consequatur quidem aut. Dolorem earum adipisci autem occaecati ratione soluta explicabo. Libero ea in et repellat. Hic fugit quo exercitationem id eos culpa. Sit voluptatem fugiat reprehenderit voluptatum assumenda. Non rem nostrum pariatur nesciunt. In at est amet eius fugit et deserunt nemo. Hic quidem quasi consequuntur magni inventore impedit enim. Nulla perferendis doloremque debitis et doloribus quia est. Velit ad voluptatum voluptas aliquam inventore iusto. Perferendis at ut maiores eveniet tenetur. Qui provident laboriosam nesciunt saepe quas cumque harum. Id placeat maxime vero quas ut recusandae. Vel veritatis dolores nisi dolorum quam illum doloremque nisi. Iste dolore maiores ipsam placeat laboriosam qui eum. Qui molestias ea aut est. Harum praesentium et aliquid.', '2022-09-04 18:25:33', NULL, '/uploads/thumbnails/article-1.webp', 51, 'Hic earum placeat nulla ut. In perferendis tempore ullam dicta id.', 'Maxime ut qui rerum impedit eos maxime possimus. Optio excepturi nobis qui debitis. Vitae et ut qui quis. Id laboriosam est qui iure quis. Adipisci dolorem eos voluptates placeat error.', 'Adipisci quis nam expedita. Eos recusandae voluptatem nesciunt autem. Suscipit et sit sunt tenetur.', 'debitis-ratione-voluptatem-dicta-exercitationem-assumenda', 1),
(52, 78, 'Les meilleures bibliothèques JavaScript pour simplifier votre développement Web', 'Molestias quibusdam nihil enim non beatae occaecati. Totam est voluptas eos cum alias architecto. Perspiciatis distinctio possimus facilis. Vitae quos cupiditate asperiores repellendus molestiae. Sed consectetur culpa dolores quia. Voluptates blanditiis aut repellendus rerum natus labore. Qui non omnis debitis voluptatum minima blanditiis aut vel. Aut voluptate omnis nesciunt provident et. Ea ratione aut dignissimos error ducimus eum. Sunt quas autem doloremque quas quos. Et aut ex ipsum et quaerat quidem. Ut ea ut eaque culpa. Consequuntur assumenda vel est dolor voluptate. Vitae quisquam ea qui ipsam. Sit est autem quia saepe. Repellendus est impedit velit qui. Est dolores et odio debitis repellat error in fugiat. Nobis distinctio repellendus et eos voluptatem vel. Corrupti in minima enim amet. Fuga ut veritatis id maiores eos non rerum. Consequatur vero laboriosam cumque consequatur aut dolor quaerat occaecati. Quia voluptates dolores quo vel. Non voluptatem aperiam et dolores eos dolorem. Numquam neque saepe et possimus amet repellat ut. Asperiores maiores delectus aut optio modi qui amet. Atque aut voluptate qui et. Sed et quam sint et corporis. Nostrum hic cupiditate voluptatem expedita. Id perferendis velit ut quaerat maiores ut delectus. Illo laboriosam cumque nihil. Exercitationem id iste consequatur illo illo quia architecto. Iure deleniti incidunt qui labore eveniet a. Perferendis quia aut adipisci reiciendis molestias culpa. Quia eaque amet ab voluptas voluptate deserunt. Accusantium exercitationem sunt quibusdam esse et cum dicta omnis. Nam itaque qui id laborum vel dolorum. Iure aspernatur non facere ex autem est. Temporibus qui asperiores voluptas non ea. Voluptatem non excepturi sed impedit et. Expedita architecto rerum et perspiciatis vero. Corporis qui quasi non reiciendis. Facilis incidunt rerum voluptas aut tempore exercitationem. Aut assumenda ex dolores excepturi. Corporis quis harum quasi soluta ullam molestias sint.', '2023-03-30 15:36:12', NULL, '/uploads/thumbnails/article-4.webp', 574, 'Quis quo et dolores. Vel sit ut numquam quis qui similique. Et velit animi a facilis nobis ea.', 'Magnam sint enim assumenda nobis. Fuga odio ut reiciendis nisi. Temporibus fuga corporis reprehenderit est debitis eveniet quaerat illo. Ad aperiam dignissimos et dolores.', 'Omnis autem dolorum vel blanditiis est autem explicabo voluptatem. Nisi aut aut sunt vel.', 'a-facilis-et-aut-eum-rem-enim-sint', 1),
(53, 76, 'Faut-il se réorienter en Dev Web ?', 'Magnam quaerat ea cupiditate ea cum unde at. Quod et doloribus nostrum omnis voluptas nihil ullam quas. Enim enim dolor at sequi. Ut et maiores ad mollitia. Porro voluptas veniam delectus harum illo animi est. Quis deserunt aut aliquid eligendi quae. Veritatis quo corporis ab numquam. Blanditiis placeat rem labore nisi recusandae asperiores non. Cumque nam quo blanditiis quasi sunt sint. Sit dolorem voluptatem numquam maiores praesentium et. Est corrupti earum eos non. Unde sit molestias dolorem ab. Consequatur explicabo esse eos dolore dolores assumenda nam. Ut dolor officia ut voluptates sit tenetur voluptate suscipit. Vel doloremque voluptates voluptates sint sapiente explicabo. Ullam quod quibusdam sint. Ab omnis vel sunt. Alias autem non sunt vel recusandae enim. Numquam voluptatem nobis quia nemo voluptas deleniti ut. Praesentium culpa tenetur expedita. Blanditiis ducimus laudantium ut placeat fugit repellendus. Quisquam fuga sit dolorem quis adipisci at quaerat ut. At esse vel nemo aut et. Quis ipsa delectus dolorum voluptas. Sed saepe dolorem laudantium corrupti doloremque dolores optio. Unde quia quod et neque est. Magnam saepe aut deleniti dolores velit tenetur velit modi. Eos eum dignissimos numquam quo distinctio delectus. Quisquam voluptatum omnis amet et itaque. Rerum laborum delectus repellendus necessitatibus iure quia. Explicabo vel quam rerum provident qui dicta. Sed sit sed quam ullam reprehenderit quis alias. Qui tempore ducimus saepe suscipit eveniet eius. Eveniet et qui voluptate eos consequatur qui. Quam odio pariatur omnis molestiae. Aut ut voluptas suscipit deserunt suscipit. Soluta sapiente minus unde mollitia at doloremque. Reiciendis sunt molestiae sint voluptatem illum iusto. Qui quam consequuntur est eos. Aut est sint aut inventore officia error porro. Qui perferendis eum nemo voluptate doloribus voluptatem error. Ipsum incidunt tempora quia rerum voluptatem. Eaque molestias illum voluptatem reprehenderit et voluptatibus consequatur.', '2023-02-02 17:47:40', NULL, '/uploads/thumbnails/article-3.webp', 672, 'Eos ipsum vel dolor dolor amet et. Similique nulla vero et.', 'Magni et in sunt et et. Rem aspernatur dolorem vero sit non. Aut qui minima et facere reprehenderit et. Molestiae qui autem expedita eligendi. Commodi harum sed itaque. Quidem dolores qui voluptatem occaecati et delectus et in.', 'Dolores et laudantium sit in. Soluta corrupti fugiat saepe et. Voluptas officiis sit at.', 'numquam-et-quaerat-qui-est-quisquam-esse', 1),
(54, 76, 'Développement Web sécurisé : conseils pour protéger votre site contre les attaques', 'Quasi ducimus eaque beatae libero ea dolorum recusandae. Voluptatum similique laborum sit a. Aut odit occaecati nisi quia dolorem consequatur. Minus sit voluptatum alias et. Omnis nulla commodi qui provident laboriosam sed architecto qui. Aut et tempora eos neque cupiditate nulla qui. Sequi blanditiis et velit sed repellat laudantium. Sequi porro cum exercitationem et modi. Cupiditate sed consequatur reiciendis eaque. Et dolor molestias aliquam porro. Doloribus ab illo aut eos aut sed dolorum. Cum fuga autem deserunt repellat et optio. Illo repudiandae enim enim voluptatibus quis minus. Sint et repellat officiis dicta ad distinctio eum. Minus at quibusdam nostrum quas amet. Similique rem qui iure sit. Aut quod voluptatem dolore. Et aliquam nihil dicta optio. Deserunt quaerat rerum dolorem cumque. Dolorem provident corrupti dolor aspernatur. Ut deserunt sunt voluptatem reiciendis. Inventore eum quo ea quo commodi corporis officiis optio. Sit molestiae sit iste rerum. Ut suscipit cum quia aut fuga delectus sunt. Quam voluptas eos placeat qui consequatur similique. Nostrum nostrum maxime quasi quod. Vero vel perferendis nulla nobis fugiat similique. Dolore saepe qui qui fuga quia recusandae cumque. Velit ullam et molestiae quo aliquid. Odit ut voluptatibus deserunt ullam maxime. Quia dolorem soluta officia eos. Odio qui in qui voluptatibus ut. Deserunt officia accusamus nostrum provident facilis. Laudantium dolorem et error atque officiis hic fugit repellendus. Non voluptatem quidem quis sequi. Omnis cum est rerum corrupti laboriosam omnis. Error nostrum provident natus voluptatem sit. Doloribus beatae voluptatem et perspiciatis ipsum. Iusto consectetur nulla omnis molestiae voluptatibus tempora. Illo voluptatem non aut deserunt totam ea. Quo explicabo in fuga asperiores. Omnis vitae tenetur sunt tempore saepe. Architecto maxime et nulla aut saepe quasi. Est quod perferendis eveniet qui.', '2022-02-11 00:47:02', NULL, '/uploads/thumbnails/article-3.webp', 84, 'Ab ea omnis voluptatibus et harum. Qui in aut quia repellendus quam. Eaque repellat quae nihil et.', 'Sint veritatis veritatis atque odit perferendis autem qui. Rerum quia dicta velit quis facere. Vero sit sed quia quo possimus quia. Voluptas totam cupiditate velit et id aspernatur.', 'Nulla quam ipsum nesciunt in. Magnam rerum repellendus commodi velit quam.', 'illum-eaque-iste-nemo-error-voluptas', 1),
(55, 82, 'Introduction à Docker : facilitez le déploiement de vos applications Web', 'Quas non commodi voluptatibus enim. Ut dolorum quasi ut consequatur. Quam eum nesciunt a dignissimos quia non et omnis. Eaque ipsum fugit cupiditate commodi suscipit consequuntur. Recusandae beatae laborum sit natus iusto. A eos rerum rem hic. Sed esse optio fuga aperiam ea commodi. Et neque rerum ad eius non recusandae. Eum eum vero nihil nulla. Voluptatem voluptate consequatur magni iure sequi ratione rerum. Quia corrupti consectetur tenetur temporibus. Ut alias asperiores est dolorum ab sapiente. Esse quaerat illo nihil sapiente dolor. Voluptas eos et consequuntur reprehenderit eum. Et fugiat nemo atque tenetur atque debitis earum consequatur. Ipsum doloremque quia ipsa tenetur. Eius rerum iusto alias. Nisi sapiente harum illum magni qui qui assumenda dolores. Eveniet nemo sequi quis. Explicabo qui excepturi eius voluptatem quibusdam similique qui. Sapiente doloribus libero velit praesentium dolores autem. Omnis facere et cumque itaque unde dolorum. Fugit reprehenderit rerum quas asperiores distinctio. Quam commodi molestiae dolore ab aut. Velit delectus ducimus nemo perferendis quia architecto earum. Et voluptates illum qui qui qui mollitia. Adipisci et tempore adipisci fugit laboriosam quaerat et est. Nobis sit temporibus voluptatem perspiciatis aut dignissimos. Labore veniam vitae velit asperiores velit. Odit molestiae quis laudantium tenetur non. Expedita aut eveniet accusantium dicta optio. Sit quia doloribus perferendis sit aut nostrum dolor. Aut facilis quidem ipsum doloremque ipsum neque. Ea porro facilis qui eum. Dolorem ea magni sunt. Aut deleniti nulla sit sit qui doloremque corrupti. Esse culpa est doloremque. Voluptatem fugit illum sed rem. Blanditiis adipisci in ut facilis ex autem. Fugit voluptate suscipit nostrum quam. Sed laudantium autem molestias tenetur quia vitae dolorum laboriosam. Officia et dicta vel reiciendis et. Quidem maxime et error aut.', '2023-01-29 23:35:17', NULL, '/uploads/thumbnails/article-1.webp', 718, 'Mollitia quasi nesciunt enim qui minima sed. Ipsum et eum excepturi consequatur.', 'Doloribus magnam atque numquam dolorem est tenetur. Quos sed qui ipsa dolore accusantium soluta nihil. Laborum enim in voluptatem aliquam placeat.', 'Consequuntur quibusdam odit consequatur veritatis officiis. Velit non quisquam aut voluptas.', 'ipsum-inventore-provident-aut-fugit-illum', 1),
(56, 79, 'Faut-il se réorienter en Dev Web ?', 'Est veritatis modi consequuntur. Ipsa aperiam veniam quibusdam voluptate voluptatibus ipsum. Est sequi aut harum id. Ut rerum beatae necessitatibus voluptates eum. Occaecati praesentium unde sed dolores nisi deserunt. Consequatur eaque veniam et maxime nulla perspiciatis qui. Aliquam fuga velit dolores ut dicta deserunt eum. Dignissimos doloremque et illum magni et tempora laboriosam magni. Ut voluptas vero eos veniam. Id nam ratione molestiae. Eius quaerat alias sed hic facilis totam. Ut nihil voluptatibus distinctio doloribus ut ut assumenda sint. Officia et harum cum dolorem modi dolore exercitationem adipisci. Pariatur excepturi fugiat qui ut dolores. Aperiam sit fuga quia aut laudantium. Qui porro laboriosam possimus amet similique. Explicabo aperiam eum facilis dolor fugiat iusto dolores. Quisquam fugiat distinctio voluptatem et. Voluptatibus quia et necessitatibus ullam qui pariatur eius. Aliquam voluptatem sit cum quibusdam pariatur at ea. Alias omnis et tenetur molestiae reprehenderit aut. Nesciunt blanditiis perspiciatis sed assumenda soluta totam voluptates et. Rerum autem quam delectus quod. Fugiat quasi aut sint perspiciatis. Necessitatibus quam quia non. Qui aut est et temporibus voluptatem beatae est. Corporis sunt ut accusantium accusantium ut eos. Cupiditate illum laborum ab. Et beatae libero modi vero non. Quae itaque hic iste. Dicta tenetur et aliquid nostrum omnis ad. Magnam sed reprehenderit maxime voluptatem dignissimos. Consequuntur exercitationem totam quos sed. Est alias voluptas unde aut dolorum consequuntur nostrum vitae. Porro neque suscipit deserunt. Accusantium ratione eos rerum facilis ea. Id molestiae optio qui voluptatum vitae. Suscipit dolore accusamus et eaque. Aut nostrum et deleniti dolores. Commodi quis enim sed rerum tempora distinctio provident est. Sequi quis unde ullam esse deleniti in.', '2021-09-19 17:50:25', NULL, '/uploads/thumbnails/article-1.webp', 340, 'Veniam error eos ratione ea. Et ut minus pariatur. Ipsam ad eveniet consequatur.', 'Quidem quasi odit quaerat eos repellat. Sequi ipsa voluptatum unde et. Totam quasi et explicabo beatae voluptatem asperiores. Et cupiditate et et aut sequi eius amet.', 'Explicabo minima qui est. Odit et a qui inventore. Quo voluptatem consequatur totam autem.', 'aut-cum-eos-assumenda-omnis-eius', 1),
(57, 77, 'Introduction à PHP : le langage de programmation côté serveur incontournable', 'Iusto voluptatum unde aut dolorem ab qui. Sit et dolor soluta quisquam autem iusto in. Dolor non et iure earum deleniti aperiam voluptas. Ullam quibusdam nesciunt aut occaecati quae laboriosam magnam. Est et soluta enim veritatis est. Modi qui dicta rem quam repudiandae. Laboriosam aut vitae hic ex est velit. Harum aut rerum fuga fugiat sit. Numquam qui cupiditate qui rem autem hic. Corrupti similique explicabo tenetur dolorem natus et quas ipsam. Incidunt excepturi architecto officia quo. Quae omnis et pariatur pariatur. Minima soluta tenetur soluta aut earum nulla qui. Earum neque et ipsum ut quis. Perferendis consequatur et cumque. Quibusdam vitae quisquam at iusto. Autem animi ut libero delectus perspiciatis perferendis. Blanditiis id recusandae omnis ut aut. Excepturi itaque quia qui dolores quidem. Sit neque aliquid rerum. Dolorum et voluptatem eligendi debitis inventore illum animi cum. Voluptas provident eos quia reprehenderit. Deserunt natus et unde non. Magnam sequi accusamus et quaerat quod quo placeat. Nisi pariatur et voluptatem dolor. Sed commodi reprehenderit voluptates dolorem id ipsam. Ut impedit dolore magni vero. Soluta voluptatibus et nobis placeat sint provident. Ullam quia non ad. Modi sit deserunt magnam sapiente in sit. Voluptas iusto voluptatem ut. Quis quo inventore non et ducimus. Dolor blanditiis ut ut eum quibusdam quam. Et temporibus voluptatem et fugit ab ea consequuntur soluta. Inventore excepturi ex sint enim. Ut dicta eos impedit cum. Rem commodi eos id eius voluptatem. At eveniet iusto commodi recusandae praesentium. Est nesciunt quisquam esse animi quia enim. Exercitationem consequatur repellat necessitatibus ex odio debitis laboriosam. Exercitationem voluptatibus error fugit nesciunt. Alias recusandae autem deleniti illo iste fuga. Corporis enim distinctio ut sed deleniti ea sed. Qui et cupiditate id sit repellat et corporis.', '2022-03-21 05:47:29', NULL, '/uploads/thumbnails/article-2.webp', 548, 'Quam nisi aut neque ab assumenda iusto enim. Nisi ad excepturi dolores.', 'Aspernatur et laboriosam eum minima nemo repellat corrupti. Voluptatem suscipit consectetur neque doloribus aut quis odit. Numquam sunt est magni et voluptate. Et quo nostrum est et architecto exercitationem.', 'Facilis cum consequatur vero architecto. Enim eum dolor assumenda harum.', 'est-labore-quaerat-distinctio-aspernatur', 1),
(58, 79, 'Les bases du développement Web avec Django : un framework puissant en Python', 'Et consectetur est quibusdam illo consectetur in recusandae nam. Aliquam quasi quo expedita tempore laboriosam aperiam repellat. Hic neque recusandae cum amet. Iure ipsam voluptatem aspernatur illum eius enim mollitia fuga. Porro tempore corrupti soluta repudiandae non in ullam enim. Consectetur nihil soluta velit vero odit. Similique ea atque corporis quidem. Eum quaerat voluptate voluptatem aut soluta et. Perferendis nesciunt labore autem doloribus. Voluptatum dolor aliquam maiores repellendus. Dolores animi quis dolor ut nemo assumenda et. Quia aut dolor consectetur et eligendi ipsam sit. Omnis earum et quae quo. Optio id et voluptatem nulla voluptatibus et quia. Est et rem aperiam est quia sint modi veniam. Nam illo qui et nulla quis vero. Consequatur reiciendis culpa consequuntur tempore. Placeat quidem laudantium tempore consequatur expedita. Maiores dolorem in occaecati pariatur voluptatem quae. Voluptatem cupiditate tenetur voluptatem at. Qui non harum cum modi aperiam. Cum quis aut aut dolore. Aut nulla provident rerum. Autem reprehenderit natus nostrum qui quasi. In voluptatem iusto voluptatibus ipsam nemo nostrum. Ex eum voluptate aperiam minus sint. Dolor rerum aut cumque ut qui iusto. Sit ipsam atque et expedita. Qui accusantium minus et debitis est voluptatem. Nemo beatae natus molestiae odit qui dolorem exercitationem. Rerum consectetur quam quasi. Non qui quidem deleniti ullam iusto. Rerum ex cumque consequatur mollitia pariatur omnis. Dolorem consectetur ut et amet. Iusto facere maiores velit dolor et. Quo tenetur natus molestiae animi voluptas adipisci. Assumenda corporis perspiciatis qui nihil. Facilis quibusdam veritatis alias et quaerat qui quam. Nesciunt alias cupiditate quia quasi est. Quo iste libero error. Neque aut maiores autem et. Voluptatem dignissimos sunt assumenda consequatur aut nemo provident. Quia non aut commodi saepe. Itaque sunt animi ipsum sit impedit laborum. Aliquid ipsam est unde ratione.', '2021-08-28 07:11:57', NULL, '/uploads/thumbnails/article-3.webp', 995, 'Rerum culpa autem dolore. Repudiandae consequatur hic laboriosam sapiente.', 'Quidem deserunt maxime tempora et. Dolorum molestias quia sit voluptatem nobis. Et suscipit est ut recusandae vitae non sed. Et architecto magni repellendus quod autem. Eveniet praesentium aperiam explicabo quibusdam cumque delectus.', 'Numquam quas hic facilis doloribus et voluptate. Necessitatibus eius voluptatem saepe possimus.', 'maiores-et-ullam-ducimus-ipsum-facilis-consequatur-accusantium', 1),
(59, 84, 'Les bases du JavaScript : initiation à la programmation côté client', 'Qui et aut delectus cumque autem esse ipsum. Vitae magnam aut non excepturi. Voluptas maiores sit quis doloribus enim. Eum molestiae illum amet est modi voluptatem dolores dicta. Sed eos velit unde illo distinctio voluptatum doloremque sed. Voluptatem sed qui praesentium temporibus. Facilis sequi delectus non voluptas illo odit vel. Ipsa voluptate ut id eum. Ut voluptatibus impedit exercitationem impedit. Fugiat exercitationem neque alias eius. Amet vero eum dolor et. Iste occaecati quod ut eius nobis facere. Molestiae quae ut ullam id iusto unde dolore. Reprehenderit et incidunt repellendus omnis. Aut sed qui sequi minus eum qui asperiores. Vero ullam totam corrupti rem quia quis. Eum provident est qui distinctio minima id et quod. Ut enim soluta libero accusamus labore. Nisi molestiae consectetur necessitatibus nesciunt non dignissimos ad. Consequatur aut optio perspiciatis maxime veniam sint. Molestiae soluta aut velit exercitationem laboriosam id voluptas vero. Dolore et in odit id itaque aliquam et. Rerum modi eveniet fugiat aut autem. Alias consequuntur omnis eum eius omnis. Quia aspernatur maiores quae laborum voluptate aperiam voluptatum. Non ut suscipit enim occaecati quis. Saepe ad quis libero sapiente maiores voluptate sed. Sit quidem veritatis quasi in aut nesciunt. Commodi omnis et nesciunt qui quod deserunt. Omnis unde et magnam nemo rerum. Accusantium quibusdam atque explicabo dolorem. Delectus nesciunt voluptas exercitationem fugiat. Eos eum quisquam est consequuntur. Dolor tempore voluptatem optio amet aliquid molestiae dolor earum. Labore repudiandae esse aut eos excepturi doloribus. Nobis aut ut fuga. Nostrum suscipit id voluptates. Dolores non veritatis illo ex iure. Accusamus vel earum voluptatem dicta. Corporis porro iusto et architecto quia. Velit enim ullam sit expedita aperiam.', '2022-10-30 12:12:06', NULL, '/uploads/thumbnails/article-1.webp', 304, 'Laboriosam dolor ratione laudantium. Id reprehenderit minima nostrum voluptatem ipsa voluptatem.', 'Consectetur atque dolorem iusto eius odio optio. Commodi laborum natus molestias quod molestias voluptas velit. Voluptas quae dicta autem quam pariatur aliquid veritatis.', 'Dolorem aspernatur aut asperiores commodi fuga non dicta ullam. Ut nihil sapiente odit eum.', 'blanditiis-culpa-voluptatem-possimus-mollitia-sed-aut-exercitationem', 1),
(60, 80, 'Les fondamentaux du HTML5 : tout ce que vous devez savoir', 'Consequatur voluptatem aut quia totam. Cupiditate eum nostrum dolor nulla alias. Ad molestias eum illum adipisci labore atque rerum. Laboriosam eius nulla officiis et molestiae. Velit dolorem voluptatum nam ut hic omnis nemo velit. Rerum quam excepturi quaerat quisquam impedit non. Enim enim provident quaerat est quasi nobis et. Id atque velit odio et nobis tempora aut voluptatem. Inventore voluptatem et praesentium aut. Corporis accusamus ducimus et voluptas itaque. Provident atque incidunt vero dolorum ipsa architecto. Vitae voluptas vel est beatae et. Corporis iusto consequatur tenetur sed perferendis molestias odit. Veniam quos accusantium temporibus tempora architecto sunt qui eos. Aut vel fugiat voluptatum consequatur beatae error. Dolores et eveniet asperiores sunt. Magni magni illo quas. At quis nihil cupiditate adipisci provident perspiciatis. Quia aliquam perspiciatis blanditiis ut voluptas. Sit soluta consequatur voluptatem laboriosam laudantium deserunt. Nemo eum soluta qui cupiditate. Amet dolor impedit cumque quod. Vel sint officiis consequuntur qui qui. Aut architecto autem et. Tempore sint sit ducimus vel occaecati quae ratione. Voluptas sint non libero autem et minima. Ipsum fugiat odio exercitationem possimus nihil. Perspiciatis fuga quia sequi voluptatem accusantium esse cum. Quis tempore quam aut delectus. Earum fugiat qui perferendis non. Nemo sed esse necessitatibus beatae nam delectus. Aut sint est occaecati ad dolor eligendi ut. Est sunt nulla placeat. Quasi sequi et hic vel ducimus soluta quo. Eaque sunt provident distinctio et animi. Sapiente iste beatae et quia. Tenetur sit et provident molestiae blanditiis optio. Ut qui ea aut autem distinctio. Aut sed id possimus possimus adipisci. Libero ut facilis non explicabo architecto. Ipsa commodi hic quasi iure sapiente qui modi. Quam ut iusto nostrum rerum dolores. Repellat itaque quas quas dolorem temporibus asperiores sed.', '2021-12-31 17:58:45', NULL, '/uploads/thumbnails/article-2.webp', 577, 'Ut sit quidem eum. Illum similique voluptas soluta.', 'Sed culpa enim culpa rem. Modi laudantium similique reiciendis distinctio. Distinctio excepturi natus nostrum laborum consequatur tempore officiis. Corporis facere et cum eum consequuntur iure.', 'Cupiditate necessitatibus perferendis sequi dolor magni. Quia molestiae et culpa et.', 'nihil-accusamus-nostrum-voluptate-maiores-unde', 1);

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
(55, 'HTML'),
(56, 'CSS'),
(57, 'JavaScript'),
(58, 'PHP'),
(59, 'Python'),
(60, 'Ruby'),
(61, 'Emploi'),
(62, 'Reconversion'),
(63, 'Étude de cas');

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
(55, 42),
(55, 45),
(55, 50),
(55, 55),
(55, 59),
(55, 60),
(56, 41),
(56, 43),
(56, 45),
(56, 48),
(56, 49),
(56, 51),
(56, 53),
(57, 46),
(57, 54),
(58, 44),
(58, 46),
(58, 52),
(58, 53),
(58, 56),
(58, 58),
(59, 42),
(59, 44),
(59, 46),
(59, 49),
(59, 53),
(59, 54),
(59, 59),
(60, 47),
(60, 48),
(60, 57),
(61, 41),
(61, 42),
(61, 43),
(61, 50),
(61, 52),
(61, 56),
(61, 57),
(61, 60),
(62, 44),
(62, 47),
(62, 49),
(62, 50),
(62, 51),
(62, 55),
(62, 58),
(62, 60),
(63, 41),
(63, 43),
(63, 45),
(63, 48),
(63, 52),
(63, 54),
(63, 55),
(63, 56),
(63, 57),
(63, 58),
(63, 59);

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
(201, 48, 76, 'Iste ut magnam impedit voluptatem pariatur. Molestiae non voluptatem aliquam accusamus non. Distinctio eum est et culpa maxime deserunt tempore omnis. Quam qui libero nemo saepe ullam molestias.', '2023-06-18 18:46:06'),
(202, 54, 80, 'Expedita cupiditate quia laborum dicta dolores totam. In est eos illum quasi qui. Similique fugiat commodi placeat aspernatur commodi recusandae quis molestiae. Possimus modi nam ratione non suscipit nihil doloremque.', '2022-11-09 05:38:50'),
(203, 48, 79, 'Iure odio repellendus atque dolorem illo. Repellendus voluptates mollitia est nemo omnis. Saepe debitis totam id quas. Cum rerum reiciendis id eveniet modi odio.', '2023-02-05 04:36:10'),
(204, 47, 83, 'Aut assumenda eveniet id odit fuga nihil. Qui voluptatem et id. Repellendus suscipit illo iusto eaque quo est. Quia sed voluptas similique quibusdam dolorem.', '2023-02-14 18:28:37'),
(205, 59, 82, 'Commodi doloribus aliquid ullam expedita commodi debitis sed consectetur. Praesentium a eaque dolorum eos aut. Est aut sed perferendis quo tempora ut. Voluptatem modi accusamus adipisci labore iusto odio quae ipsum.', '2021-09-12 09:53:40'),
(206, 53, 81, 'Odit eum ea dolor necessitatibus corporis et. Delectus sint unde eos velit sapiente. Ducimus mollitia consequatur consequuntur optio doloremque aut.', '2023-06-25 04:43:51'),
(207, 49, 76, 'Voluptas modi et quidem corrupti dolorem iste rerum. Aspernatur quia ipsam rem suscipit voluptas. Maxime id maiores est labore enim. Quo velit ut voluptatibus itaque delectus.', '2022-10-13 21:13:12'),
(208, 54, 79, 'Quaerat ab quia quibusdam qui. Esse quo accusantium doloremque ut voluptate est numquam asperiores. Alias dolorem sed et qui. Ut cupiditate iste quaerat aut praesentium aliquam delectus. Culpa vero dicta quis dolores.', '2023-05-07 01:02:52'),
(209, 56, 78, 'Debitis est totam voluptates repellendus consequuntur ut harum eaque. Et enim ullam quia explicabo. Iusto architecto nemo similique itaque rerum dolore voluptate.', '2022-08-08 15:38:55'),
(210, 60, 77, 'Aut et et qui id et alias. Et atque maiores iure reiciendis aliquid atque. Neque et hic aut architecto quo. Libero quia ut porro.', '2022-04-15 22:06:00'),
(211, 49, 85, 'Sequi odio ex voluptatum provident enim eos nobis. A quia libero qui perspiciatis voluptatibus. Necessitatibus necessitatibus autem architecto laudantium ut. Quasi cum et iusto quae est.', '2022-11-12 10:22:00'),
(212, 60, 79, 'Et fugiat nemo aut vel recusandae illo. Voluptas dolorum alias quis exercitationem consectetur ullam sit. Aut sit ducimus et ratione provident earum. A expedita quas est totam ipsam.', '2023-04-29 03:02:30'),
(213, 56, 75, 'Et officiis aliquam aut. Et nam qui ipsam repellat. Quis nobis harum dolores praesentium dolores.', '2022-05-26 10:14:45'),
(214, 53, 77, 'Est rerum dolorem quia dolore aut commodi velit. Aut vel quae qui esse. Placeat ut voluptatem vero ut dicta corporis ut. Nobis est quia aliquid beatae.', '2022-02-20 19:27:14'),
(215, 54, 81, 'Maxime eum ut autem omnis illo eum minus. Voluptatem aut tenetur libero enim provident. Dolor atque voluptatum in fugiat. Et labore vero dolorum. Maiores molestiae reprehenderit dolorem quo ipsum minima.', '2021-09-30 19:00:52'),
(216, 43, 82, 'Consequatur corporis fugit rerum perferendis numquam. Est et optio deserunt sequi porro id. In aut voluptatem ratione accusamus eos dolorem rerum. Rerum enim hic libero. Qui fugit asperiores incidunt non autem.', '2021-12-31 06:22:24'),
(217, 47, 80, 'Voluptatem illum rerum blanditiis sunt officiis. Quibusdam vitae dolores nesciunt et eos. Ducimus velit et doloribus eum repellat amet recusandae id.', '2023-05-29 23:27:32'),
(218, 48, 74, 'Repellat laborum veritatis optio cupiditate exercitationem. Nihil repellendus facere sed rem possimus expedita dolore.', '2022-08-04 23:35:27'),
(219, 58, 78, 'Nesciunt nihil qui similique rerum nulla. Voluptates tempore quas est quia aut. Possimus non qui nostrum rem maxime.', '2023-07-21 00:51:57'),
(220, 45, 78, 'Quia accusantium repellendus placeat tempore quidem officia dolore. Quis sunt autem quis rem qui eum ipsa. Rerum sed dolor at ut aut blanditiis unde. Magnam saepe quia deleniti perferendis.', '2023-02-21 19:21:40'),
(221, 46, 77, 'Deleniti ducimus veritatis officiis iusto eaque dolores dolorem. Eius in in corporis maiores perspiciatis. Voluptas aut error a quo consequatur unde.', '2022-10-06 07:12:44'),
(222, 54, 82, 'Voluptatibus ullam sint blanditiis natus omnis fugiat. Voluptatem ipsam nesciunt doloremque laboriosam molestias omnis. Non ipsum incidunt omnis enim odit. Mollitia aut quibusdam voluptatem qui nihil fuga.', '2023-01-14 19:03:56'),
(223, 54, 84, 'Voluptas doloremque quia voluptatibus beatae et. Cumque quas incidunt at velit accusamus. Ea dolorem fuga et ducimus aut. Omnis eum fuga aliquid rerum eum iste.', '2023-07-22 03:15:30'),
(224, 48, 84, 'In repudiandae reprehenderit ut consectetur. Repellendus praesentium quia eligendi consequatur voluptatum. Sint tenetur veniam doloremque quae at esse. Illum culpa aspernatur iste.', '2022-07-19 05:53:52'),
(225, 58, 76, 'Quidem eaque nobis quisquam et iure magnam. Recusandae omnis hic provident repellat. Exercitationem magnam iure placeat inventore molestiae.', '2021-10-29 18:52:43'),
(226, 58, 82, 'Voluptates quam quod non. Blanditiis accusantium rerum similique. Veritatis perspiciatis est expedita molestias non.', '2021-09-20 22:30:56'),
(227, 53, 81, 'Blanditiis culpa natus aperiam voluptas. Nobis excepturi velit dicta. Libero sint autem nemo adipisci a et velit assumenda.', '2023-02-07 12:19:15'),
(228, 51, 75, 'Rerum et id consectetur. Sed qui non omnis autem ab quo ut. Blanditiis dolor porro sed eos eum. Quidem aspernatur molestiae dolor inventore. Et et enim magnam minima quia nemo aliquid voluptatem.', '2023-01-20 00:38:18'),
(229, 42, 80, 'Et sit aliquam at. Ullam provident a corporis. Dolores vel harum aut. Consequatur quis suscipit veritatis cumque dolorem sint et quidem. Dolor sed minus et minus molestiae facilis. Aperiam qui id et cumque.', '2023-05-21 13:56:32'),
(230, 52, 80, 'Illum quos rerum dolore dolores quam. Ut vel vitae adipisci. Recusandae molestiae consequuntur sunt. Similique in dolores nulla impedit dolor officiis.', '2021-10-11 07:04:17'),
(231, 52, 80, 'Omnis soluta cum aspernatur quidem ut veniam. Dolor necessitatibus minima harum quam. Molestiae nostrum ut cum tempore voluptatem eius. Libero iusto excepturi et sapiente modi suscipit enim. Id magnam et nobis sint unde quibusdam.', '2022-08-01 21:00:03'),
(232, 47, 85, 'Facilis non ut autem eius placeat vitae incidunt. Molestias dolor consequatur deserunt fuga similique nihil consequatur et. Odio fugit laudantium qui harum expedita.', '2023-03-03 13:01:47'),
(233, 53, 80, 'Dolores autem velit placeat expedita tempore. Labore quos et debitis ipsa non. Ex sed velit porro vitae quis id et voluptatibus. Beatae nesciunt beatae sapiente provident.', '2022-06-28 19:00:10'),
(234, 52, 82, 'Quaerat excepturi voluptatibus corporis non ut modi voluptas. Iste autem est delectus voluptas.', '2023-04-22 03:21:47'),
(235, 52, 79, 'Cumque corrupti enim maiores dolorem tenetur. Neque velit molestiae delectus aut.', '2023-06-11 19:16:27'),
(236, 51, 83, 'Et voluptas dolores maxime molestias nihil voluptas voluptatum. Quia debitis omnis aut sit est. Tempora repellendus id qui doloremque necessitatibus rerum.', '2022-11-12 22:42:03'),
(237, 55, 84, 'Ut deserunt corrupti doloremque est. Asperiores temporibus eos cumque quia. Sed cupiditate perspiciatis totam dolorem est ea. Perferendis ad numquam voluptate inventore qui.', '2022-03-16 05:32:57'),
(238, 60, 77, 'Sed dolorem assumenda eaque. Reiciendis placeat labore adipisci voluptates praesentium. Iusto consequatur debitis ea aut est at. Qui sed nulla enim eum nesciunt velit quae. Quas esse dolores quae assumenda dicta.', '2023-07-02 05:02:03'),
(239, 44, 83, 'Aliquam consequatur debitis occaecati commodi molestias nobis rerum. Ullam itaque totam perspiciatis doloremque. Odit beatae quo non dolorem. Ratione rerum dolorem ea iste.', '2023-07-15 19:08:32'),
(240, 51, 74, 'Pariatur cumque cupiditate porro veritatis. Architecto dolorem laboriosam non ex. Earum accusantium eius nihil et quis.', '2021-09-05 17:46:31'),
(241, 54, 85, 'Quo quae aut et aut dicta. Aut quasi quod magni expedita quis. Quas aspernatur qui qui sed sequi.', '2023-05-23 00:44:00'),
(242, 42, 85, 'Provident officiis aut repellat voluptates. Et harum laborum ab ea dolore sit a. Sint iusto quam doloremque veniam.', '2022-09-30 20:35:29'),
(243, 55, 82, 'Est commodi ullam quasi ea. Veritatis sunt alias sed voluptatem ducimus consequatur. Itaque illum culpa vero aperiam accusamus doloremque voluptatum. Consectetur ex a aut nulla ut dolor quaerat.', '2023-02-11 16:27:26'),
(244, 57, 77, 'Placeat molestias cum et neque. Optio ea nam excepturi sed sint ut id qui. Dolores praesentium ut debitis dolore. Quae laborum dolores eveniet voluptas nihil reprehenderit.', '2022-04-24 07:31:05'),
(245, 42, 79, 'Et iusto impedit eligendi nisi. Aut error omnis praesentium qui qui hic. Modi est velit occaecati ratione sunt. Est incidunt et tempore.', '2021-11-12 18:44:27'),
(246, 47, 85, 'Eaque et autem autem molestiae. Minus eaque vel sequi. Doloribus id aut molestiae eos officiis. Tenetur aut temporibus ad eum esse.', '2021-10-22 01:25:18'),
(247, 59, 83, 'Qui fugiat est tempore praesentium natus dicta. Omnis labore minus minus quia tenetur ullam. Quidem repellendus quaerat officia eligendi sit saepe doloremque. Eligendi voluptas numquam aut voluptates eos.', '2022-12-08 23:49:12'),
(248, 56, 77, 'Provident quo aperiam minima natus quibusdam aperiam quo. Ut omnis saepe neque explicabo. Quis sit modi voluptatum mollitia saepe veniam. Repudiandae sit quaerat et. Rem quia quos minima. Magni vero saepe aut tempora.', '2023-01-22 21:05:05'),
(249, 57, 77, 'Dicta vero rem molestiae. Deleniti autem aliquam eos ut.', '2022-08-23 12:42:48'),
(250, 50, 77, 'Qui corporis ut architecto beatae. Sint libero voluptatibus et libero odio quibusdam. Qui et iusto sint quis dolores sit nisi. Esse sed asperiores voluptatum consequatur maxime consectetur.', '2023-04-17 14:31:32'),
(251, 45, 84, 'Cum in eum pariatur quidem itaque numquam et. Quia molestiae sapiente excepturi sed consequatur autem. Culpa quas suscipit magnam voluptatem maxime velit. Quis natus numquam placeat sed. Culpa corrupti quis numquam similique.', '2023-03-10 19:07:36'),
(252, 51, 80, 'Dolor et tempora nisi in exercitationem dolor. Autem nulla corrupti et libero distinctio necessitatibus laboriosam. Velit enim ut qui tenetur.', '2023-01-18 23:55:40'),
(253, 58, 85, 'Quam aliquid similique eveniet inventore. Sed cupiditate et illum quisquam. Necessitatibus sit totam quibusdam ex. A aut assumenda cumque atque voluptatem libero iure. Non id dolorem ipsa temporibus cupiditate impedit quae perferendis.', '2021-10-07 13:34:24'),
(254, 55, 81, 'Dolorum ut a non incidunt sed laborum quae est. Labore odit nulla vitae iusto ex aut laudantium. Velit ea dolorem voluptate quae eum sit.', '2021-10-08 15:00:08'),
(255, 52, 85, 'Nostrum nihil corporis fugiat qui facere. Qui est deserunt nihil amet. Quos itaque qui placeat vitae nemo adipisci molestiae. Quia odio saepe repellat ex et molestias sed. Vitae et quia ipsam soluta aut voluptatem.', '2023-04-05 10:27:48'),
(256, 50, 85, 'In sapiente accusamus corporis molestias vel. Odio et reiciendis facere qui debitis suscipit. Aliquam sed maiores minima tenetur enim soluta provident. Blanditiis molestiae ex omnis ipsam totam.', '2022-07-26 14:19:04'),
(257, 60, 83, 'Aut vel consectetur dignissimos quis. Necessitatibus hic officiis consectetur iure molestiae iure deserunt atque. Culpa fuga occaecati iste dolore. Velit consequatur eveniet eligendi fugit. Et distinctio corrupti et.', '2022-01-10 07:06:51'),
(258, 59, 84, 'Sint temporibus sint doloribus dignissimos eveniet nobis dolores. Quia nihil cupiditate non dolor voluptatem quo. Facere laboriosam cumque corporis voluptate sit corporis. Harum illo quo et ratione. Dolorem laudantium in ea quia ratione magnam.', '2021-12-09 13:54:56'),
(259, 51, 74, 'Cupiditate voluptate qui sint dolor. Alias asperiores sit illo enim non aliquid. Aperiam ad sit dolorem reiciendis esse necessitatibus sed dolores.', '2021-12-10 20:25:24'),
(260, 59, 83, 'Quaerat est rem natus corrupti praesentium sed. Quo minima atque hic non aliquam. Tenetur dolore sed sequi sint reiciendis.', '2021-11-10 07:33:41'),
(261, 48, 82, 'Ut delectus dolorem laborum pariatur. Dicta similique sunt cum soluta illum pariatur quis. Et quia magnam ut debitis quaerat. Qui ipsum est aut est in. Sunt harum ut assumenda corrupti officiis. Doloremque recusandae non est dolorem.', '2022-04-10 11:18:06'),
(262, 54, 84, 'Animi rerum nobis praesentium fuga. Sint quisquam dolor tempore delectus pariatur ut. Possimus ducimus cum dolore officiis inventore quisquam. Optio ratione dolore ab labore unde architecto.', '2022-10-01 00:40:13'),
(263, 53, 81, 'Repellat et maxime repudiandae quis explicabo accusamus. At distinctio error error molestiae. Quia impedit et optio sit ea cupiditate dolores doloremque.', '2022-08-01 19:54:54'),
(264, 56, 77, 'Et molestias expedita quidem laudantium in natus nulla quas. Adipisci ipsa sunt est doloribus et. Id aut corrupti cum non earum consequatur. Cupiditate eum voluptate voluptatum.', '2022-03-30 18:58:45'),
(265, 42, 85, 'Est quasi odit et facilis aut doloremque distinctio. Cumque dolor fugiat quo provident. Sapiente quo est eum quam sapiente beatae commodi ut. Similique omnis cupiditate nam reprehenderit et.', '2022-09-05 10:15:56'),
(266, 57, 85, 'In ut quisquam ut culpa quis sint. Est est illum vel nam. Totam commodi possimus fugit nisi voluptate consequuntur autem. Perspiciatis totam accusamus maxime repellendus. Voluptas qui quibusdam distinctio dolorem rerum omnis provident.', '2021-10-20 16:15:44'),
(267, 51, 78, 'Ab magnam ut iste ea consequuntur. Vel non suscipit ea fuga maiores consequatur occaecati. Dignissimos itaque molestiae totam aut facere quod veritatis quae. Neque tempora ipsum atque quo et reiciendis non iste.', '2023-05-07 06:13:19'),
(268, 41, 85, 'Eos omnis accusantium ea odio. Natus est enim consequatur dolor consequuntur sint. Ab autem nihil deleniti cum doloremque minus nesciunt.', '2022-11-17 23:53:52'),
(269, 46, 79, 'Similique mollitia animi dolorum qui debitis. Architecto laborum dolorem ex suscipit sed quia debitis. Autem vitae qui in commodi.', '2023-03-27 17:03:25'),
(270, 57, 81, 'Perspiciatis tempora minus eius eveniet. Deleniti odit labore aut accusantium inventore. Voluptate vitae culpa vitae minima a possimus. Est omnis cupiditate autem perferendis alias optio. Praesentium sed nulla at fugiat fugit ipsam.', '2023-04-09 13:38:46'),
(271, 53, 85, 'Temporibus eos dicta facere possimus at perferendis eius. Iusto est corrupti totam possimus deleniti atque. Asperiores aut eos voluptate est sit. Cupiditate minima rerum facere iure reprehenderit at a.', '2023-06-18 20:17:52'),
(272, 51, 80, 'Explicabo ullam animi et delectus doloribus quae. Officiis laudantium eos odit et est omnis dignissimos. Assumenda debitis dolore quia quia perferendis voluptas. Aut qui asperiores blanditiis ad aspernatur. Autem et nisi ab perferendis modi.', '2022-01-04 08:58:04'),
(273, 48, 85, 'Suscipit modi quia aut et. Molestias qui voluptatem alias qui alias facere commodi omnis. Fugit molestiae ratione quos dignissimos earum molestias.', '2022-08-26 04:14:03'),
(274, 56, 85, 'Sit aut corporis atque consectetur earum consectetur quibusdam. Sunt et est sint ab in. Provident velit quo consectetur quia numquam. Temporibus minus dicta quod vitae sequi quasi.', '2022-09-26 15:13:03'),
(275, 41, 75, 'Et deleniti earum adipisci ut. Qui nostrum odio qui explicabo consequatur. Saepe eligendi doloremque exercitationem recusandae sequi.', '2023-06-09 01:54:57'),
(276, 51, 82, 'Dolore velit dolore dicta reiciendis harum doloremque voluptas. Quidem delectus dolores ipsum libero. Exercitationem qui dolore aut natus quia dolor consequatur.', '2021-12-30 02:15:53'),
(277, 41, 76, 'In non temporibus ea et qui omnis repudiandae. Nihil quia voluptates aut dolor. Maiores dolore quia quod perferendis. Suscipit aut perspiciatis aut qui ea.', '2022-08-04 23:02:41'),
(278, 49, 74, 'Autem aut aliquam delectus quis rem at molestiae. Consequuntur debitis quis velit qui. Dolorem odit vero assumenda doloremque sit ut. Exercitationem saepe quam unde est.', '2022-10-18 22:56:43'),
(279, 45, 78, 'Rerum officia maxime quis commodi repellendus est vel. Fugit alias temporibus consectetur impedit dolor non at. Voluptate facilis ipsam iure eaque praesentium. Ipsum nisi et nulla sunt et porro.', '2021-12-19 23:13:40'),
(280, 60, 79, 'Ducimus ut et rem eligendi. Deleniti sunt ut corrupti optio nihil. Harum et ipsum minima a.', '2023-02-11 21:56:06'),
(281, 57, 74, 'Dicta possimus sunt animi saepe sed minima. Eaque et laborum et expedita placeat aliquid. Error ullam aut sed quas. Illo beatae sint maiores nam quaerat. Perferendis nobis ipsam sed fugit id reiciendis.', '2023-02-17 18:55:46'),
(282, 60, 85, 'Magni voluptatibus dicta autem nihil. Qui in voluptatibus praesentium nisi voluptas nihil. Illum sequi quia illum quo cumque quia quod. Sint pariatur aliquam similique nostrum et.', '2023-06-08 09:59:33'),
(283, 59, 79, 'Dolor reprehenderit doloremque iste mollitia aut dolor. Optio qui dolores suscipit animi veritatis cum nemo qui. Rem quam itaque ut architecto ut eos sapiente. Maxime magnam illum odit eum aut dolore.', '2022-12-06 22:53:51'),
(284, 46, 82, 'Eos maxime tempore incidunt tenetur animi. Assumenda dicta et ad adipisci. Sequi placeat dolorem magnam et omnis veniam eos. Nesciunt culpa sed error itaque enim. Laudantium id quibusdam eaque est maiores aut est.', '2021-08-10 23:03:59'),
(285, 48, 84, 'A ut praesentium ut quidem. Aut eos dignissimos enim sed assumenda. Atque quia consequuntur aut ut est nesciunt enim. Harum ex molestias est harum in eius vel. Placeat fugiat similique soluta cum hic iure velit.', '2023-01-06 06:14:48'),
(286, 50, 74, 'Quo accusamus quod natus debitis. Aut dolorem delectus omnis nobis magni consequatur ea. Impedit dolorem aliquam dolorum voluptas consequuntur asperiores quae dolores. Voluptas autem maiores voluptatem voluptate qui quae.', '2022-08-01 23:52:27'),
(287, 51, 77, 'Ut amet ea alias. Consectetur dolor commodi non nemo ipsum. Quo dolor quos voluptas qui. Cumque sint omnis deleniti. Et similique sit numquam quia est at est. Sit recusandae ut laudantium nam ut non at.', '2022-02-23 03:50:53'),
(288, 43, 75, 'Qui nemo aspernatur qui dignissimos. Itaque dolorem magni nesciunt qui nisi porro qui quia. Voluptatem corrupti at possimus animi.', '2022-02-16 03:36:46'),
(289, 48, 76, 'Dolorum nobis vel eum sequi hic assumenda quo. Tempora corporis facere quasi ut et cupiditate et. Aut cupiditate occaecati omnis in saepe a.', '2021-12-08 16:31:42'),
(290, 44, 81, 'Vel libero voluptatem vel reprehenderit voluptate occaecati. Dolore facere quas illo sit quibusdam. Voluptatum asperiores enim neque sit exercitationem iure. Modi est atque nulla fugiat et dicta.', '2022-12-28 05:54:42'),
(291, 53, 80, 'Sint ipsam dolorum nobis nemo eos. Est est distinctio maiores et nam mollitia. Omnis totam optio facilis dolor voluptates et. Magnam consectetur quasi neque ea fuga inventore. Modi qui ex totam optio reiciendis.', '2021-10-04 16:59:45'),
(292, 53, 81, 'Sunt quos non cumque consequatur consequatur suscipit soluta. Dolores laboriosam ut sit aliquam molestias quisquam. Id veniam pariatur sunt reprehenderit dolores provident.', '2021-12-22 13:57:28'),
(293, 56, 79, 'Ut itaque reprehenderit molestiae consectetur ut. Inventore ratione nostrum voluptatem sit at iure. Alias at ea consequuntur nisi.', '2023-08-02 19:44:09'),
(294, 41, 75, 'Est placeat iste magnam totam. Voluptatem dolores iste fugiat necessitatibus eius labore. Accusamus dolorem veritatis voluptates.', '2022-07-09 01:47:51'),
(295, 50, 76, 'Ut a aut error ad perferendis. Voluptatibus sed qui praesentium ipsum inventore. Sit officia voluptatem eos. Labore aut aut adipisci. Saepe aperiam minima quia in. Distinctio fugit est quam porro recusandae hic et. Qui ut earum suscipit saepe.', '2022-10-14 13:44:21'),
(296, 58, 75, 'Nostrum unde error magni. Sit ex tenetur amet nihil. Qui molestiae et autem et velit corporis. Aut rerum necessitatibus at sit voluptatum.', '2023-06-02 14:47:37'),
(297, 45, 77, 'Dolores quia praesentium dolorum provident consequatur id et nam. Nihil omnis sunt suscipit corrupti et. Dicta maxime voluptate odit deserunt consequuntur aliquid.', '2023-03-05 01:56:30'),
(298, 59, 76, 'Expedita deleniti cum sunt. Odit excepturi nihil nulla et consequuntur officiis nam. Magni est sit numquam quo voluptas possimus consequuntur. Alias quaerat ducimus omnis dicta dicta provident quam.', '2022-02-10 21:59:21'),
(299, 47, 85, 'Et et eveniet consectetur enim rerum in cum. Est quod deserunt inventore vero enim explicabo. Odit sit aut qui. Id voluptatibus impedit minima dolores quasi.', '2021-11-18 11:44:46'),
(300, 44, 80, 'Quos qui quod rem dolor ut. Error fuga ut officiis quae aliquid rerum modi. Laborum similique quasi nesciunt magni saepe corporis repellat. Nulla maiores assumenda occaecati sint.', '2022-11-20 20:56:00');

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
(74, 'admin@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$w7u..x2knyesk6iBd2kY3e/9iZKNW1D5qrdqtfXB18AzEd32PaMGe', 'Admin', NULL, NULL, '2023-08-09 12:29:48', NULL, '/uploads/avatars/default_avatar.webp'),
(75, 'editor@gmail.com', '[\"ROLE_EDITOR\"]', '$2y$13$9bv0teTaLA01jLq5GHZzWOIn3HVyOH7./5.RS1.BQF3Ydu.9XCoui', 'Editor', NULL, NULL, '2023-08-09 12:29:48', NULL, '/uploads/avatars/default_avatar.webp'),
(76, 'Totally_a_real_person283@hotmail.com', '[]', '$2y$13$UgcOeqLngSzh3moCu41CX.KsUSQg9WZUBu9jGmU6xjoz10OPwc4T6', 'Totally_a_real_person283', NULL, NULL, '2023-08-09 12:29:49', NULL, '/uploads/avatars/default_avatar.webp'),
(77, 'Extreme_React67@yahoo.com', '[]', '$2y$13$/K8HXCOR1qbcdLrFHSqIPO3ZzB6yAAWrqybrXeCzH7fomxl5N7d3m', 'Extreme_React67', NULL, NULL, '2023-08-09 12:29:49', NULL, '/uploads/avatars/default_avatar.webp'),
(78, 'Echo303@hotmail.com', '[]', '$2y$13$RAToqKCB9EkG0LjVc1mV7..t.i1ZygZt96R5af.dC7JxHnyK5w2P6', 'Echo303', NULL, NULL, '2023-08-09 12:29:49', NULL, '/uploads/avatars/default_avatar.webp'),
(79, 'Hello_World406@yahoo.com', '[]', '$2y$13$zYDNrnLCIIzLWgWfEoKWreT5k2y3/jW4SZ3idFIwzrJFG/eKT3C5e', 'Hello_World406', NULL, NULL, '2023-08-09 12:29:50', NULL, '/uploads/avatars/default_avatar.webp'),
(80, 'Extreme_React196@gmail.com', '[]', '$2y$13$RNXzdO0YhCMuTwku5xEiCuciuASEreFlTqVWkB/ZTnrRwgH2GrMk.', 'Extreme_React196', NULL, NULL, '2023-08-09 12:29:50', NULL, '/uploads/avatars/default_avatar.webp'),
(81, 'JavaScript_Savior323@yahoo.com', '[]', '$2y$13$1CO9OoL66Fg6RRUC2L/CyOR.e.L2wedp9xL0x1v2Pu7LK9WHIe7I2', 'JavaScript_Savior323', NULL, NULL, '2023-08-09 12:29:51', NULL, '/uploads/avatars/default_avatar.webp'),
(82, 'Java_Not_Script460@gmail.com', '[]', '$2y$13$wePdjCd/uOpiulFkeJ86FuhXvbEf204NG2o37Hqguwgs6BW8eOyDy', 'Java_Not_Script460', NULL, NULL, '2023-08-09 12:29:51', NULL, '/uploads/avatars/default_avatar.webp'),
(83, 'Monthy_Python146@gmail.com', '[]', '$2y$13$QJnH6VcE/IVZSfSITSEOWeuAW70Ihq1xbJQjw122xBW3VtRHx/ilq', 'Monthy_Python146', NULL, NULL, '2023-08-09 12:29:51', NULL, '/uploads/avatars/default_avatar.webp'),
(84, 'Console_log_addict468@gmail.com', '[]', '$2y$13$3a5kDqoHWRzZIlMzbKi7Vey0euBdayTYC3.myf/mSemhxSrDxAr0u', 'Console_log_addict468', NULL, NULL, '2023-08-09 12:29:52', NULL, '/uploads/avatars/default_avatar.webp'),
(85, 'Dev_King162@hotmail.com', '[]', '$2y$13$nq09Cq.kRvT/oF/RGRo10O07.VRKNEAJv/fVXLqL0XloU9zy8QCtS', 'Dev_King162', NULL, NULL, '2023-08-09 12:29:52', NULL, '/uploads/avatars/default_avatar.webp');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

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
