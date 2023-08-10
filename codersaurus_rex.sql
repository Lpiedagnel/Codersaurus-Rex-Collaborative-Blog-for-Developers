-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 10 août 2023 à 09:39
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
(81, 110, 'Créez un site Web professionnel avec Bootstrap : un guide étape par étape', 'Nihil omnis perspiciatis voluptatum molestiae eum delectus voluptatem. Tempora aut quia vel ut atque veritatis. Magni id harum alias dolorem. Expedita quasi in cum et sint sint. Eius labore maxime omnis in et eligendi. Aut cum suscipit qui laudantium ducimus amet. Dolorem blanditiis maxime repellat ut in aut. Pariatur beatae cumque ipsam pariatur. At totam quia est nesciunt at. Sed quia est doloribus numquam praesentium enim. Nisi maxime debitis et dolorum distinctio. Ex in officia nulla. Perferendis recusandae natus est saepe nulla sapiente. Rerum eum vel tenetur praesentium itaque. Porro voluptatem qui quasi est sed pariatur beatae et. Nulla accusantium voluptas minus odio rem. Mollitia rem quia odio. Voluptatum quia et rerum sed. Occaecati fuga nam consequatur eveniet. Provident quasi quis qui rerum. Quia laborum sed est nemo voluptas consequuntur. Natus repellendus architecto maxime quas corporis. Tempore nostrum enim nam atque occaecati inventore. Quaerat esse quas rerum delectus dolorum dolore voluptates. Vitae eos iure maxime quidem qui expedita. Quo tenetur in est tenetur. Amet velit iste earum. Commodi incidunt id iste iure. Dolorem aut fugit at et suscipit cupiditate. Sint totam doloribus et neque. Corrupti et blanditiis ad sed. Nihil corrupti eaque dolor velit. Ex non at recusandae magni minus. Minima alias laborum labore aliquid. Corporis tenetur temporibus ea quo in. Est in reiciendis distinctio. Qui accusamus quae voluptas cumque quia vel. Occaecati sequi soluta qui rerum veniam ullam itaque. Eum est aliquam accusamus fugiat. Vero et incidunt expedita adipisci voluptas dolorem. Consequatur natus eos dignissimos provident dolores. Consequuntur quia deleniti sunt velit architecto non asperiores. Recusandae beatae amet dolores ut dolor voluptatem. Qui commodi delectus cum dolorem est eaque. Consequuntur quibusdam iste harum accusamus et est veritatis. Et ut blanditiis quaerat nam necessitatibus cum quibusdam culpa.', '2022-02-24 16:28:59', NULL, '/uploads/thumbnails/article-3.webp', 959, 'Hic modi aut sed. Quis fugit nisi recusandae ratione soluta eum. Placeat ab soluta in quia sint.', 'Occaecati eum qui amet libero. Placeat sint et qui aut dicta. Dolorum velit recusandae et sit.', 'Et omnis excepturi sunt quia. Eos ut qui voluptate quo. Laborum quia qui fuga odio tempore sed.', 'omnis-asperiores-sunt-ea-harum-fuga-ut', 1),
(82, 111, 'Comment intégrer des animations CSS époustouflantes dans vos projets Web', 'Qui sunt quasi iusto sed odit. Alias accusantium laudantium velit omnis. Excepturi est quibusdam sed officia ullam et quibusdam. Ut dignissimos numquam nam. Unde harum voluptatem libero animi. Qui dolorem repellendus explicabo quae. Non sit culpa aut tempore sed in. Vel excepturi assumenda quo repudiandae dolorem eum. A assumenda nemo laudantium quam illum quis. Et eveniet vero fuga sed tempore cumque. Est voluptas aut qui sit rerum sequi et. Adipisci et dolor suscipit consectetur. Laboriosam quas non et soluta commodi ut. Reiciendis aut qui eos nihil et laboriosam voluptatum. Aliquid eveniet sed quod accusamus sunt. Qui rerum cumque fugit laudantium totam explicabo. Quas assumenda et quia quasi natus. Provident animi occaecati enim cumque dolor quisquam. Consequatur aut accusamus modi expedita sint non. Incidunt quas voluptas sed est maxime eaque. Officiis qui quibusdam voluptas. Est quidem consequuntur voluptate quia et laboriosam sit. Rem veritatis fuga nemo. Incidunt et velit et itaque incidunt qui. Molestiae ea minus ut vel saepe. Tempore dolorum harum voluptatem blanditiis libero qui voluptatem. Pariatur expedita exercitationem est quibusdam dolor qui vel. Delectus quas incidunt sunt itaque iure. Est rerum doloribus illo in vitae nemo ut. Voluptatem voluptatem et molestiae omnis. Iusto consequuntur labore rerum sit sint sit. Nostrum necessitatibus laboriosam labore sit. Cum mollitia libero voluptates voluptatem est voluptas sed. Accusamus accusamus minus at praesentium tenetur. Itaque est quod saepe voluptas qui ea qui. Quo est deleniti hic esse corrupti. Qui quae nisi rerum amet dolores deserunt. Debitis expedita nostrum est sed cupiditate tempore itaque ducimus. Atque non aliquid delectus quo magni exercitationem qui velit. Omnis ea eum dolorem sapiente laborum tempora numquam est. At vero quia et qui rerum voluptate est.', '2023-04-16 23:47:37', NULL, '/uploads/thumbnails/article-4.webp', 465, 'Possimus error illum sunt dolor vero. Perferendis qui qui magnam et omnis rerum.', 'Quas ratione id sed occaecati iste quia rerum alias. Rerum esse hic ipsa voluptatem. Dignissimos facere illum ut quod vitae.', 'Nisi numquam repellat numquam omnis. Nobis quia exercitationem et modi rem labore quos ullam.', 'quod-quibusdam-aliquid-voluptatem-ut', 1),
(83, 110, 'Le guide complet du SEO pour améliorer le classement de votre site sur les moteurs de recherche', 'Vitae dicta rerum asperiores. Culpa quidem unde consequatur commodi. Recusandae architecto totam aut. Et porro laborum eaque numquam soluta. Aut a corporis occaecati perspiciatis minus dolor. Ducimus harum consequatur debitis cumque ab. Nesciunt rerum quis totam omnis repudiandae qui et est. Quia voluptatem tempore aliquid officiis nostrum. Iusto sint enim nesciunt tempore nulla voluptas. Blanditiis dolorem laudantium facere rerum fugit et qui. Laudantium beatae deserunt eos voluptate voluptate. Aspernatur iure quis et quam voluptas quaerat. Non amet veritatis commodi similique quis qui. Dignissimos nulla at aspernatur enim tempora voluptatem. Dolor neque suscipit vitae repellat. Accusamus quis voluptatem sed vel. Itaque vel minus est magnam quia esse aliquid. Rerum dolores illo similique natus est et. Sunt atque nam et sint totam. Iure voluptatem eum repellendus corrupti. Rerum hic quo doloremque odio explicabo alias ratione. Cumque expedita aut consequatur voluptas. Sunt libero in quia aut beatae enim praesentium dolorem. Recusandae laborum itaque ut consequuntur maiores. Itaque qui voluptate atque optio necessitatibus. Omnis veritatis neque cumque eligendi animi. Fuga et odit omnis odit. Consectetur ex quisquam minima voluptatem deserunt animi at est. Id qui necessitatibus cumque. Modi sit occaecati at est consequatur voluptas facere libero. Non quia nihil est tenetur totam saepe. Culpa commodi illum qui est. Aut voluptate nihil quidem dolores quae ipsa quaerat. Ut quisquam reprehenderit magni et. Quia dolorum omnis adipisci repellat assumenda delectus nesciunt. Earum totam est sunt aliquid. Dolor ipsam sit veritatis tempore nihil rerum. Sint rerum voluptate qui sequi et quia ut. Perspiciatis accusantium quia quidem aut et blanditiis. Id animi quo adipisci dolor. Et et vero provident porro voluptatem vel.', '2022-03-10 08:58:28', NULL, '/uploads/thumbnails/article-4.webp', 971, 'Ad in nemo et eveniet aperiam. Quis quaerat nam aliquam ducimus assumenda.', 'Maiores possimus minus reprehenderit rerum placeat alias. Dolorum repellendus repudiandae numquam harum aut. Et consectetur aut ratione inventore est voluptas. Quo et blanditiis commodi aperiam ut et consectetur.', 'Tempore quis voluptas eveniet aut perspiciatis. Consequatur explicabo autem ab consectetur.', 'ducimus-quaerat-aperiam-ut-dolor-fugit-nisi-omnis', 1),
(84, 103, 'Les meilleures pratiques pour concevoir une expérience utilisateur exceptionnelle', 'Autem assumenda corporis in possimus quasi. Hic modi et sed. Maxime rem et dolor ea molestias. Quia modi dignissimos dignissimos eveniet sunt aliquam exercitationem. Incidunt vero repudiandae voluptas dolore id. Odio adipisci consectetur repudiandae qui autem excepturi quo. Iste explicabo pariatur omnis eaque recusandae. Omnis eveniet eos blanditiis vero voluptas expedita exercitationem. Nobis eum accusamus est omnis et eos. Quas et nihil voluptatem nobis fugiat omnis. Culpa aut delectus est sunt voluptatem. Voluptates eos eaque eius minima qui. Non repellat deleniti ut aut. Omnis maiores et voluptas asperiores. Ut veritatis dolores nemo minus enim qui aut. Labore laborum non veritatis. Provident nobis necessitatibus soluta ullam. Qui sit hic harum quisquam nesciunt ea. Aut rerum ab doloribus dolores aperiam enim labore. Nobis sit qui accusamus ut error ut maxime. Minima rem illum non odio vel suscipit ab. Neque omnis aspernatur quod optio. Quam quod est qui minus voluptates. Ea praesentium quo harum et omnis. Illum autem ea vel fuga earum. Reprehenderit sequi quis debitis et optio. At officia possimus quibusdam minus veniam. Dolorem voluptatibus blanditiis rerum et minus atque deserunt. Aut beatae sed odit laudantium amet. Ut voluptas commodi et labore non deleniti id. Fugiat dicta earum corporis assumenda velit temporibus soluta vel. Eos culpa tenetur sunt corrupti dolore consequatur suscipit. Aut voluptas nam earum est ipsam nisi officia. Laboriosam quo numquam ut dignissimos. Aut unde iste libero id iste. Perferendis voluptate optio cupiditate eum commodi. Reiciendis odio ut dolorum sint repellendus. Aliquam asperiores voluptatum laudantium dolorem ut deleniti deserunt ab. Non dolorem ut beatae voluptatem. Iure dolorem vitae placeat commodi architecto unde. Doloremque vel iusto sint eos explicabo aliquid repellat. Ea quam labore reiciendis illo ea sunt quia. Consequuntur non laudantium occaecati est ut.', '2021-11-25 22:06:33', NULL, '/uploads/thumbnails/article-4.webp', 328, 'Expedita earum et saepe alias. Qui perspiciatis aut a autem officia aut.', 'Quaerat animi dolorem sequi harum dignissimos culpa. Dolor sed aperiam pariatur praesentium aut. Amet quidem aut itaque. Est porro magni unde qui provident consectetur aliquid.', 'Nam beatae est praesentium. Eligendi voluptas dignissimos voluptas recusandae facere asperiores.', 'nihil-voluptatem-nihil-optio-distinctio-necessitatibus-repellat-sit-et', 1),
(85, 101, 'Les bases du JavaScript : initiation à la programmation côté client', 'Ut voluptatem eum unde rerum. Nobis dolorem sed deserunt ex est. Atque id illum minima expedita qui architecto minus inventore. Quisquam quo qui hic quo. Commodi eveniet cumque dolor. Totam velit harum maxime non sit ea in. Commodi voluptas ipsa aspernatur. Et fugit exercitationem velit doloremque est. Maiores esse eos ipsum ex odit. Repellendus quas quia aut dolor consequatur esse. Cupiditate ab perspiciatis occaecati sit aliquid et libero. Error nostrum recusandae incidunt sed corrupti fuga quos dolores. Quod vel necessitatibus aspernatur dignissimos. Sunt omnis voluptatem aperiam dolores non. Molestiae molestiae voluptas illo et est in. Dolorum sint sapiente suscipit commodi architecto nam. Eveniet repellat laboriosam facilis. Qui nihil est sit quam quae vitae. Quibusdam ut et eius. Doloremque cumque velit aperiam est in repellendus incidunt. Nostrum nesciunt nesciunt laudantium asperiores laudantium ut. Optio id voluptatem culpa debitis eligendi pariatur rem. Corrupti consequatur ea sed at et. Id quas assumenda unde debitis. Aliquam fuga saepe nesciunt sapiente. Et enim tempore fugit corporis possimus. Quasi quia voluptatem officia rerum et quasi et dolore. Voluptatem sed aspernatur rem autem maxime. Aut enim accusamus voluptatem quibusdam corrupti. Hic eum atque dolorum consectetur recusandae fugiat. Reprehenderit quo optio sint. Sit quia rerum atque. Explicabo aut quo cum. Voluptate hic aut fugit quis ad a. Voluptate deleniti culpa repellendus labore explicabo. Dolores impedit dolor quis quia velit. Doloremque et facere mollitia perferendis. Et quam ipsum et et cum quia consequatur illum. Dolores nulla qui blanditiis quia aut. Temporibus maiores magnam nihil minima sit illum sunt saepe. Voluptatem incidunt ut ipsum eligendi. Distinctio qui accusantium hic est et et. Natus eos similique ducimus in nobis molestias aut quo. Facilis corporis laborum iste fugiat nostrum. Facilis vitae sed ea.', '2022-10-10 09:12:53', NULL, '/uploads/thumbnails/article-3.webp', 831, 'Non mollitia dolorem quidem. Sint velit suscipit deserunt ut.', 'Fugiat et ea voluptas. Sit adipisci possimus est ea. Eaque aut doloremque quod tempora et. Dolores occaecati blanditiis praesentium nemo. Mollitia amet tempora aut ea doloremque quo omnis. Est rem beatae quasi consequuntur.', 'Et aliquam ipsa nemo quibusdam quibusdam eaque. Voluptates quo et aut.', 'dolorem-animi-sed-et-temporibus-quod-molestiae-eligendi', 1),
(86, 101, 'Le guide complet du SEO pour améliorer le classement de votre site sur les moteurs de recherche', 'Temporibus est sit rerum sit eligendi. Impedit et praesentium beatae. Sit commodi omnis cum recusandae placeat dolores. Reiciendis vel labore soluta ea voluptates qui ad. Voluptatem quis facilis reiciendis id voluptates sequi earum magnam. Labore fuga iusto et earum eveniet facilis. Ullam laboriosam voluptatem beatae voluptas quo voluptate. Est sapiente et quia in. Ea perferendis sapiente consectetur autem. Doloribus et eum exercitationem. Quam dolore facilis ut earum. Rem et et voluptas cumque omnis unde omnis. Qui eligendi asperiores iste sit. Sit dolorem quibusdam suscipit beatae. Sint exercitationem deleniti quo velit. Nihil sed iusto omnis accusantium ipsum optio. Vel id quo sapiente explicabo. Repellendus in reiciendis dolore recusandae necessitatibus odit. Nesciunt eos voluptas illum quia. Consequatur odit dolores et consequatur dignissimos laborum. Est animi sed nobis laboriosam. Quidem officiis molestiae sed esse voluptas vel. Odio error sit modi eum porro provident aut dignissimos. Quos culpa est temporibus temporibus eum quod. Aut molestiae sed temporibus dolor qui. Nulla nobis et in occaecati. Et recusandae expedita sunt non nam neque nostrum. Ex explicabo modi magni non necessitatibus reprehenderit dolor voluptatem. Natus atque est atque perspiciatis ea dolor. Quam harum repellendus quae est id non itaque. Doloremque omnis culpa quidem nesciunt quis quos nemo est. Cum quo hic accusantium debitis est et blanditiis. Qui veniam rerum qui ratione. Accusamus occaecati voluptatem corrupti ea. Illum facilis sunt nulla blanditiis hic porro. Quisquam quos animi ad consectetur consequatur et commodi. Et adipisci ut veniam molestias quod est est. Rerum eos rem iusto magni et accusantium dicta. Eum iste aut dolorum tenetur explicabo et recusandae. Quia voluptatem sit fugit eos harum non. Voluptas non explicabo maiores iste perferendis dolores. Ullam neque qui voluptas. Explicabo qui et voluptas est dolores. Quaerat quidem est quaerat voluptatibus eum.', '2022-01-18 01:42:47', NULL, '/uploads/thumbnails/article-1.webp', 436, 'Et eum est sit qui. Dolores iste et qui. Qui excepturi consequuntur molestiae ullam.', 'Eos est et repellat id beatae. Inventore quia libero non aut et. Repellendus omnis iusto ipsum. Quia qui quod nemo dignissimos at.', 'A deleniti ut officiis in. Voluptatum numquam sed nemo officia ut unde.', 'aut-sed-occaecati-accusamus-repudiandae-et-quidem', 1),
(87, 110, 'Comment créer une application Web réactive avec React.js', 'Fugiat ducimus est et ducimus voluptatem aut voluptas fugit. Suscipit vero quidem et quaerat natus tempora laborum. Voluptatem ipsam quia recusandae quia voluptates hic. Accusamus praesentium velit assumenda fugiat magni omnis. Vel incidunt labore velit eum. Facere atque qui voluptas voluptatem quibusdam consequatur. Molestiae nisi eaque minus harum cum quo dolore velit. Ipsa maiores a ex consequatur repellat. Officia voluptatem aut perferendis reiciendis autem autem. Voluptas officiis optio aliquam. Est aut qui sed sequi. Eligendi voluptates aut veniam reiciendis deserunt voluptatem. Possimus officia sed laborum aut nam quod qui. Distinctio magni ut laboriosam accusamus tempore at eos adipisci. Fugit voluptatem ab ratione eius in occaecati voluptatum. Consequatur enim et omnis exercitationem qui dolore. Recusandae pariatur ipsam esse quo officiis. Eligendi tenetur et necessitatibus doloremque at veniam amet. Rerum eligendi nam fuga vel quas id. Sunt magni atque reiciendis quae ab. Voluptas dolorum hic veniam. Voluptas unde facere sit cupiditate ex. Qui voluptas optio et odit fugit. Eos voluptates voluptatem tempore quia accusamus dicta. Et vel in nihil maiores. Deleniti distinctio corrupti voluptas adipisci laudantium alias itaque et. Voluptates corrupti ea aut. Exercitationem veritatis qui vero magni doloremque magni. Impedit reprehenderit fugiat magni voluptatem sed. Maiores incidunt neque voluptatum consequuntur facere. Perferendis ut vel iste facilis ut temporibus. Quo laudantium tempora alias inventore exercitationem. Magni est voluptatibus modi nostrum voluptatem et excepturi qui. Accusantium tenetur repudiandae id sint consectetur itaque in. Sunt porro sed corrupti nobis eos ut totam. Perferendis porro qui consequatur quasi. Cupiditate ut error eligendi omnis. Eius officiis rerum veniam culpa et.', '2023-05-25 21:00:57', NULL, '/uploads/thumbnails/article-3.webp', 4, 'Est voluptas autem necessitatibus ipsum. Adipisci eum officia qui quo.', 'Vitae quis qui est qui accusamus. Pariatur eligendi ea eveniet temporibus est. Adipisci harum voluptatibus aut debitis dolores et.', 'Et accusantium qui dignissimos et. Et eveniet recusandae aut. Cum ea recusandae totam dolore eaque.', 'similique-ipsam-earum-consequatur-eveniet', 1),
(88, 99, 'Comment gérer efficacement les formulaires dans le développement Web', 'Eum accusantium rerum id tempora dolores quis nesciunt. Numquam id voluptas soluta optio similique sequi consectetur. Aliquam quae quibusdam dolorem sapiente. Placeat fugiat molestiae quasi perferendis. Similique fuga molestiae molestiae possimus. Dolor ipsum omnis qui omnis enim aut ut rerum. Deleniti consequatur recusandae omnis nobis repudiandae et tempora. Assumenda laboriosam sit voluptatibus numquam consectetur. Distinctio consequatur eaque sint dolor dolores id molestiae pariatur. Ipsum ut dolorem sapiente illum nisi rerum dolorem. Pariatur consequatur dolore voluptate odit eaque odit atque. Ut aut commodi autem et consectetur nam non. Quia facilis esse illum quidem aut necessitatibus non. Molestiae ut consequatur nulla aut eum ratione id. Laboriosam officia laboriosam minima consequuntur qui voluptatibus mollitia. Quisquam reprehenderit nobis cum incidunt dolorum impedit. Ipsum dolores numquam molestias enim vel ipsum dicta facere. Deserunt quaerat numquam rerum repellendus est vitae. Assumenda est voluptatibus voluptatem et autem distinctio. Placeat sint sint maxime qui. Omnis excepturi nam repudiandae ratione nihil. Molestiae est harum molestias qui est quisquam id. Sapiente ut sunt accusantium qui ad. Dolorum eius impedit quo voluptates voluptas aut eum. Eos labore fuga rerum. Est et aut hic rem. Odio odit ipsam qui veritatis quia. Ea voluptas distinctio numquam sit neque. Natus occaecati porro cupiditate ea perferendis est et quo. Voluptas tenetur assumenda ut repudiandae quia. Ut suscipit est aut. Sapiente dolorem repellendus nihil quis nesciunt. Et quia sunt numquam iusto natus similique. Non est deserunt in dignissimos aut repellat sed. Nisi quibusdam et sed est est tempore veniam. Velit suscipit quasi maxime impedit doloribus. Quod magni ut sit illum saepe. Et non commodi tempora suscipit qui ab dolore. Consequatur doloremque quia necessitatibus et laudantium laborum error eius. Quis est veniam dolorem animi voluptatem sunt ut.', '2022-11-28 03:13:34', NULL, '/uploads/thumbnails/article-4.webp', 800, 'Sit eligendi sequi ut ad voluptas qui porro. Ut repellat eos assumenda accusamus unde.', 'Vitae rem dolorum facilis possimus repudiandae. Occaecati sint dicta ab quo. Cum veniam dolore aliquid quis. Et quo tempore dolor quae.', 'Ut quasi quidem deserunt autem. Voluptatem veniam et qui. Voluptatem consectetur rerum voluptatem.', 'voluptas-reprehenderit-itaque-impedit', 1),
(89, 110, 'WordPress est-il utile en 2023 ?', 'Id quo deserunt natus eum. Iure sit in fugit et id voluptatem nisi. Rerum nam qui fugiat eligendi sit maxime. Id molestias quos est cupiditate laborum et. Doloribus qui maiores cum magnam eligendi. Et rem ut quis qui. Delectus totam temporibus aut aut et quos suscipit. Inventore harum non officiis et. Qui omnis ea in. Est nam porro quo quas. Blanditiis minus ut amet aut id et voluptatem. Tenetur blanditiis eos pariatur ex omnis sed facilis. Accusantium consequatur molestiae fugiat debitis dicta architecto commodi. Cum quasi velit aut vel aliquam velit fugiat. Harum voluptas quia beatae consequatur libero. Ut earum libero omnis. Eos similique dicta ut. Ab delectus nisi aperiam et. Ipsam veritatis neque alias culpa vero fugit labore. Nemo aliquid atque sed ab asperiores dolor autem. Consequuntur molestiae at blanditiis rerum. Aperiam a aliquid aspernatur magni. In ut optio doloribus animi libero et. Saepe adipisci in vero est quam voluptates harum. Quaerat magni fugit voluptas adipisci vel qui aut. Nihil voluptatibus aut occaecati suscipit nesciunt maiores ipsum. Autem saepe laudantium voluptates mollitia et animi et quod. Est sed nam ea tenetur qui. Quasi aut omnis libero eos beatae. Et a pariatur non possimus rerum. Tenetur similique velit deserunt neque. Et temporibus autem fugiat deserunt. Non voluptatem voluptas est magni consequuntur quisquam eum. Sunt eum consectetur asperiores vero et. Est aut quia similique et. Vero voluptatem asperiores neque voluptatibus ea nam autem. Omnis voluptates aut aut inventore neque. Voluptate neque veritatis unde omnis fuga dolorem. Quo fugit corrupti voluptates. Voluptate sunt doloremque dignissimos vero. Illo pariatur possimus dolor ea adipisci vel maiores. Est qui consequatur aut possimus ut quia natus. Repudiandae et sequi placeat. Atque debitis deserunt provident neque voluptas. Qui voluptates sed culpa et alias. Dolor tempore a et nisi expedita in nostrum. Voluptatem voluptas dolores est fuga.', '2023-07-28 07:35:08', NULL, '/uploads/thumbnails/article-2.webp', 319, 'Corporis illo nemo molestiae minus est doloribus. Exercitationem rerum non libero.', 'Qui dolorem esse est aut aut beatae. Ex delectus non blanditiis reiciendis minima. Est odit sit alias placeat. Dolores pariatur molestias sit quisquam dolorum perferendis.', 'Consequatur et id cum. Voluptatem animi ex illo harum dolor ut voluptatem. Dolor cum placeat autem.', 'aut-voluptatibus-id-natus-necessitatibus', 1),
(90, 111, 'Les secrets du CSS Grid pour créer des mises en page complexes', 'Deserunt et tenetur enim veniam. Necessitatibus ut cupiditate inventore at sit. Est vitae aut dolorem libero quia a. Quia fugit exercitationem quae. Sit nisi cupiditate ratione sed quo. Molestiae et quo iure et eos qui. Omnis nulla sapiente nulla nostrum laborum blanditiis. Provident autem officiis eos. Dolores voluptatem minima debitis quaerat sapiente sed iusto. Omnis occaecati tenetur qui ea. Voluptate aspernatur ducimus ipsa iure. Perspiciatis et distinctio voluptatem dolorem excepturi. Qui sit sed aperiam dolorum error quidem tenetur. Veniam eius eum iure dolore. Expedita eius tenetur ab suscipit minima. Aliquam corrupti asperiores suscipit eligendi iusto suscipit eaque. Reiciendis magni voluptas et veritatis odio. Eveniet consequatur recusandae et illum nihil autem. Maiores deserunt est et asperiores consequatur qui sapiente. Et sit rerum maiores pariatur. Incidunt ut sint cum in. Et ad expedita repellat sint voluptas neque. Est consequatur et autem ut cupiditate tenetur. Quasi ratione labore facilis deserunt ipsa et qui corporis. Perspiciatis voluptas voluptatibus veniam corporis qui. Qui atque iure maiores suscipit. Corrupti aliquam culpa debitis. Aut in beatae atque aperiam iure quia nemo. Voluptates dolores aperiam quis nesciunt voluptas. Consequatur autem reiciendis aut animi. Ut laudantium numquam impedit recusandae corporis quasi perferendis quam. Dolore soluta voluptatem eum blanditiis. Fugiat suscipit dolore et eos rem facere. Sint soluta et eius blanditiis est quam magni. Sit esse molestiae quas. Veritatis optio incidunt quis eveniet et ut. Eveniet et aliquid totam velit neque dolorem. Maiores in et dolorum doloribus qui laboriosam consectetur. Adipisci dolorum similique et ut ipsum est ipsum eaque. Quo doloribus sed dicta velit nobis explicabo. Repellendus non ab placeat ea magni similique. Quis illum eligendi praesentium ut rerum officiis.', '2021-12-09 02:59:02', NULL, '/uploads/thumbnails/article-2.webp', 451, 'Distinctio ducimus beatae pariatur. Omnis ut et aliquam aut voluptas hic.', 'Praesentium vel dicta vitae sint tempore quia. Ad tenetur commodi repellendus atque nisi occaecati laudantium. Rerum ut cupiditate nihil tempora pariatur ratione.', 'Nihil at inventore mollitia consequatur est in nisi. In ratione qui tempore necessitatibus.', 'minima-quam-voluptatem-itaque-non-aut-unde-nam', 1),
(91, 111, 'Introduction à Docker : facilitez le déploiement de vos applications Web', 'Expedita libero cupiditate incidunt quis dolores vitae dolores. Beatae voluptatem facere vitae amet atque et voluptas dolores. Numquam magni aut omnis. Illo rerum dolores qui quaerat earum cumque in. Aliquam aperiam quod rerum et sit. Illum et dignissimos voluptatibus facere. Laudantium expedita consequatur perferendis animi ab. Consequatur quos quaerat dolore quae eaque. Corrupti tempora consequatur quasi molestias sint molestiae. Ut nihil accusamus in qui tempora. Et explicabo in aut ipsam vitae voluptatem. Incidunt occaecati inventore placeat vel qui sapiente. Nulla tempore placeat voluptatum qui ullam odio. Deleniti iusto expedita id quas laudantium. Est nesciunt velit provident sit. Minima nihil harum dignissimos. Voluptatum possimus nam non dolorem non quasi. Repellendus incidunt omnis labore. Harum aut nostrum doloribus quia veritatis. Quia consequatur aliquam aut id omnis. Est non deserunt quae et. Eius aut dolorem veniam explicabo quia expedita. Officiis ut distinctio perspiciatis molestias sapiente quis doloribus. Dolorum fuga enim exercitationem id beatae ex quos. Minus corrupti perferendis rerum blanditiis omnis. Non enim odio sunt ea ea delectus. Maxime sit in et nesciunt repellendus deserunt dicta iusto. Nemo est rerum magnam ducimus unde sint sit est. Sed odit nisi unde est qui sunt laboriosam. Dolores voluptatem quisquam magnam nemo cupiditate quis quas. Rerum rerum voluptate ut. Nulla ut molestias qui earum dolorem cum. Sed quos quibusdam neque omnis. Architecto et ad porro ipsa aperiam dolore eveniet. A necessitatibus aut ut quia. Facilis autem doloribus dignissimos saepe iste ut exercitationem. Veniam voluptas quae distinctio necessitatibus. Iusto voluptatem ut aspernatur voluptatem rerum delectus dolor. Non animi asperiores exercitationem occaecati. Odit unde hic accusantium autem cum quia aperiam molestiae. Nisi qui maiores quas quos et perferendis. Explicabo officia saepe saepe molestiae non accusamus illo.', '2022-10-18 10:32:35', NULL, '/uploads/thumbnails/article-3.webp', 753, 'At amet a modi unde. Aut laudantium nulla et a et assumenda ea non. Tenetur eveniet est ex neque.', 'Magni fugit magni sed eveniet fuga unde. Asperiores deserunt qui omnis natus. Rerum et rerum amet deleniti aut esse suscipit. Minima ut iste impedit ad voluptas similique et.', 'Dolore eos harum neque fuga. Impedit ea nesciunt aut nisi. Dignissimos similique qui et est.', 'aperiam-id-excepturi-qui-aspernatur', 1),
(92, 110, 'Comment gérer efficacement les formulaires dans le développement Web', 'Molestiae dolorem delectus est aut. Sit et autem ut commodi eligendi et. Quibusdam beatae nostrum aliquid dolores. Unde in aut exercitationem aut. Est mollitia nam aperiam est. Fugiat non explicabo molestiae omnis laudantium quis. Iste dolores distinctio voluptatem deleniti natus harum culpa. Sit esse est rem nesciunt fugiat. Consequatur autem ut esse aut necessitatibus iusto illum. Quidem magnam rem ut tempore quisquam et laudantium. Dolorum voluptates praesentium placeat et. Pariatur quia nihil reprehenderit nobis labore in expedita corporis. Distinctio magnam enim quae eligendi sit. Commodi voluptatem harum tempore pariatur. Incidunt nihil eum quas odit aut nobis porro. A rerum odio ut vel. Eligendi libero aut repellendus et labore repellendus. Necessitatibus itaque quibusdam quisquam earum recusandae distinctio asperiores. Aspernatur ut hic et cumque. Qui eius sequi provident dicta ad expedita reprehenderit. Labore quia ut cumque alias iste. Labore libero et quos explicabo dolorem deleniti. Molestiae pariatur fugiat quo molestiae. Doloribus eligendi perspiciatis amet magnam eos. Expedita error dolorem et commodi at. Amet voluptas optio aut natus. Quod qui laboriosam eveniet porro. Maiores dolor a iste iure. Sit in et aut qui voluptatibus quasi quos. Est sunt non ipsa sapiente. Repudiandae unde voluptatem aliquam saepe molestiae hic. Et maxime dignissimos id iure. Similique et quis neque consequatur numquam. Quibusdam atque iusto quas aut voluptate. Ducimus dolorem deserunt veniam optio blanditiis facilis aliquam sed. Architecto reiciendis enim consectetur sunt quis. Non beatae quia sint est. Sint quia eum eum quia veritatis quia. Voluptatibus consectetur libero delectus pariatur magni tenetur maiores. Esse omnis aut culpa est omnis dolorem eos deleniti. Nihil qui itaque sunt eligendi. Deserunt quod ipsam culpa earum expedita est quia asperiores.', '2023-04-08 17:46:13', NULL, '/uploads/thumbnails/article-2.webp', 665, 'Consequuntur explicabo illum excepturi. Aspernatur consequatur ex sit aliquid nam aut molestiae.', 'Aut eligendi omnis quo sequi quia dicta reprehenderit. Et est doloremque dolor fugit. Sint minima neque asperiores sapiente quia deserunt asperiores. Incidunt harum quasi sit. Quaerat est optio voluptas beatae qui repellat.', 'Id quia in suscipit. Non eaque doloribus sed vel quod qui.', 'veniam-possimus-quia-fugit-voluptas-nihil-placeat', 1),
(93, 106, 'Les étapes pour construire un site Web e-commerce réussi', 'Omnis sed molestiae distinctio ut nam nisi. Voluptatem dolores qui et qui ut assumenda. Eum aut quas delectus quae quo. Aperiam aut nam sint cumque quia. Vel eum consequatur ratione quis iure voluptatem. A expedita occaecati vel ipsum quia. Aut quam vel ut ut officia. Sapiente voluptatem dolorem consequatur ut. Ut corporis in sit est quia praesentium. Nemo vel perferendis hic officiis. Suscipit rerum quod dicta placeat voluptatum optio. Atque aliquam a dolores quam et architecto. Omnis est ut voluptatem reprehenderit. Iste voluptas aperiam beatae. Sed tempore qui quia aut facilis. Nostrum facilis et ipsum eum. Saepe ut voluptatem cupiditate quia. Sit quasi eos fugiat dolorum qui suscipit voluptatem. Totam neque dolorem omnis. Eveniet accusamus hic porro iusto velit. Et libero praesentium animi quis non commodi natus. Sequi rem repudiandae atque optio fuga vitae alias. Voluptas recusandae voluptate molestiae facere sed. Voluptatem rerum impedit nobis rerum velit quia quae. Aliquid aspernatur incidunt delectus tenetur. Itaque nobis sit commodi ipsam reprehenderit quis perferendis quia. Nisi debitis est est sunt doloremque itaque rerum. Optio harum quis id est. Iusto in autem non aut fuga. Omnis et eveniet eos magni eos. Iste quia debitis debitis. Beatae voluptatum quas qui qui officia. Dolorem natus earum quis vitae. Ipsum provident itaque cumque et id et hic sit. Labore non cumque soluta expedita ut in quia id. Ut totam ea qui delectus. Atque culpa quia non molestiae quibusdam. Quia laudantium qui laudantium incidunt ab. Ut qui rerum amet non omnis aut mollitia. Et itaque officiis dignissimos consequuntur omnis corrupti. Nihil illum in similique numquam tempore molestiae. Placeat doloribus maiores atque in. Minus nobis est aut fuga quisquam consequatur. Cumque delectus sit sed blanditiis officia consequatur cumque quidem. Sunt ut velit officiis error provident. Enim odit aliquam asperiores quidem debitis totam qui.', '2021-08-25 00:11:54', NULL, '/uploads/thumbnails/article-2.webp', 393, 'Dolores dolorum inventore in harum alias. Vel commodi minus et odit culpa.', 'Animi qui aut consectetur ad amet minima. Error eaque blanditiis qui quidem.', 'Repudiandae facere ullam qui ea aut est. Suscipit nihil at est repellat cumque voluptatem.', 'explicabo-dolorem-voluptatem-accusantium-nobis-cumque-autem-facilis', 1),
(94, 101, 'Comment centrer une Div ?', 'Sed omnis autem voluptate tempore architecto labore qui. In sit labore repellendus unde debitis aperiam in. Amet ut aut provident praesentium. Eius asperiores quo adipisci. Pariatur magnam explicabo repellendus officiis dolores architecto adipisci. Quis dicta perferendis tenetur. Magnam expedita placeat quia dolorem inventore. Odio id aut eveniet ea reprehenderit. Distinctio quae nostrum consectetur tempore reiciendis architecto. Voluptatem est placeat illum quo. Sequi ab suscipit eum explicabo corrupti iste. Totam repellat dolorum maxime qui blanditiis rerum beatae aut. Non ut delectus minima eos non vero. Harum officia cum delectus iusto ut omnis et. Ut voluptatum quas nulla animi quaerat. Nam tempore et enim molestiae. Quasi minus facilis qui ut illum perferendis voluptatum. Et quo minima eius. A ut repudiandae ex quis ut odio inventore. Error eius eaque maxime non. Ea rem ut voluptas doloribus at. Velit unde cupiditate veniam consectetur. Sed rerum eum incidunt et iusto temporibus ut. Eveniet aut voluptatem ullam ratione modi et. Animi amet accusantium est. Tempore reprehenderit asperiores rerum totam. Ipsa ea debitis modi aut officiis non. Quia id necessitatibus aut hic deserunt dignissimos impedit. Et rerum modi dolorem. Rerum minus consequatur architecto neque quae et. Aut voluptate enim repellendus eum. Accusamus molestiae quod ullam qui blanditiis. Et vel quasi hic deleniti eligendi. Repudiandae delectus non maxime sed quas. Animi cupiditate est est alias et consequatur. Omnis illo est necessitatibus iste est possimus. Dolorem nihil ab incidunt consequatur ut hic. Ex in quia et fuga. Sunt nisi eum dolor perspiciatis. Omnis blanditiis quis commodi dolores soluta nostrum porro. Porro natus modi dignissimos et veniam saepe quam. Ratione ex quas blanditiis omnis quaerat esse. Iste sit tempore ipsum nostrum.', '2023-05-21 22:52:28', NULL, '/uploads/thumbnails/article-4.webp', 444, 'Doloremque id pariatur velit et dolores quia perferendis. Vel reprehenderit ab porro omnis facere.', 'Et suscipit quam id porro praesentium inventore. Voluptatem perspiciatis aspernatur aspernatur non. Nesciunt odio esse reprehenderit exercitationem necessitatibus rerum.', 'Et quos qui officia est et nihil numquam. Aspernatur consequatur qui iusto ut.', 'qui-neque-in-ducimus-aut-numquam-nesciunt', 1),
(95, 103, 'Comment centrer une Div ?', 'Omnis dolor sapiente eum et harum. Corrupti sit est nihil eaque accusamus aut sequi. Totam eos blanditiis enim aliquam saepe. Pariatur velit maxime earum minima repellendus incidunt. Explicabo exercitationem quaerat et quisquam dolor et non. Quis eligendi officiis accusamus porro aut quis ipsam incidunt. Assumenda ratione occaecati autem enim in reprehenderit velit. Occaecati eum expedita esse reiciendis debitis veritatis illum ipsa. Voluptatem recusandae laboriosam in repellendus eveniet amet. Eligendi neque ex qui libero et neque. Ducimus voluptate numquam aut quidem in rerum et eveniet. Quisquam suscipit est magnam sit itaque ut. Non ad officia eum debitis. Voluptate adipisci sed dolores cumque. Pariatur amet sit earum officiis. Sit optio in in veritatis dolore assumenda ut. Repudiandae quisquam quos dolor omnis ut quia veritatis. Sed illum vero qui nihil placeat eos. Earum corporis iusto repudiandae et qui molestias quam. Voluptates quis ullam ea et tempore deserunt. Amet est alias est eligendi blanditiis. Sed harum neque ipsam rerum. Cupiditate fuga et dolores mollitia voluptatem. Voluptatem blanditiis modi architecto corporis eum perferendis. Tenetur inventore exercitationem maxime voluptatibus ut iste rem ex. Odio ipsum deserunt harum recusandae. Sit consequatur nihil aut. Dolores saepe velit et consequatur. Laudantium voluptatem non voluptates nulla sint. Doloremque doloribus est est sit quasi minus. Iusto quae aut vero commodi fugit ut et. Minus necessitatibus error aut expedita. Ut natus dolores vel neque odio quisquam ducimus accusantium. Ipsam voluptatem rerum quia nihil. Aut aut qui ex quia. Eos et sunt eum quidem quia sequi. Quaerat distinctio officia ducimus ex. Suscipit illo doloribus aperiam. Maiores illum ex alias suscipit. Consequatur enim fugiat et vitae ea asperiores autem enim. Et quis ratione non aut delectus. Vel quod pariatur iusto voluptate quos.', '2023-05-09 20:45:22', NULL, '/uploads/thumbnails/article-4.webp', 479, 'Voluptatem natus facilis adipisci laborum. Suscipit libero dolorum quod qui temporibus molestias.', 'Laboriosam aut et sed veniam assumenda fugiat consequatur sint. Sunt consectetur sed error impedit.', 'Corporis ut et perferendis et reiciendis. Iusto et nihil quis quod.', 'laudantium-et-illum-consequatur-incidunt', 1),
(96, 111, 'Les bases du développement Web avec Django : un framework puissant en Python', 'Eos quis illo dolorum ut mollitia id. Rerum voluptatem dolores ea quia quidem. Sit quo neque enim et itaque tempora. Veritatis quia maiores quasi. Culpa quia est tempore. Quia qui voluptate voluptas iste rerum. Occaecati nostrum quia nisi. Consequuntur tempore quasi aut alias velit consequatur. Quis sunt rerum aut temporibus. Rerum vitae reprehenderit sunt ea. Officia magni mollitia rerum qui sit. Ipsam quisquam eos ducimus velit est ex. Qui velit porro reprehenderit nam est aut quis. Eius repudiandae autem quos. Eius illo et molestiae praesentium repellendus officiis iste occaecati. Et saepe odit est. Nobis voluptatem voluptas voluptate accusantium aut ut consequatur. Officiis minima aut natus in. Possimus at et placeat quis vel ut non. Accusantium doloribus in delectus. Aut non consequuntur omnis hic. Hic molestiae iure tenetur omnis temporibus in. Est sed cum repudiandae optio fugit. Fugit ut veritatis qui quibusdam repellat optio nesciunt atque. Voluptatem nihil ut consequatur omnis. Voluptas corrupti eaque dolore voluptatum enim aut eligendi. Nesciunt ex et sit fugiat corporis. Veritatis sit natus dolorum et culpa possimus dolores explicabo. Et autem saepe occaecati aut. Ut quis enim est animi voluptatem laudantium et. Quo a exercitationem voluptate omnis inventore ex. Facere deleniti distinctio quia consectetur sit qui. Corrupti facilis inventore omnis harum quia rerum. Facere omnis porro nostrum. Et commodi ut eaque distinctio nam. Vitae fuga laborum et aliquam. Nihil similique et impedit aut. Veniam ut dolor velit magnam ab. Sed et explicabo minima nam adipisci aut illum. Est architecto quia et adipisci dolorem iusto aut. Quibusdam debitis ratione ea omnis. Dolore vel corporis omnis mollitia eos dolorum aliquam et. Laboriosam ea cum id voluptatum dignissimos tenetur rerum.', '2023-07-24 04:54:25', NULL, '/uploads/thumbnails/article-2.webp', 853, 'Aliquid culpa quibusdam sunt eos. Aut libero quasi aut soluta aut omnis.', 'Deleniti unde perspiciatis quibusdam sint. Sapiente quam ipsum cupiditate qui sit itaque. Sint qui sint ratione ut laudantium vel ut. Non est impedit neque et.', 'Natus eligendi sequi deserunt omnis ut delectus. Dolor odio unde in et voluptatem.', 'sint-omnis-at-omnis-sapiente-unde', 1),
(97, 105, 'WordPress est-il utile en 2023 ?', 'Ipsum est ut perferendis ut. Autem rerum iste aut temporibus. Ipsa sint aut minus mollitia illo exercitationem facere quibusdam. Sunt quae vel et voluptatem consequatur rerum quibusdam fugiat. Reiciendis tempora aliquid amet sed autem. Minus esse quidem officiis aut. Sint doloribus quae vel optio est aut nemo. Pariatur neque amet atque consequatur deleniti temporibus nihil. Sit voluptatem et ea in non blanditiis at enim. Occaecati molestias nam cupiditate optio. Quod explicabo nulla dolores ab placeat. Id debitis harum et consequatur ipsum qui quos. Similique consequuntur aut aliquid dicta. Commodi dolorum hic neque error nisi saepe qui. Nesciunt non rerum ullam non consectetur est. Dolorem perspiciatis et vitae rerum deserunt totam ipsa. Voluptates qui et neque ut velit iste dolor. Eaque velit laudantium deleniti illo est iure. Quo commodi voluptas quisquam et eaque neque tenetur. Autem eligendi nobis molestias aspernatur vitae id laudantium quis. Quia repudiandae blanditiis quia laudantium nesciunt consequatur. Voluptatibus maxime commodi dolorum aliquam ut enim. Molestiae corrupti hic est consequatur enim necessitatibus. Ducimus placeat id architecto facere qui adipisci necessitatibus. Sit facilis nihil eos sed est neque recusandae natus. Labore minus nesciunt voluptatum eos ut earum dolores. Delectus eos voluptatem dolores similique praesentium. Modi earum nostrum iste dolorem ut et libero. Quod quisquam eum nobis quos mollitia dolores. Voluptatibus laudantium nulla dolorem dolor saepe libero. Autem dignissimos impedit eius commodi. Corporis cumque quia est temporibus eaque rerum. Et ad dicta fugiat sit aut molestias velit. Rerum nesciunt blanditiis quibusdam non amet laboriosam voluptas. Nemo in reprehenderit quibusdam illo perferendis debitis explicabo. Nostrum est temporibus aut eum a. Aut repellendus aspernatur eum doloribus. Et distinctio et vel deserunt quae soluta. Sequi unde est iusto optio possimus et. Et laboriosam et cupiditate qui vel ut.', '2023-05-27 03:44:55', NULL, '/uploads/thumbnails/article-2.webp', 36, 'Ut mollitia accusantium vel temporibus. Non tempore deserunt accusantium delectus aperiam.', 'Quisquam reprehenderit saepe facilis odit. Rem ducimus vitae id minima amet eos. Est doloribus praesentium vitae nihil.', 'Inventore dolorem odit eligendi beatae a vitae. Ad ipsum excepturi recusandae accusamus.', 'id-aspernatur-officia-ipsa-sunt', 1),
(98, 106, 'Comment intégrer des animations CSS époustouflantes dans vos projets Web', 'Commodi nemo esse qui earum ratione officiis. Nihil sint voluptate similique amet incidunt nostrum molestiae. Quia provident ut sint molestiae quisquam ullam. Dolores dolore laborum voluptas blanditiis expedita voluptas. Molestiae sapiente quidem soluta illo sed eius reiciendis. Sit dolorem cupiditate beatae at quasi. Enim et provident pariatur corrupti blanditiis. Mollitia modi delectus et provident. Nihil ratione ullam quia autem. Ut sit ea ut. Atque aperiam at voluptatibus et praesentium et voluptas. Ut officia officiis autem voluptatum qui ratione. Et autem quam doloremque neque molestiae aut atque sunt. Corrupti laboriosam sunt a vero. Enim nihil consequatur tenetur vel. Ipsum sit delectus fugit iure dolorum et error. Voluptatem illo in distinctio aliquid porro. Perspiciatis incidunt magni molestiae rerum reiciendis. Veniam quos id aut alias eos. Itaque explicabo aliquid maiores minus sapiente quis. Veniam eaque et enim eius deleniti ab. Odio est fuga veniam sed qui officiis. Autem suscipit impedit molestiae in aut soluta eos. Corporis ea quo cum quia voluptatum. Quaerat accusantium qui aspernatur rerum voluptatem natus aut. Adipisci et molestias sit iusto. Asperiores sapiente autem exercitationem qui quidem nihil. Cumque quia id dolores eligendi est dignissimos incidunt. Illum hic non quas. Possimus sunt aperiam eum. Error in sit voluptates. Vero pariatur nulla est doloribus voluptatem. Qui molestiae laudantium repellendus qui quia quaerat. Dolor labore assumenda sed. Velit magnam et autem explicabo at voluptatem sapiente quo. Qui cumque praesentium expedita sed perferendis. Sed quae nisi ea et nobis porro tenetur nobis. Quis dolore animi error est quia nisi nam. Qui laborum perferendis vel omnis excepturi nihil. Natus sed asperiores et sunt labore. Minima impedit et aperiam qui qui incidunt ea. Saepe cupiditate nulla similique nobis facere doloremque. Repellendus nostrum dicta enim consectetur sed.', '2022-02-18 01:12:08', NULL, '/uploads/thumbnails/article-4.webp', 991, 'Quis sed repudiandae aut consequatur et tempore molestiae. Exercitationem dolores nemo dolor.', 'Et maiores ea totam incidunt totam. Voluptatum dolores quibusdam harum. Magnam maxime animi reiciendis tempora magni odit adipisci.', 'Atque deleniti id soluta porro aspernatur. Quo delectus officia minus rerum aut et.', 'velit-consectetur-et-est-atque-quibusdam-dolor', 1),
(99, 103, 'Comment créer une application Web réactive avec React.js', 'Fugiat voluptatibus eius laborum illum sint in nesciunt. Voluptatum aut assumenda sed eum voluptatum. Nesciunt veniam voluptatem perferendis molestiae rerum. Qui rerum vitae ut impedit odit veniam. Quasi veritatis voluptatem inventore cumque quia. Quas tempore libero voluptas aut neque quis dolores eveniet. Ut hic dolor ut. Rerum qui aut corporis maiores molestiae consectetur eos saepe. Cumque pariatur omnis similique in dicta ipsum. Est et nihil vero maxime consequatur. Corrupti tempora voluptatem officia molestiae vel deserunt omnis delectus. Consequuntur qui in voluptas dolor. Natus provident dignissimos impedit ex ipsam. Facere suscipit sunt similique deserunt rerum aut nihil. Dignissimos fuga eaque totam asperiores impedit sapiente enim. Id et tempora delectus est pariatur laudantium. Neque voluptatem architecto enim. Nihil ut assumenda corporis exercitationem tempore corrupti sunt. Tenetur tempore tempore delectus ducimus iste ut quod praesentium. Molestiae consequatur quo impedit. Soluta veniam et aspernatur aut voluptatibus aut. Ipsa sapiente rem quia minima cum quasi adipisci et. Omnis dolorem placeat et est dolores molestiae. Officia assumenda repellendus quo totam exercitationem et eos. Aspernatur harum fuga ut minus hic quia qui. Officiis omnis praesentium a incidunt. Iste maiores repellendus officia est. Qui dolor quia est. Deserunt quidem porro quasi provident. Et voluptatibus consequatur quia soluta ad dolorem dolores. Temporibus autem eligendi recusandae quis qui ex velit. Enim illum et adipisci impedit. Sed illum sed et quae eveniet amet. Necessitatibus aut repellendus veniam velit quis. Est ipsam quaerat quos mollitia est animi quia et. Tenetur aut est quam deserunt cumque repellendus. Molestiae enim dolores id quia. Ut voluptas eveniet labore assumenda blanditiis culpa. Eum voluptatem illo autem aspernatur voluptates distinctio cumque. Voluptates aut quia consequatur eius.', '2022-03-04 21:26:24', NULL, '/uploads/thumbnails/article-1.webp', 452, 'Sit vero dolores dicta quo animi. Sed nihil vel eaque iure atque. Optio qui velit ad.', 'Quasi distinctio ut porro unde eius porro fugit. Nostrum nam ut repellendus totam. Nemo ipsam iusto quia molestias.', 'Quod animi sit doloremque eos molestiae in nisi. Ut eos nisi fugit.', 'facilis-nesciunt-id-nemo', 1),
(100, 107, 'Découvrez les avantages de l\'utilisation de Vue.js dans vos projets Web', 'Quo enim rerum optio exercitationem culpa libero adipisci. Vel nobis minima amet dolor nostrum. Minus et tenetur sed harum quidem maiores. Fugit aperiam dolores sequi eius quam distinctio laboriosam consequatur. Deserunt vero id qui neque dolore est similique. Et omnis reprehenderit eos distinctio. Ipsa adipisci provident veritatis enim sequi suscipit. Omnis vel quis repudiandae veniam. Aut quia ullam ipsa et id dolores. Nam autem rerum dolorum est adipisci qui voluptatem. Ea recusandae dolore odit molestias tempore nulla quia qui. Architecto doloribus suscipit quibusdam unde laudantium. Omnis accusantium repellat id. Velit delectus similique ea ut placeat. Numquam necessitatibus ullam qui unde. Et blanditiis ut accusantium. Ratione accusamus natus recusandae qui cum. Sapiente facilis animi exercitationem eum sequi blanditiis. Et debitis sit illo sit recusandae. Veniam dignissimos quia neque asperiores ducimus. Veritatis beatae consequatur rerum impedit illo quasi. Nihil molestiae voluptas laboriosam non aspernatur doloribus asperiores. Sit quisquam quae aut explicabo. Facere aliquam optio vero perspiciatis et labore. Qui vel ullam quidem commodi aut et et. Nemo quos quod dicta consequatur minima cupiditate ullam. Corporis dolor harum ut voluptas non ut. Id omnis excepturi ut modi ut consequatur nobis sit. Necessitatibus iure tenetur libero enim temporibus. Eveniet eum et dolorem sunt voluptas eius. Ut incidunt dolor architecto optio voluptatibus. Cumque nemo adipisci molestias qui nostrum officiis. Quia animi labore delectus nemo inventore. Distinctio vitae sit voluptate praesentium repellat sapiente autem. Saepe natus id fuga veritatis et. Vitae repellat dignissimos sed quasi modi. Assumenda doloremque placeat minima autem. Voluptatem unde et occaecati tempora adipisci vero. Omnis et voluptatem at molestias fugiat.', '2022-01-23 01:48:21', NULL, '/uploads/thumbnails/article-3.webp', 34, 'Et adipisci et et quia et non. Doloremque assumenda et maiores.', 'Dolorum molestiae et consequuntur vitae ipsa delectus repellat. Doloribus vitae quia velit dolores. Qui illum in et illo sequi impedit. Iure optio et molestiae possimus temporibus minima ipsam. Reiciendis consequatur recusandae consequuntur.', 'Tenetur dolores officia quidem delectus. Ab et iste consequatur cupiditate ut fugiat.', 'aut-ducimus-possimus-consequatur-a-eius-ipsam-ea', 1);

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
(73, 'HTML'),
(74, 'CSS'),
(75, 'JavaScript'),
(76, 'PHP'),
(77, 'Python'),
(78, 'Ruby'),
(79, 'Emploi'),
(80, 'Reconversion'),
(81, 'Étude de cas');

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
(73, 82),
(73, 83),
(73, 91),
(73, 92),
(73, 93),
(73, 97),
(74, 81),
(74, 87),
(74, 88),
(74, 94),
(74, 100),
(75, 89),
(75, 90),
(76, 83),
(76, 84),
(76, 86),
(76, 89),
(76, 90),
(76, 97),
(76, 98),
(77, 90),
(78, 81),
(78, 91),
(78, 95),
(78, 96),
(78, 100),
(79, 81),
(79, 82),
(79, 84),
(79, 85),
(79, 92),
(79, 94),
(79, 95),
(79, 98),
(80, 83),
(80, 86),
(80, 87),
(80, 89),
(80, 93),
(80, 94),
(80, 96),
(80, 99),
(81, 82),
(81, 84),
(81, 85),
(81, 88),
(81, 91),
(81, 97),
(81, 99);

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
(401, 98, 102, 'Autem et vero sint omnis maxime qui et. Quo reprehenderit illum quaerat quas. Asperiores iusto iste voluptatem aspernatur consequatur. Dolore facere illum qui quia.', '2022-01-25 17:04:34'),
(402, 81, 101, 'Nostrum delectus consequuntur labore perspiciatis molestias. A optio provident animi esse repudiandae provident. Molestias saepe voluptas voluptatem inventore qui asperiores. Eos nam et in.', '2022-07-27 21:37:45'),
(403, 87, 102, 'Quidem repudiandae quas in quia enim molestias. Dolor laborum corporis vitae quo. Aliquid facere et nostrum. Ratione enim id eligendi dolore eaque illum.', '2022-04-14 08:39:47'),
(404, 97, 101, 'Voluptatem voluptate iure vel officiis sint assumenda cupiditate. Et quaerat molestias rerum. Nobis aut qui ut eum autem autem ratione. Ea minus eligendi odio nisi quasi suscipit. Doloribus laudantium omnis error impedit hic dignissimos qui quam.', '2023-04-23 13:59:58'),
(405, 98, 105, 'Facilis eveniet sequi fuga consequatur distinctio. Deleniti quam quo dolore porro tempora.', '2022-09-18 16:00:34'),
(406, 87, 108, 'Ipsa voluptate possimus ut molestiae exercitationem sed. Tempore pariatur perspiciatis non ut rerum. Et voluptatum aliquid magni aliquam autem iste.', '2022-07-08 09:51:29'),
(407, 92, 105, 'Qui a quia inventore perferendis. Eveniet impedit fugiat commodi ad libero ab. Ipsam et quia doloribus quam eaque nam quia. Est amet expedita et itaque eaque quis.', '2021-10-16 03:18:34'),
(408, 87, 100, 'Corrupti et laudantium dolorem quas voluptate. Nobis voluptas quos incidunt maxime. Provident velit eum dicta quas. Accusantium ut ut eum magnam aut.', '2023-03-19 10:19:36'),
(409, 84, 100, 'Sed ut explicabo distinctio doloribus molestiae. Nesciunt et magnam porro omnis velit eos autem. Amet ut et et. Facilis itaque tenetur labore quis. Perferendis repellendus aliquam quas consequatur labore.', '2022-07-30 04:35:04'),
(410, 93, 104, 'Possimus officiis odit atque expedita. Rem consequatur quam tempore enim labore quam voluptatibus. Ratione incidunt nihil accusamus repellat ipsa.', '2023-05-03 05:58:53'),
(411, 97, 99, 'Nihil quidem ex aut ab consequatur nihil exercitationem sint. Exercitationem sed nesciunt optio ipsum non et voluptate. Placeat libero tempora odit repudiandae qui.', '2021-11-27 00:41:47'),
(412, 87, 110, 'Quia saepe aut pariatur. Temporibus quod eos placeat. Quo dolor sed optio.', '2022-06-22 03:06:50'),
(413, 92, 107, 'Nam nemo magni odit voluptatum eligendi similique consequuntur. Eligendi illo minus tempora accusamus deserunt at cum. Voluptas fugit aut accusamus dolores cum placeat. Delectus deleniti error quas assumenda ea eaque.', '2023-05-12 04:33:49'),
(414, 91, 111, 'Ullam atque rem modi molestiae. Ut quod omnis mollitia nemo. Quia vitae aut incidunt qui est culpa. Sed officiis quia et laborum maxime et autem aut.', '2021-12-16 14:41:54'),
(415, 81, 108, 'Modi et dolor corporis dicta nam quia est. Eveniet magnam incidunt architecto. Nemo iure ipsam eligendi fugiat explicabo labore laudantium labore. Impedit eos dolores eligendi perspiciatis libero.', '2022-05-13 08:07:28'),
(416, 87, 108, 'Ut sunt ratione enim et deserunt dolorum. Sed et et illum quasi nobis perspiciatis a quasi. Qui ut eum laboriosam illo enim atque et. Nam harum tempore recusandae eos quae iure corporis.', '2022-08-10 07:50:30'),
(417, 81, 109, 'Ipsam dolores iste enim sed repellat et. Recusandae saepe magni nesciunt maiores accusamus omnis. A iure deleniti qui necessitatibus. Consequuntur saepe repudiandae est tempora quia eius.', '2022-10-22 00:29:53'),
(418, 91, 101, 'Animi est aut eaque rerum expedita placeat animi libero. Praesentium laborum nihil ipsa. Nulla quo temporibus nihil sed.', '2023-05-30 02:31:53'),
(419, 83, 111, 'Ipsam quas autem ratione adipisci impedit. Praesentium non sunt tempora commodi. Facilis tempore quia doloribus ipsum qui consequatur. Suscipit debitis amet eius suscipit ullam eveniet.', '2022-10-03 02:57:36'),
(420, 94, 104, 'Voluptas a officia soluta dignissimos eveniet. Excepturi quis et non aut sed voluptate. Modi repellat est voluptate enim enim.', '2021-12-31 15:18:33'),
(421, 100, 111, 'Vel quam quibusdam consequatur vel omnis in exercitationem incidunt. Magni corrupti voluptatem pariatur. Delectus qui quaerat dolores incidunt ratione aut ex sed. Aut enim minima voluptatibus consequatur autem.', '2022-12-20 13:40:20'),
(422, 99, 105, 'Sed voluptate voluptatem impedit consequuntur quia quidem nesciunt. Et libero suscipit quisquam. Iste id ea sit soluta animi perspiciatis. Dicta doloremque exercitationem provident.', '2022-11-01 21:48:31'),
(423, 81, 104, 'Sit sed possimus in ex sequi nam quo commodi. Eum excepturi doloremque minima et repellendus ratione ratione. Distinctio reprehenderit quas voluptas eos provident quis.', '2023-03-18 13:32:36'),
(424, 87, 105, 'Placeat quas neque dolorum eum nulla tenetur repellendus. Est consequuntur quia voluptates expedita repellat eos ut voluptas. Et quis et incidunt est tempore vel.', '2023-06-02 05:17:42'),
(425, 88, 108, 'Dolores rerum debitis consequuntur eligendi. Eaque eligendi nemo ad eos exercitationem autem. Ad impedit ea itaque pariatur voluptatem.', '2022-04-12 00:43:09'),
(426, 85, 108, 'Sit voluptatem laboriosam omnis veniam harum eaque. Voluptatibus eos eos quidem. Necessitatibus ipsam repellendus rem et aspernatur. Deserunt neque aut eligendi itaque voluptatibus est illo.', '2022-06-09 05:06:37'),
(427, 100, 99, 'Dolorum molestiae beatae rerum mollitia adipisci. Repudiandae animi qui expedita quia minima magni unde. Velit qui velit non.', '2022-04-22 16:09:02'),
(428, 98, 103, 'Illum aut aut rerum eos sit. Rerum error et deleniti vel rerum exercitationem vitae.', '2021-11-08 10:46:52'),
(429, 89, 109, 'Commodi quo doloribus id quisquam provident quod. Voluptatem cumque nihil repellendus doloribus facere voluptas animi. Debitis neque dolor est recusandae nihil quasi exercitationem.', '2022-09-04 23:16:07'),
(430, 92, 110, 'Iusto natus voluptate explicabo quisquam delectus. Debitis aut dicta asperiores saepe laudantium. Excepturi sed sit velit.', '2021-08-29 02:27:33'),
(431, 97, 111, 'Molestias omnis vero voluptatem corrupti reprehenderit exercitationem eligendi reprehenderit. Quos explicabo et similique. Nesciunt nulla excepturi recusandae sit.', '2022-10-05 04:26:20'),
(432, 100, 108, 'Aut quam quaerat fugiat doloremque vel aspernatur eum. Totam consequatur facilis consequatur quibusdam porro dolorem impedit quis. Deserunt voluptas officia quia rerum. Et dolore omnis iusto.', '2023-02-23 10:32:16'),
(433, 87, 105, 'Nostrum iure aperiam et labore et nisi deserunt. Culpa qui velit eum voluptates in necessitatibus nesciunt eius.', '2022-03-21 23:14:53'),
(434, 94, 100, 'Aut sint nulla doloribus cumque. Quae ipsa pariatur nisi omnis recusandae corporis. Quia dolorum eum rerum cumque architecto repudiandae. Sapiente soluta aperiam expedita. Similique dolorum esse omnis quas et.', '2022-03-21 20:01:06'),
(435, 100, 106, 'Iusto perspiciatis velit eligendi ipsa. Atque laboriosam qui et mollitia quas aut. Id mollitia rerum non aut voluptatibus facilis fugit quod.', '2021-10-25 12:02:29'),
(436, 89, 103, 'Ducimus nisi dolores cum distinctio corrupti dolores est. Excepturi incidunt culpa cupiditate amet molestiae. Omnis eius consectetur numquam ut ullam. Quia qui fuga voluptatem eum ut sint.', '2022-03-19 16:35:18'),
(437, 82, 103, 'Et tenetur nulla similique voluptatem est iste dolores. Sint beatae libero tempora ipsa praesentium unde. Sunt odit a voluptas voluptatum.', '2023-04-19 01:13:16'),
(438, 82, 105, 'Ut placeat laboriosam ut aut adipisci. Ex consequatur et voluptas cupiditate autem. Tempore soluta iure commodi impedit. Est eveniet tempora autem.', '2022-01-01 09:35:52'),
(439, 97, 107, 'Earum numquam non dolorem cupiditate eos. Velit cupiditate voluptas ipsam architecto. Perferendis enim ut quo asperiores ut id quaerat qui. Tempora exercitationem cum quis iste.', '2023-02-21 08:58:29'),
(440, 85, 109, 'Vero blanditiis voluptatum at sint eum illum numquam. Voluptate cumque occaecati quaerat vel quaerat neque. Aliquam dolorem veritatis minus quam quod velit. At rem minima esse suscipit reprehenderit. Sed omnis explicabo beatae ea pariatur qui.', '2023-03-24 21:52:17'),
(441, 91, 107, 'Molestiae dolor animi et non at veritatis. Quo dolor et est. Non sunt nesciunt sunt dolore repellat. Perspiciatis ducimus eius aliquam. Praesentium et amet distinctio quae suscipit veritatis. Et earum ut ab officiis. Enim error ullam doloremque.', '2021-12-15 17:32:16'),
(442, 99, 108, 'Labore numquam aut incidunt dolorem dolorum. Aut tempora et assumenda eum consequatur. Rerum tempora animi libero cumque minus aut. Nihil dolores iusto modi saepe. Nihil iure id sint. Possimus eos est consectetur.', '2022-12-13 23:42:04'),
(443, 85, 103, 'Numquam iusto nostrum voluptate possimus facere. Inventore ipsa laudantium quia veniam error velit aut. Voluptatibus consectetur atque doloremque ea quo et maxime quasi.', '2022-09-01 03:08:20'),
(444, 83, 104, 'Eligendi eveniet et repudiandae adipisci fugiat reiciendis. Pariatur enim excepturi occaecati doloribus molestias. Qui voluptatum beatae ducimus excepturi omnis. Quas ut magni numquam harum itaque qui veniam suscipit.', '2023-03-06 03:04:57'),
(445, 86, 99, 'Possimus dolores doloribus vel non accusamus voluptatem recusandae maiores. Blanditiis atque omnis soluta. Voluptatem excepturi impedit iusto amet quos et. Tenetur ullam velit pariatur odit alias.', '2022-05-19 04:38:48'),
(446, 100, 104, 'Deserunt eum est dolores inventore autem. Rem doloribus earum quia aut impedit voluptatibus nobis exercitationem. Labore eveniet dicta adipisci placeat. Itaque doloremque quas labore velit.', '2022-10-23 20:31:13'),
(447, 94, 101, 'Rem reprehenderit sed et vel omnis dicta sed. Dolor sit sint tenetur dolor natus quis deserunt fugiat. Deleniti omnis iste dolor sed tempore quia. Rerum fuga ea modi libero iste possimus facere.', '2022-10-24 06:44:36'),
(448, 82, 106, 'A maxime ipsa voluptatem optio. Eum non eaque consequuntur vel esse qui. Magni enim sunt quod modi sunt qui itaque omnis.', '2021-08-18 00:48:23'),
(449, 92, 110, 'Hic quam sunt dolores. Veniam voluptatum minima voluptas esse. Nisi rerum facilis dolores perspiciatis qui.', '2022-11-26 13:45:01'),
(450, 100, 109, 'Rerum ipsam reprehenderit eum voluptates unde. Voluptates est est quod necessitatibus nemo sunt blanditiis labore. Consequatur adipisci tenetur dolores quaerat sint quisquam vel.', '2022-05-17 00:41:45'),
(451, 84, 103, 'Ut ullam quo enim hic fugit. Dolore saepe aut pariatur eos architecto dignissimos. Dolor esse illum sequi dolor voluptate facilis tempore.', '2021-10-13 22:07:26'),
(452, 89, 99, 'Magni quod autem delectus et delectus dolores illo. Vitae occaecati deserunt consequatur laudantium sed rerum. Enim deserunt officiis et sed autem exercitationem.', '2022-04-25 16:23:12'),
(453, 88, 104, 'Saepe assumenda beatae quam quaerat sunt. Sit maxime nihil pariatur cumque mollitia. Natus nihil voluptas pariatur ad est repellat. Laboriosam optio voluptatem ea id mollitia praesentium fugiat.', '2021-10-31 13:57:49'),
(454, 95, 101, 'At omnis nihil eveniet voluptatem ipsa ea. Voluptatibus dicta occaecati atque voluptas. Quaerat molestiae veritatis in quibusdam.', '2021-09-11 14:57:45'),
(455, 83, 101, 'Corporis reprehenderit maiores doloremque ut. Sit exercitationem cupiditate aut id unde ipsum perspiciatis. Ducimus voluptatem hic fugit neque. Iure ipsum modi cum tenetur qui consequuntur.', '2022-12-10 20:06:21'),
(456, 84, 111, 'Nostrum aut nulla non mollitia ea sit. Ad exercitationem dicta magni quidem minima similique delectus. Cum quae ex repellat cum incidunt assumenda iusto.', '2023-04-03 01:48:55'),
(457, 99, 103, 'Animi nihil doloribus exercitationem esse. Molestiae sapiente totam optio odit commodi occaecati. Nostrum dicta ratione iure at. Possimus voluptates nulla doloremque qui saepe accusantium excepturi.', '2022-08-12 09:13:43'),
(458, 87, 111, 'Ut quo qui sit illum quidem nihil esse. Et mollitia natus est et. Quia qui est assumenda nihil eos enim. Nam aut recusandae aliquid sequi magnam.', '2021-11-28 12:07:06'),
(459, 95, 104, 'Omnis iste reiciendis nulla. Eaque ea tempora pariatur cum molestiae. Architecto consequatur qui qui ab sint sed dolorem quis.', '2021-09-01 20:12:38'),
(460, 88, 106, 'Debitis qui sequi ipsam delectus libero quam ut. Quod qui earum corrupti perferendis earum. Cumque expedita commodi vero est. Facilis rerum alias ut ea.', '2021-12-10 05:04:45'),
(461, 90, 108, 'Ut distinctio quia quod qui dicta et doloremque. Praesentium qui odio unde quam quo. Vitae id eligendi qui officiis velit inventore neque. Quam qui id molestiae dolor sed accusamus.', '2021-08-23 09:17:36'),
(462, 84, 110, 'Unde architecto atque omnis minus. Dolores et saepe molestias aliquam et odit. Necessitatibus ut qui dolorum cum. Quia nihil omnis et reiciendis magnam quia. Nam aliquid doloribus inventore asperiores. Delectus quam animi accusantium labore ipsam.', '2022-09-03 13:04:13'),
(463, 91, 107, 'Tenetur exercitationem velit commodi hic. Minima non temporibus et voluptates veniam. Magni sint non non qui. Nam vel non cumque iusto. Similique aut sit tenetur est. Reiciendis aut porro repellat animi sequi et quia. Voluptas beatae sit eius aut.', '2022-05-22 11:19:42'),
(464, 96, 107, 'Porro sed rerum quia et laborum voluptas unde. Est omnis ea vero totam. Et magnam possimus qui unde sit sed. Dolore quia earum asperiores. Minus sunt modi quas est omnis. Et ut est ut natus.', '2021-10-06 17:02:06'),
(465, 86, 107, 'Dolores ab nihil est voluptatem esse odit libero et. Minima rerum reiciendis quia corrupti dolorem. Aut mollitia quo repudiandae iure omnis.', '2023-03-05 14:41:27'),
(466, 85, 111, 'Earum et dolores repudiandae quas ut. Praesentium voluptatem quae ullam suscipit et perferendis eius. Ipsum tenetur libero molestiae ducimus et magnam.', '2023-05-19 08:22:39'),
(467, 99, 101, 'Omnis et id expedita aut dolorem et voluptate. Facilis natus non unde consequatur totam est ducimus. In ratione ut laboriosam sequi magnam et. Perferendis vel laudantium totam velit non repellendus.', '2022-07-24 11:04:28'),
(468, 96, 99, 'Rerum dolor totam in nulla vero similique dolorem. Repellendus necessitatibus necessitatibus dolor ipsum officiis eaque. Eligendi consectetur voluptatem expedita voluptates magni et.', '2022-10-21 14:38:22'),
(469, 92, 111, 'Explicabo aperiam est ut sed aliquid earum. Fugit ut exercitationem corporis debitis. Autem suscipit quod esse corporis. Qui error laboriosam recusandae ea labore aut fuga odit. Consequatur voluptatem quod ad iure est.', '2023-05-05 10:46:22'),
(470, 93, 111, 'Accusamus aperiam nesciunt et eaque recusandae ut. Incidunt sit neque eos. Esse quisquam natus quam laboriosam consectetur officia saepe dolores. Iste eos suscipit debitis et hic qui esse.', '2021-12-09 02:53:00'),
(471, 99, 99, 'Sit sed ut amet aut quidem veritatis suscipit neque. Quidem error sint nobis quia aliquam labore. Excepturi voluptatem omnis veritatis corrupti consequatur exercitationem. Sed aut quam quasi doloribus commodi.', '2022-12-06 09:07:18'),
(472, 98, 108, 'Cum eos est quasi aperiam. Et qui ut natus sint. Sint dolore et dolor omnis excepturi. Magni impedit quia voluptatem ipsa hic esse.', '2021-11-25 19:11:01'),
(473, 84, 107, 'Vel rem et enim facilis. Veniam non dolor aut provident molestias tempora incidunt.', '2023-02-14 22:14:05'),
(474, 96, 101, 'Enim sint blanditiis magnam eligendi qui. Ea facilis quae aut laudantium quam saepe aut modi. Consectetur tenetur dolorem nulla tenetur. Nihil veniam fugiat et perspiciatis minima consequatur culpa.', '2021-12-02 04:47:44'),
(475, 85, 100, 'Autem aspernatur veritatis totam nihil minima. Velit dolores tempore deserunt dolorem error tenetur ullam. Sapiente animi aut optio eveniet.', '2021-11-09 22:34:29'),
(476, 82, 105, 'Culpa eveniet dolores alias aut consequatur et sapiente. Voluptatum sunt dolorem aperiam consectetur quia. Asperiores eligendi voluptas eveniet. Et animi ut nulla quaerat excepturi et laboriosam.', '2022-10-06 11:10:51'),
(477, 90, 110, 'Ab est excepturi ut quia eum velit perferendis. Vel error quidem sed et facilis non quisquam. Non nihil vero magnam velit rerum.', '2021-09-07 08:36:59'),
(478, 100, 106, 'Voluptatem omnis possimus qui voluptatem in. Autem occaecati aut facere tempora odio. Eius est rem nihil occaecati magni. Dicta exercitationem ducimus iure consequuntur quibusdam labore mollitia.', '2021-12-24 11:21:47'),
(479, 89, 108, 'Unde error sapiente odio nulla itaque assumenda. Qui nihil accusantium magni est culpa ut corporis.', '2023-07-13 23:03:00'),
(480, 98, 105, 'Fugit necessitatibus consectetur sunt et consequatur fugiat ipsam. Qui qui occaecati dolor dolorem. Amet ut excepturi et sunt. Quo quia exercitationem totam quia perferendis quia est dolor.', '2023-06-19 05:58:26'),
(481, 95, 107, 'Voluptates architecto omnis et ut pariatur. Nesciunt minima aperiam enim itaque dolores exercitationem. Voluptatem doloremque corporis facilis deserunt.', '2022-04-03 09:53:54'),
(482, 92, 107, 'Et aut odio deleniti totam. Tempora ut ipsa non sit odit. Autem fugit architecto voluptatem aut.', '2022-08-13 15:11:58'),
(483, 81, 110, 'Voluptate eveniet ut et voluptatem a officia amet. Accusantium eligendi reiciendis rerum sequi. Molestiae reprehenderit veritatis amet voluptatem architecto quo et. Illo qui harum itaque consequatur ipsa omnis dolor. A aut aut eos.', '2023-03-25 12:03:42'),
(484, 91, 110, 'Dolorem expedita magni sit ut nemo excepturi. Nihil eaque non similique maiores. Eum enim numquam voluptates in consequuntur in labore. Ipsa quis debitis a ut. Temporibus quis reprehenderit aspernatur vel.', '2023-05-24 21:41:57'),
(485, 97, 106, 'Qui voluptas fuga porro minima. Officiis nobis quidem molestiae et nam cum mollitia. Deleniti qui sunt corporis cumque in eius.', '2021-11-23 12:54:58'),
(486, 82, 104, 'Non voluptatum nihil hic quae. Laudantium dolorum deleniti distinctio vero temporibus nisi. Ut atque saepe nobis assumenda repellat.', '2023-02-19 03:55:41'),
(487, 92, 102, 'Voluptatem ullam tempora a animi possimus voluptatum. Voluptatem quasi aliquid quaerat commodi. Modi a harum in et et odio omnis quasi.', '2022-07-21 17:19:46'),
(488, 83, 101, 'Eaque incidunt necessitatibus sed quisquam rerum esse quia. Vel ut nesciunt itaque laboriosam eligendi perferendis. Ipsam cum aut id aspernatur nihil quasi.', '2021-10-31 23:21:07'),
(489, 95, 100, 'Et praesentium non aut quo rem voluptatem facilis. Aut odit quia minima molestiae. Et tenetur quas et repellendus ut. Blanditiis sit pariatur natus ut. Quasi laudantium omnis enim sed alias.', '2022-07-10 04:33:28'),
(490, 99, 110, 'Aut dolor architecto cum totam sint magnam sit. Sapiente illo temporibus voluptatem quaerat voluptates quis nostrum. Dolorem qui sit animi sunt quia. Qui harum est quos eius dolorem at ipsam.', '2023-07-08 20:34:11'),
(491, 95, 105, 'Quam aperiam ipsa eum pariatur accusantium reprehenderit. Tempore odit qui aperiam ad et exercitationem qui. Eos quo ratione perspiciatis nesciunt rerum quisquam aut. Harum veniam esse qui voluptates totam ea cupiditate sunt.', '2022-01-30 04:22:21'),
(492, 94, 109, 'Et dolore in aut rerum labore sed. Nostrum reprehenderit minima repudiandae molestiae. Ex velit vero et voluptatem. Voluptatibus consequatur rerum officia repellat et veniam placeat.', '2022-09-16 13:44:22'),
(493, 81, 105, 'Eveniet beatae qui id sequi odit labore et. Recusandae vitae dolorum aut asperiores repellendus. Quaerat occaecati quas incidunt laborum. In non dolores dolore tempora aliquid qui aliquam. Earum dolor ea repellat sed.', '2021-08-10 20:21:09'),
(494, 83, 109, 'Vero laboriosam quo porro non minus ullam. Quisquam sed suscipit minus mollitia et libero. Qui accusantium vero sed perspiciatis inventore sunt. Eos non facilis iure dolor porro deleniti a. Ut labore expedita iure id maiores modi quis et.', '2021-09-13 05:10:05'),
(495, 90, 99, 'Quam aut non ab consequatur. Iure tempora aut labore molestias similique rerum. Consequatur eveniet et enim nesciunt sit.', '2022-06-12 21:52:37'),
(496, 84, 108, 'Ut repellat necessitatibus rem deserunt consequatur. Omnis nulla sint nihil ea ullam odit. Ipsa nostrum nemo amet doloribus ducimus. Est consequatur animi porro rerum est.', '2022-12-04 08:13:52'),
(497, 83, 107, 'Nam praesentium aliquam molestiae dolorum nam ex eius. Est aut ipsum atque dolorum. Minus eligendi non porro non soluta necessitatibus ut.', '2022-03-08 08:17:04'),
(498, 89, 101, 'Quod a numquam culpa rerum. Distinctio consectetur ut doloribus suscipit praesentium corrupti. Velit perspiciatis voluptatem id nisi rerum quod ut. Repudiandae voluptatem eaque et omnis.', '2021-10-12 02:38:45'),
(499, 83, 104, 'Non et sit quasi qui autem magni. Quam neque qui voluptas et delectus vel. Atque quasi repudiandae qui explicabo. Quasi enim eius eos est.', '2021-08-11 22:45:21'),
(500, 96, 102, 'Alias nam repellendus voluptatem enim. Vitae distinctio tempora quod sit voluptas sequi.', '2022-07-22 07:55:39');

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
(99, 'admin@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$Ubx7axB8MJA92AJuIGqFLOXvI2OHmOcQ5fhdBsyJpKRk/FUeoixES', 'Admin', NULL, NULL, '2023-08-10 09:37:05', NULL, '/uploads/avatars/default_avatar.webp'),
(100, 'editor@gmail.com', '[\"ROLE_EDITOR\"]', '$2y$13$3vJ2Ydij2Fi4g3JdN7QNxuKCKmHwlva6lSNZq3nDzC/MHNLi1iSq2', 'Editor', NULL, NULL, '2023-08-10 09:37:05', NULL, '/uploads/avatars/default_avatar.webp'),
(101, 'test@gmail.com', '[\"ROLE_USER\"]', '$2y$13$LnGaahJcHHss1LufTz.P8e0Y2BQi45ZooCvB6ff4mbdstT53zIzNS', 'Compte de test', NULL, NULL, '2023-08-10 09:37:05', NULL, '/uploads/avatars/default_avatar.webp'),
(102, 'Java_Not_Script174@yahoo.com', '[]', '$2y$13$sG5kBcuciq.M408MQEdssOdyuMd5kVQK4V2.e/zaZyBWu1rDpaWY.', 'Java_Not_Script174', NULL, NULL, '2023-08-10 09:37:06', NULL, '/uploads/avatars/default_avatar.webp'),
(103, 'Java_Not_Script170@hotmail.com', '[]', '$2y$13$D83S3xbFQBov96FRVHAj/ufv3FpsFZBY4YWSQ8xpKNL5DBm.zndlC', 'Java_Not_Script170', NULL, NULL, '2023-08-10 09:37:06', NULL, '/uploads/avatars/default_avatar.webp'),
(104, 'Totally_a_real_person248@gmail.com', '[]', '$2y$13$75f4xnF9R7swD3EwV17JGu4BfkqkrM1qZTQDs54JwJ7HYx86ynd56', 'Totally_a_real_person248', NULL, NULL, '2023-08-10 09:37:07', NULL, '/uploads/avatars/default_avatar.webp'),
(105, 'Extreme_React355@gmail.com', '[]', '$2y$13$4usSZE.4LYtouvIQkoNCFOs07rou1nOcruNh/gcBfgP1U6k9viIWG', 'Extreme_React355', NULL, NULL, '2023-08-10 09:37:07', NULL, '/uploads/avatars/default_avatar.webp'),
(106, 'JavaScript_Savior200@gmail.com', '[]', '$2y$13$95lfbqGZGyuAqbjyvAshtOfBy0LzOXjGGZXgK/bG8/7d9N.blkwLC', 'JavaScript_Savior200', NULL, NULL, '2023-08-10 09:37:07', NULL, '/uploads/avatars/default_avatar.webp'),
(107, 'Totally_a_real_person122@gmail.com', '[]', '$2y$13$Jx0Czrq0vMmPMkxHGXP5G.UXMdeHPbWO5AjGG3oDfDnngAL/nWN1G', 'Totally_a_real_person122', NULL, NULL, '2023-08-10 09:37:08', NULL, '/uploads/avatars/default_avatar.webp'),
(108, 'Dev_King181@gmail.com', '[]', '$2y$13$/flkEw31pVCAfPI522h96ecMw7n8XBWGe7/eqgtlP9cMLmiUNYj56', 'Dev_King181', NULL, NULL, '2023-08-10 09:37:08', NULL, '/uploads/avatars/default_avatar.webp'),
(109, 'Not_A_Number66@yahoo.com', '[]', '$2y$13$27w8TJ7LnekqpT5MztpvBudTJUJ3mWMBM/VR3nw53epUzUtXJhEmS', 'Not_A_Number66', NULL, NULL, '2023-08-10 09:37:08', NULL, '/uploads/avatars/default_avatar.webp'),
(110, 'Code_Master333@hotmail.com', '[]', '$2y$13$A6D9TAm8LTTLWrI1Lz96C.ZBD2uF7DgoSNcnidGXDjK.lonVGTlxO', 'Code_Master333', NULL, NULL, '2023-08-10 09:37:09', NULL, '/uploads/avatars/default_avatar.webp'),
(111, 'Monthy_Python84@gmail.com', '[]', '$2y$13$QqgGHHgL000JUc4oZgj.gulkRo/X6cygKZrBubSQ38hp5jI2hPRhW', 'Monthy_Python84', NULL, NULL, '2023-08-10 09:37:09', NULL, '/uploads/avatars/default_avatar.webp');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

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
