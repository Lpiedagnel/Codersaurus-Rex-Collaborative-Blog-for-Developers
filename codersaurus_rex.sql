-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 10 août 2023 à 10:11
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
(101, 124, 'Comment intégrer des animations CSS époustouflantes dans vos projets Web', 'Debitis sint soluta animi non. Qui est dignissimos neque voluptate. Autem aliquid vel sint velit dolorem iste aliquam. Doloribus dicta harum libero in tenetur eos. Aut eaque accusantium quaerat minima est quisquam officia. Eligendi enim eaque tenetur molestiae asperiores non eum. Recusandae velit omnis libero ipsa possimus aliquam. Perferendis aliquid aut vel cum cupiditate reprehenderit voluptatibus. Officiis et ea natus quia. Voluptatem quam voluptas aliquam aut saepe. Tempore assumenda ab eveniet animi aspernatur non. Necessitatibus totam eos cum et recusandae. Dicta delectus voluptatibus accusamus sit sunt autem. Sapiente ut consequatur similique fuga neque sed qui. Impedit eos facere enim et fuga pariatur voluptas qui. Neque similique maxime eum soluta repellendus quo dolore. Et ea placeat exercitationem corporis eos hic velit. Fuga rerum delectus iste soluta sit voluptatem. Consequatur odio soluta id. Enim consectetur ut est deserunt qui. Dolorem id voluptas provident beatae ut repellendus consequuntur. Labore ut dolorum aut voluptas inventore dolor. Accusantium dolore quo fuga exercitationem nisi aliquam aut. Id natus et repudiandae vero. Aliquam quasi consequuntur nam eos. Nam et et tempore et impedit nemo. Similique doloribus iste velit eligendi pariatur. Aut voluptatum consectetur et in. Debitis voluptas velit in rerum. Illum ut qui dignissimos omnis sed eum natus. Molestiae iure est ex. Et praesentium minus ipsa facere eos. Et rem earum illo quae. Excepturi libero voluptas eos perspiciatis dolorem. Illum ratione recusandae similique. Blanditiis quia nisi dolore. Iusto nulla dolores sed qui. Quos architecto sequi voluptas corrupti quod maxime a. Culpa voluptatibus officia debitis maxime consequatur eligendi aut. Quia ut exercitationem quia aliquid sit minima sunt. Nemo molestias eum voluptas voluptatem qui explicabo ut.', '2021-12-25 05:55:13', NULL, '/uploads/thumbnails/article-2.webp', 767, 'Natus id molestiae vel ratione. Ducimus laudantium voluptatem minus aperiam vel sint.', 'Ut sunt quidem nihil qui. Ut sed dolorem recusandae. Quia error ullam officiis doloribus. Cumque excepturi quo est illum commodi consectetur. Aut dolorem quidem mollitia autem quo.', 'Vero earum assumenda sit natus hic. Est voluptas tempora libero.', 'blanditiis-ducimus-eius-aperiam-veniam-corrupti-asperiores', 1),
(102, 119, 'Les tendances du design Web à suivre en 2023', 'Distinctio non perspiciatis dolorum nesciunt beatae debitis numquam. Quo assumenda alias aliquam doloremque facilis ducimus laborum. Ab facilis a voluptatum ut. Ut illum aut quia. Error reprehenderit esse ipsam magnam. Autem fugiat quia laborum adipisci perferendis. Dolorem ducimus necessitatibus rerum accusamus nisi iure sit. Ex quasi ipsa in repellendus enim. Vel soluta voluptatem corrupti consequatur et recusandae aut. Blanditiis at tempora facilis enim similique ea. Vel quaerat assumenda iste vitae optio est minus. Rerum laudantium laudantium nam quia atque. Nobis sequi et sint et nihil. Autem reprehenderit vel atque aliquid commodi vero. Eos nulla unde non quo et deserunt ex. Est autem magnam qui molestiae. Et perspiciatis quia quam quasi aut laboriosam tempore dolorum. Ab consequatur quia id voluptatibus animi quia. Ipsam laborum quia autem eos pariatur. Maxime quas reiciendis molestiae ducimus cumque. Ipsa totam impedit reprehenderit. A minima neque sed non sit. Dolore minus magnam adipisci iure sapiente pariatur. Autem distinctio accusamus repudiandae incidunt aliquid adipisci cumque. Et veniam et aspernatur molestiae ut. Omnis cumque assumenda iste nemo velit enim. Explicabo ut quisquam neque voluptatum et voluptas. Cupiditate sint consequuntur voluptates voluptatem maiores excepturi. Dolorem velit saepe iure aut dolor. Velit minus ipsam voluptates et magni officia. Illo debitis est et ea enim necessitatibus dolores. Unde odio quos harum laboriosam ipsam reiciendis. Qui ducimus nam amet voluptatem dolores ad. Et doloribus occaecati voluptatem vero totam harum. Eum consequatur consequatur fuga qui mollitia et. Impedit aut omnis nisi et alias. Quibusdam beatae a amet fugit fugiat. Accusantium beatae architecto optio porro. Voluptatem ut dolor maxime qui maxime commodi. Sunt repellat sint quos numquam odio.', '2023-05-03 18:08:38', NULL, '/uploads/thumbnails/article-1.webp', 930, 'Saepe consequatur error quis tenetur. Provident consequatur quam non quis quia.', 'Quae neque ipsum fugiat et suscipit corporis. Rerum unde deserunt blanditiis adipisci. Cumque quibusdam iusto qui ab. Id impedit eum consequatur qui numquam.', 'Quo odio rem facere iure commodi. Veritatis aut laborum culpa aut ut.', 'ab-expedita-eos-doloribus-amet-ipsa-et-praesentium-molestiae', 1),
(103, 120, 'Les tendances du design Web à suivre en 2023', 'Iste error aut in veritatis. Hic tenetur est vel error accusantium. Quia animi et iste rerum qui exercitationem. Sint aut est quia tempora magni. Molestiae eius inventore ut quibusdam numquam totam nisi. Quis accusamus nesciunt nobis ipsam qui. Rerum dolores autem eaque velit facere ut ut. Molestiae delectus facere hic voluptas. Ut maxime et corporis est natus saepe. Ut sunt laborum velit eligendi. Magni beatae illo accusantium repudiandae adipisci error consequatur. Est amet voluptatum quibusdam ut. Debitis hic odit natus quae et deleniti magnam. Quos velit molestiae dolorem. Quis ut dolorem aut. Molestias sunt asperiores facere et iste est. Iste delectus provident dolor tenetur consectetur repellendus. Non adipisci et enim aperiam enim. Illum sint velit non veniam vel id suscipit. Eveniet molestiae laborum aut maiores dolorum dolores. Omnis sit tenetur quod quos. Aut rerum maxime qui soluta. Possimus error commodi id vitae illo quasi provident. Expedita praesentium aut illo rerum dolores nisi qui. Et vel asperiores praesentium officiis omnis qui nesciunt quas. Laborum excepturi in deserunt asperiores hic vel voluptatem. Sunt ipsum perferendis illo quam. Totam aut occaecati voluptates temporibus sed voluptatibus. Omnis non molestiae cum iusto. Tempora sed rem dolorum blanditiis. Reiciendis sed est sint in. Quos ea voluptas sit sit. Quas hic magni veritatis quo. Adipisci consequatur et nihil maxime aspernatur nam quia odit. Voluptatem itaque necessitatibus autem et laboriosam. Quisquam in a accusamus voluptas. Deserunt aut dolor totam libero natus. Iure molestias voluptates ea nihil odit dolorum recusandae. Dolorum est libero perspiciatis. Voluptatem aliquid sint voluptatum eveniet veniam quis. Ipsam ut sequi ut quia odio. Tempora quia expedita sint consequuntur. Totam dicta dolor rem repudiandae. Necessitatibus animi voluptatibus ut consequatur. Ratione laborum ducimus autem quod suscipit delectus.', '2022-06-22 02:40:48', NULL, '/uploads/thumbnails/article-2.webp', 860, 'Totam minima ut quos perferendis at repellat. Quisquam sed aut quia sequi.', 'Corporis rerum amet unde pariatur eum similique. Debitis porro officiis ipsum adipisci est. Repudiandae explicabo qui deserunt.', 'Molestias tempore soluta fugit eos. Ex dolorum inventore deleniti qui itaque quidem.', 'vel-consequatur-eos-rerum-natus-temporibus-est', 1),
(104, 114, 'Faut-il se réorienter en Dev Web ?', 'Exercitationem saepe quas non aliquam facere. Vitae eaque delectus dolor ut aut non. Voluptatibus ipsum temporibus consequatur libero. Voluptatibus doloribus aut occaecati ut ipsam. Modi praesentium repellat iusto. Non et esse iusto aut expedita esse. At quaerat ipsam voluptatem totam tempora laudantium. Voluptatem reiciendis quae recusandae optio ullam iure voluptates. Hic voluptas voluptatem voluptatem velit id. Ut et et voluptatem sed ut qui vitae. Ut minima aut culpa asperiores qui voluptatem omnis. Perspiciatis sequi est ex repellat modi qui. Deserunt molestiae qui incidunt eos. Reiciendis fugiat animi recusandae qui soluta consectetur iure totam. Mollitia adipisci odio doloribus temporibus quam corporis. Aut tempora exercitationem commodi nihil pariatur est. Culpa ipsa error maxime ut animi a. Totam blanditiis sunt quo omnis necessitatibus culpa adipisci. Quia quas et eos et. Incidunt laborum non qui sed deleniti praesentium sed. Necessitatibus tempora rem nemo delectus laudantium asperiores sed aspernatur. Dolorem voluptate veritatis esse. Omnis animi ratione ut occaecati. Dolor voluptas facilis eaque nihil. Aut minus et officiis et. Adipisci dolorem quia vitae voluptatem molestias. Dolor aliquid aut temporibus aut quas. Perspiciatis eligendi natus vitae blanditiis vel. Tempore aut necessitatibus et autem rem dolore. Repellendus aliquid ex incidunt nisi sunt molestias voluptatum. Delectus laboriosam ut repellat consectetur. Consectetur est laborum et pariatur aut dolorum. Qui enim cupiditate labore consequatur. Voluptatem est et porro reprehenderit illum et. Repellat amet quibusdam delectus harum consequatur natus dolorem. Quia fugit quia minus quia non ipsam distinctio. Voluptatem a et quis qui. Hic qui quis qui corrupti dolores vitae vel culpa. Eaque rerum velit error iusto. Unde qui modi est et ratione. Sit magnam consequatur est placeat harum. Iure porro eveniet aut impedit soluta. Omnis pariatur dignissimos soluta sint.', '2023-05-13 11:09:01', NULL, '/uploads/thumbnails/article-2.webp', 202, 'Ut sit perspiciatis laborum voluptatum earum illum. Iusto ipsum temporibus aperiam veniam eum.', 'Dolorum ut rerum debitis. Inventore aut incidunt in alias. Officiis a reiciendis molestiae praesentium sint. Fugiat fugit perferendis dolor maiores expedita aut iure.', 'Alias totam aut officia. Provident aperiam quia unde dolorum velit. Sunt consequatur incidunt aut.', 'eveniet-deserunt-aspernatur-quia-id-libero-quam-repudiandae', 1),
(105, 119, 'Les fondamentaux du HTML5 : tout ce que vous devez savoir', 'At et qui est ex molestiae qui. Iusto officia est rem debitis aut. Placeat quasi non aliquam quasi. Ipsa est sit quae illum pariatur hic sunt ut. Possimus eum earum sed. Amet quam et ea quia et et. Harum occaecati autem reiciendis praesentium impedit. Molestias rerum delectus ullam saepe. At mollitia ratione voluptates expedita et. Qui quos ut aut rerum. Recusandae possimus optio excepturi quis. Laboriosam iste sapiente dicta dolorem quisquam sequi. Et consequatur enim et qui quia et nostrum. Excepturi et itaque ipsam quod illum. Illum modi quis cum rerum repellendus eum corrupti. Tenetur magnam ab occaecati ut nam autem. Iusto ducimus eius et ea. Ut aliquid sit quisquam mollitia eum neque vel. Voluptas sed culpa reprehenderit fugit voluptatem eius. Minima quasi voluptatem assumenda ut. Tenetur deleniti aperiam dolores quia quia modi a in. Beatae deserunt necessitatibus asperiores vero doloribus id perspiciatis. Itaque eos aperiam suscipit quis temporibus est. Sunt dolore distinctio soluta vitae quis. Laborum repudiandae doloribus non repellat veniam consequatur. In a dolor veniam architecto minus. Eum cupiditate beatae qui aperiam consequatur ut libero. Provident ullam aut et nihil minima. Perferendis quidem veritatis esse ut aspernatur molestiae. Molestias sint exercitationem id eveniet ipsum quasi. Laudantium optio inventore est consequatur rerum. Tempora perferendis totam vero sequi quia. Voluptatem recusandae est maxime architecto veritatis sit animi pariatur. Alias reprehenderit suscipit soluta quisquam doloribus quo dolore sit. Et placeat et occaecati cum aliquid nobis. Consequuntur incidunt placeat autem natus. Est optio molestias explicabo ullam. Et voluptatem quis rerum nam eveniet vitae quis. Voluptatem ratione ullam cupiditate provident ut. Doloribus tempora eum in at sit dolores praesentium. Sit odio ut occaecati hic eius repudiandae aut. Ratione pariatur dolor et fugit pariatur.', '2023-06-29 03:36:58', NULL, '/uploads/thumbnails/article-1.webp', 480, 'Ipsam cumque minima et sint. Ut voluptatum atque iusto voluptas. Dolore quibusdam enim dignissimos.', 'Magni id omnis aliquid dolorum porro. Necessitatibus deleniti sint vel sunt et dolor quam. Voluptate quia reiciendis autem suscipit est aspernatur dolore. Aut itaque laboriosam earum reiciendis. Quam voluptatum eum quas.', 'Amet accusamus et pariatur. Perspiciatis nihil est amet autem.', 'totam-voluptate-quos-sunt-accusantium-voluptas', 1),
(106, 117, 'Les bases du développement Web avec Django : un framework puissant en Python', 'At ea libero odit voluptatum modi enim veniam et. Quam exercitationem id dolore quo qui. Molestiae nam quam ex quibusdam. Dolorum qui labore veniam culpa. Qui tempore tempora quia voluptatem. Veniam in debitis excepturi omnis aliquam aut. Vel delectus odit et tempore doloremque est sapiente. Voluptatum et non non odit suscipit omnis perspiciatis. Modi in quo quis et. Minima dolores rem esse tempora voluptates. Neque quia enim omnis cupiditate quia soluta sit mollitia. Earum optio illum enim ea dolor nemo laboriosam ratione. Velit voluptatem et quia adipisci placeat. Ut ut nisi odit quia magnam rerum. Debitis deleniti quibusdam deleniti iure. Quia enim modi doloribus nulla. Commodi vel provident quia possimus rerum culpa. Sed omnis velit ipsam pariatur pariatur quam nesciunt. Provident alias molestiae autem ex quam enim. Eius qui animi modi eos magni aperiam debitis. Aperiam omnis nihil voluptatibus molestias et sed illo. Corporis qui ut odio qui. Necessitatibus ea ducimus et odio. Natus sint quidem adipisci id. Unde numquam id eius sit. Dolores repudiandae rem dolorem qui. Eum reprehenderit officiis et et. Voluptatem doloribus unde natus ut ullam voluptatem inventore. Quidem voluptas et qui omnis. Qui molestias quo esse nesciunt. Et repudiandae vel neque doloribus quo facere nesciunt porro. Ullam quia veniam sint magni et aut non. Corrupti et quo nostrum debitis aut. Sint sequi libero iste ratione aut vel ea at. Placeat fugiat eum nesciunt ad est sed. Facilis dolorum rerum exercitationem dolor cupiditate illum cum. Harum deserunt cupiditate earum. Deleniti ut aut aliquid. Doloremque ratione veritatis consequuntur ipsa reiciendis. Rem quia qui accusantium magni autem consequuntur. Aspernatur nihil aliquam consequatur officiis est. Porro aliquam repudiandae minima eligendi nobis ab perferendis. Dolorem explicabo enim voluptas enim itaque. Officia nisi enim optio aut iste.', '2023-03-07 06:58:53', NULL, '/uploads/thumbnails/article-2.webp', 295, 'Quisquam qui eum fugiat numquam. Error et fugit nihil necessitatibus dolor vero dolore asperiores.', 'Consectetur quaerat non veniam officia et et ut. Adipisci occaecati unde et sunt vel maiores soluta. Enim et sunt sunt nesciunt incidunt.', 'Sunt consectetur autem magni velit. Minima eos velit sit tempore iusto.', 'qui-quae-voluptatem-officiis-culpa', 1),
(107, 119, 'Créez un site Web professionnel avec Bootstrap : un guide étape par étape', 'Sed rerum harum aut voluptatem animi. Fugit eum dolores tempora. Aliquam velit voluptates non omnis tempore possimus corporis. Et reprehenderit enim aut et. Molestiae sed aut facilis quis earum id vel vitae. Tempora magnam est aliquam qui. Sint similique et non. Quidem voluptatem veniam at totam aliquam architecto architecto. Perferendis qui magnam possimus tempore qui modi iste consectetur. Velit ducimus sit et cum. Iusto eos iusto sed ut aut. Dolorem rerum iste eos fuga sint. Et et magni sit enim. Veniam ut quod esse est soluta. Autem inventore rerum officiis. Totam et architecto impedit. Sequi et architecto voluptate nulla. Tempora beatae et magnam eos et. Vel voluptas ut nisi similique. Nisi quam et quas quia vero modi voluptatem fugit. Et aut inventore impedit dolorem illum totam recusandae nihil. Incidunt saepe debitis aspernatur quisquam aut dolorem quod. Eum reiciendis praesentium mollitia voluptates nemo facere aspernatur. Natus est rerum necessitatibus. Excepturi consequatur voluptates aspernatur temporibus aut velit cupiditate. Rerum laboriosam adipisci voluptates sit. Eveniet dolore incidunt nostrum. Enim iure eius illo ut velit enim. Eum repudiandae quisquam molestiae doloremque. Sed dolore alias cumque laudantium quas. Dicta optio optio ea nostrum voluptate non. Eos est voluptas occaecati sunt nesciunt enim. Debitis quia magni voluptatem soluta natus ratione natus laboriosam. Labore alias non quidem repellat iste fugiat et. Dicta fugiat porro illo porro consequatur perferendis adipisci. Suscipit dolore iste saepe harum deleniti consequatur nihil. Dolores unde hic in rerum. Animi praesentium aperiam molestiae eveniet quo iste distinctio. Impedit placeat optio excepturi ullam commodi nostrum vel. Autem libero sit vero autem debitis quasi. Asperiores eaque aut doloribus quia quia ex voluptates omnis. Quam asperiores et voluptatem omnis. Ipsa esse modi maxime doloribus vel. Ut iure sed commodi et fugiat.', '2021-11-07 08:59:13', NULL, '/uploads/thumbnails/article-2.webp', 384, 'Facere nam est dolor culpa expedita. Aut provident ut dolorum nisi impedit at molestiae.', 'Sed quia cumque et beatae ratione vero consequatur quia. Quae tempore labore voluptatem aspernatur. Quia molestiae incidunt dignissimos sunt est quia rerum.', 'Dolores et minima unde qui tempora minima. Et illo velit blanditiis suscipit.', 'provident-cum-molestiae-esse-earum', 1),
(108, 115, 'Introduction à PHP : le langage de programmation côté serveur incontournable', 'Autem voluptatem cum aliquam et earum aut. Porro inventore aut laboriosam a. Quia dolores at assumenda et voluptatibus hic. At totam est occaecati quibusdam ea placeat ea. Reiciendis quod ut vel vel adipisci fuga optio. Neque dicta sint distinctio tempore est ad nam qui. Autem ut architecto non sint ut. Aspernatur cupiditate iure rerum esse in qui. Enim cupiditate culpa molestiae necessitatibus minima. Est non soluta architecto officia. Vitae voluptas id occaecati. Qui et sit quia repellendus. Autem inventore deleniti laboriosam expedita. Sunt quia corrupti qui ea in. Explicabo non ad in eos ratione nihil. Id quasi aperiam amet ab. Doloremque nisi enim non nihil odit unde libero. Temporibus odit expedita eius dolor explicabo. Accusamus ipsum at fugiat corporis culpa. Libero laborum veniam vitae dolorem tempora nemo temporibus. Optio eius et et impedit blanditiis quidem et. Dolorem consequatur aperiam hic et et quod. Eos quo ut laudantium ea. Voluptatem eligendi totam maiores occaecati ipsam. Et nobis et sint. Nulla quaerat ea provident sint facilis nemo omnis debitis. Nemo incidunt doloribus libero. Architecto voluptas cum beatae occaecati voluptas cupiditate. Adipisci ea consequatur rem commodi aut occaecati autem. Perferendis quia quia explicabo architecto. Nihil distinctio incidunt dolor beatae labore. In non vero qui distinctio. Doloribus enim rerum cupiditate. Velit ullam cumque omnis officia. Ipsam repudiandae fugit dolorem reiciendis incidunt. Possimus soluta asperiores praesentium neque. Quae consequatur recusandae necessitatibus. Ab totam omnis eveniet. Laborum optio deleniti et iure aperiam corrupti voluptas. Porro nihil in sed omnis. Voluptatem nobis fuga quidem ipsum explicabo. Nihil rerum facere dolores unde. Aut officia repellat soluta sequi et. Pariatur est nihil fugit iure voluptates quis. Repellat totam aut in sint error numquam non. Ut eveniet aliquam optio reprehenderit nisi est.', '2021-08-21 00:27:46', NULL, '/uploads/thumbnails/article-2.webp', 203, 'Et sequi architecto aperiam. Assumenda quas eaque qui sed. Quos eos est ut illum vitae saepe.', 'Facilis eaque enim ullam dolore sapiente. Sit qui sed ut tempore est. Est quia blanditiis ipsum minus qui saepe praesentium voluptatem. Temporibus sit numquam iure autem.', 'Aut eaque suscipit numquam. Et commodi illum quae accusantium qui sequi sed.', 'et-et-occaecati-facilis-a-voluptatem-praesentium-nulla-est', 1),
(109, 118, 'Comment optimiser les performances de votre site Web pour une vitesse maximale', 'Optio et necessitatibus aut doloribus doloribus accusantium culpa. Enim nihil facere beatae fuga consequatur. Tempora cum velit debitis voluptas ut ipsum. In quas quidem voluptas unde doloribus. Culpa voluptatum sequi at nulla magni alias. Velit est amet natus mollitia. Provident qui adipisci molestias facilis. Dolore ut dicta quis temporibus officiis iste est. Ea impedit cumque dolorem asperiores consequatur. Distinctio optio quibusdam omnis ad repudiandae cum occaecati. Rerum aut ut sint voluptatibus praesentium. Recusandae sapiente et recusandae sunt nihil nam ut sit. Saepe qui aliquam iure accusantium quae. Aut incidunt blanditiis ducimus odit nulla quia necessitatibus. Sed aut quidem non sunt cumque qui ipsam. Iste harum ut minus laborum quae ratione. Occaecati et perspiciatis non earum tempore provident cupiditate qui. Accusamus quod non numquam voluptas non officia et. Facilis qui alias qui recusandae. Id qui eum quis quae dolor et totam. Necessitatibus eos consequuntur molestias qui omnis aut nobis. Hic dolores magni eveniet quibusdam qui quisquam. Molestiae veniam nisi ab. Temporibus corrupti minima quia veritatis nihil. Pariatur earum repellendus ipsum eius non nisi. Sapiente doloremque enim sed. Eius consequatur dolor nisi officiis non veritatis. Est consequatur praesentium voluptas provident quae sunt. Necessitatibus magni id voluptatem id libero aliquam. Ut rerum assumenda nostrum facere. Nostrum deleniti sed placeat distinctio iusto est ut. Quia magnam quibusdam expedita cumque dolores. Aut pariatur qui qui atque illo qui. Tempore voluptatem commodi deserunt tempore sequi et labore quis. Aliquam itaque non modi omnis dolor. Nihil sed iure sunt repellat expedita enim. Reiciendis sequi nesciunt voluptates facilis minima quos ex. Nihil sed facere perferendis repellat mollitia. Odit ipsam sint odit possimus.', '2022-01-05 08:49:14', NULL, '/uploads/thumbnails/article-3.webp', 730, 'Deserunt aut nisi dolorum. Esse adipisci odit atque. Tenetur maiores quas ut modi impedit ab.', 'Eligendi sint voluptatem quae reiciendis. Repellendus est excepturi et. Qui rerum enim voluptatibus dolorem temporibus. Natus blanditiis est et.', 'Sit autem quo et. Suscipit voluptatem autem illum voluptatem ducimus tempora.', 'eius-possimus-minima-at-distinctio-assumenda-ad-et', 1),
(110, 116, 'L\'avenir du développement Web : explorer les technologies émergentes', 'Mollitia ex beatae voluptas rerum debitis a. Et beatae dolor neque. Error consequatur facilis adipisci vero. Et velit vel eos voluptas omnis voluptatum voluptatem deleniti. Dolorem amet quam ut aut tempore aliquid. Est qui sapiente eum accusantium voluptatem. Aut voluptatem earum provident. Aut et aut et consectetur possimus corporis. Dolorum iusto aut ipsam dolores culpa. Ipsum dolore est sint natus. Autem consectetur mollitia aut repellat. Vel dicta eius placeat ratione omnis enim. Aliquam expedita ad nemo reprehenderit nostrum quas aut. Esse expedita laudantium dolor neque delectus et. Ut voluptatem accusantium deleniti animi. Sapiente omnis accusamus doloribus necessitatibus reiciendis optio. Autem id fugiat nulla illum magnam. Quidem et quia qui sequi laboriosam. Inventore debitis beatae dolorem aut possimus. Perferendis est eos dolore doloremque optio minima voluptatum. Impedit hic deleniti quo neque recusandae culpa. Quis aut autem repellat quibusdam sequi aut. Et quasi nihil omnis et cumque ut expedita. Ut sapiente neque doloremque quaerat. Vitae suscipit officia accusamus debitis in libero provident. Voluptas culpa explicabo rerum. Deleniti ducimus dolores quis. Nihil voluptatem libero error est voluptatibus quas. Sed voluptate excepturi iusto animi pariatur. Ut et eos sed eos molestias debitis. Iure et atque non voluptate. Nemo consequatur est fuga aperiam id illo quia. Nulla voluptatibus totam porro explicabo quis. Quo ut qui necessitatibus aut odio perspiciatis. Ipsum cumque ipsa sapiente dolor consequatur. Debitis dolorum dolores sunt hic esse. Beatae perspiciatis voluptas neque nostrum ratione sit. Reiciendis ipsa placeat est nisi aliquid. Dolore magni beatae delectus aperiam iste est. Aut labore alias quia rerum facere aut numquam. Voluptatum ex quidem cupiditate provident eum.', '2022-11-19 03:19:10', NULL, '/uploads/thumbnails/article-4.webp', 854, 'A sit vel doloribus nostrum iusto. Quidem voluptas tenetur distinctio minima qui.', 'Inventore quia necessitatibus repellat numquam iste et. Alias voluptas explicabo deserunt. Id inventore at ad non quisquam iusto ex. Ut iure quia et nihil omnis. Sequi qui vel sit quisquam. Consequatur optio amet quaerat. Quod aspernatur fuga vero at.', 'Qui sit veniam sed. Ad beatae eos hic. Atque sit et ab dicta. Unde iste est et placeat.', 'qui-modi-est-illum-deleniti-eius-vero', 1),
(111, 122, 'Le guide complet du SEO pour améliorer le classement de votre site sur les moteurs de recherche', 'Qui dignissimos fuga quia tenetur iste et laudantium. Consequuntur ratione neque dicta ex perspiciatis. Nihil et rem libero cupiditate commodi aut et. A sint at assumenda beatae. Ullam est sed veritatis explicabo. Error soluta vero nam recusandae qui quam. Suscipit molestiae enim explicabo. Et magnam incidunt et. Facilis quis voluptatem dolores et sunt assumenda nemo harum. Totam optio enim reiciendis corporis. Odio sapiente mollitia sed eaque assumenda sed distinctio enim. Vero voluptatem eius expedita vel. Ad voluptate ratione rerum. Odio sit unde dolorum omnis. Amet velit id esse veniam tempora. Quos est cum et. Suscipit sint magni ut id fugit modi. Eos quisquam hic consequatur. Nihil tempora sed voluptatem. Aut numquam dicta non placeat. Dolor qui non est distinctio fugit qui ducimus. Rerum ut maiores cumque accusamus libero et. Omnis cupiditate iste veniam voluptas qui beatae voluptas. Cum asperiores error velit. Totam omnis suscipit dolorem ut. Quo doloribus ea cumque delectus quia quis. Consequuntur nesciunt quia iste id laborum ullam. Aut et explicabo neque tenetur deleniti. Fuga illo a libero maxime. Ea deleniti nesciunt quis. Dolor veniam qui suscipit distinctio vel consequatur occaecati. Molestias hic minima nisi. Laudantium eius explicabo quisquam distinctio tempora. Repudiandae similique quos eveniet dolorum ut ipsam. Sint molestiae ipsum in velit autem ut. Laboriosam porro impedit laborum quam nam. Sed et provident quam. Aut dolores molestiae ut et. Et excepturi aliquam debitis illum. Et libero aut sed incidunt possimus. Iusto et vel qui rem est. Sed assumenda recusandae provident. Aut aut labore ea ullam. Architecto blanditiis ut qui occaecati fugit. Sapiente minima eius consequatur maiores quia sint. Ullam occaecati reiciendis quia esse ea corrupti. Voluptates voluptatem voluptatem illo laborum voluptas ut. Saepe perferendis perspiciatis sed quasi repudiandae iure. Veniam hic sit natus non sed aperiam quia.', '2022-08-19 08:25:41', NULL, '/uploads/thumbnails/article-3.webp', 16, 'Occaecati quidem nostrum sit earum vero vitae libero magnam. Hic perspiciatis expedita earum.', 'Est et quo eum omnis enim. Tempora ut molestias sint excepturi esse eaque ipsum. Voluptas aut tenetur consequatur doloremque tempore qui consectetur.', 'Ipsa dicta et unde quisquam modi et. Sunt unde qui ipsa harum laborum. Quia quia ut cum nobis.', 'est-voluptatem-suscipit-et-distinctio-occaecati-aut-suscipit', 1),
(112, 122, 'Apprendre le JavaScript', 'At optio et eligendi adipisci labore aspernatur. Nulla in doloremque adipisci et optio. Velit aspernatur modi eos magni ea molestias suscipit. Minima ut voluptas officia dignissimos sint qui et. Saepe esse enim amet dolorem quisquam voluptatem. Necessitatibus et deserunt voluptas sed ducimus eveniet ipsum fugit. Ut voluptatibus dolorem praesentium modi itaque repudiandae. Sit est quis quaerat deleniti qui. Sint labore dignissimos soluta enim voluptate ipsa. Et facere cumque magnam necessitatibus. Et quibusdam officiis eveniet asperiores. Nostrum hic ratione reprehenderit impedit dolores. Quaerat voluptatem exercitationem non animi. Beatae qui fugit dicta quasi est debitis. Cumque vel quasi et accusantium sit. Esse quibusdam voluptatibus sapiente sequi facilis. Veritatis dolor hic labore ea. Numquam aut accusamus facere rerum eos itaque. Consequuntur accusantium et eum mollitia ut eaque excepturi. Autem quis odit dolorem quasi tempore saepe eveniet. Ut omnis illum reiciendis consequuntur saepe. Eius repellendus ullam mollitia assumenda. Non sunt ex nulla ipsa. Cum eaque quae soluta facilis sit est esse. Ut aut architecto soluta illum ut. Error tempora blanditiis laborum rerum nobis. Sed velit sed maiores autem suscipit. Ut voluptatem rerum sed ab sunt eveniet qui. Quidem nam ratione maiores in molestias. Quasi qui amet ut est voluptates qui ipsa. Et consequuntur recusandae temporibus sint corrupti. Dignissimos quos dolorem occaecati ut optio. Eos quo dolores magni nostrum perferendis debitis. Et nihil fugiat eum velit voluptatem. Magni eligendi debitis consequatur temporibus nesciunt doloremque temporibus. Consequatur et aut quia repellendus corrupti. Rerum corrupti ut praesentium consequatur natus. Et tempora eveniet consequatur quam. Asperiores in totam quis distinctio dolores eius distinctio. Temporibus reprehenderit nostrum id ut aspernatur.', '2021-12-02 22:31:05', NULL, '/uploads/thumbnails/article-1.webp', 988, 'Expedita beatae aut rerum. Explicabo illo sint qui. Enim molestiae mollitia non porro iste quidem.', 'Aut est blanditiis rem asperiores. Quae nam consequuntur dolorum modi ut. Consequuntur eos autem asperiores voluptatem. Temporibus perspiciatis temporibus repellat voluptatem non. Numquam omnis voluptatum aut dolores delectus ab est consectetur.', 'Corporis et odit quis tempora id. Ipsa sit velit aliquid. Rem magni hic quis facilis.', 'inventore-asperiores-mollitia-neque-provident-sit-beatae-ab', 1),
(113, 120, 'Développement Web sécurisé : conseils pour protéger votre site contre les attaques', 'Doloremque voluptatem aut numquam ut. Nihil facilis temporibus qui alias velit nemo. Totam necessitatibus eos fuga quis. Quibusdam aliquam et sed minus. Aspernatur consequatur enim quaerat enim. Neque neque incidunt sed dolore fugiat ut. Est deleniti ullam eius eius. Vel quo aut sapiente id earum officiis eum repudiandae. Ea assumenda ut corrupti sapiente modi magni. Et voluptatem velit minus sunt ab est ducimus. Ipsa culpa quod et rerum commodi nobis. Autem ducimus adipisci commodi facere sequi ut. Rem cum quia voluptas laborum aut voluptas non. Pariatur mollitia numquam dolore nihil molestias et deleniti. Placeat nihil ut nemo saepe maxime vel voluptatum. Voluptates eligendi officiis aut minus laboriosam cum. Et enim doloremque non voluptatum quo quibusdam. Aut magnam facere sit in. Illo qui quas accusantium nisi. Praesentium magnam hic voluptatem sed sit blanditiis qui. Et ratione recusandae aliquid eius impedit quis commodi. Debitis quis sequi fugit. Dicta atque ullam rerum dolorem id. Nihil consequatur facere libero architecto a. Dolorum distinctio suscipit aut maiores harum similique aut expedita. Distinctio in non et culpa. Quia sit impedit ut. Deleniti vel aliquid sed numquam aut culpa quibusdam libero. Optio excepturi provident quam tempore ea. Quis vel aut nihil assumenda beatae modi. Consequatur consequatur ullam itaque ipsum dignissimos commodi aut. Ducimus repellat mollitia consectetur voluptatibus sit. Ea voluptatem ducimus perferendis velit. Vero quasi sunt ut quos quae sed sit. Eaque nemo placeat vitae. Exercitationem sunt accusantium repudiandae vitae praesentium quisquam soluta. Ut deserunt rerum doloribus dicta aliquam. Autem exercitationem neque et est cumque ipsam. Sunt illum aliquam et. Dolore sint explicabo fugit et eaque itaque. Autem aut tempora quasi esse voluptates aut quo. Ut aspernatur et facere soluta quis non. Ratione quos consectetur dolores exercitationem rerum et.', '2022-05-01 10:50:21', NULL, '/uploads/thumbnails/article-2.webp', 313, 'Nulla quo exercitationem esse non eos cum. Temporibus voluptates tempore quo nam et eius.', 'Ut aperiam voluptatem facere quia praesentium voluptates eos. Optio vitae dolores quisquam eligendi. Ex ad dolores voluptatibus dolorum et et. Excepturi autem architecto atque. Eius animi eaque eius quis.', 'Eos numquam sint a minima. Est voluptas dolorem assumenda odit. Excepturi aperiam qui placeat.', 'esse-nesciunt-consequatur-sunt-vel-autem', 1),
(114, 114, 'Les étapes pour construire un site Web e-commerce réussi', 'Iusto suscipit maxime ea. Iusto non sunt nihil velit qui. Optio nulla et sit et excepturi voluptatum et. Hic cupiditate consectetur consequatur sunt cum. Temporibus quia vero aliquam vitae. Natus facere corporis laudantium ut. Quidem quam voluptates saepe doloremque rerum. Voluptates hic iste et. Est aliquam laudantium nostrum animi enim ut. Harum et aliquam qui nihil. Animi alias et eius mollitia numquam aut. Vel exercitationem quos et distinctio explicabo odit. In at blanditiis quia eos doloremque deleniti qui sint. Amet atque veniam autem atque dolores molestiae laboriosam. Et impedit optio iure nisi. Quam a similique cum aut facilis ad rerum. Sint incidunt voluptatum totam et ad voluptate alias quod. Quia nemo voluptate culpa vel voluptas numquam aut. Ipsum inventore eius id at neque beatae qui est. Quisquam sit consectetur neque ducimus eos. Sit cumque eum beatae provident molestiae. Facere omnis minus autem similique. Asperiores explicabo iure sit earum. Molestiae sunt delectus tempore porro. Molestias et provident repellat est. Ullam voluptas ea porro porro et ex. Architecto unde quam nostrum. Nostrum quibusdam aspernatur et quia blanditiis et et. Dolorem libero enim reprehenderit libero quos vel eligendi. Fuga fuga aspernatur sed et. Quis natus assumenda quidem tempore architecto et aut atque. Aperiam atque excepturi in facilis et aspernatur quisquam. Consequatur amet itaque voluptatem laudantium ullam ipsum. Placeat ut cum magnam dolorem voluptatibus itaque natus. Fuga totam eveniet enim repudiandae. Sed nobis distinctio quibusdam vel. Voluptas iste natus aliquam et magnam. Autem repudiandae laudantium quam ex tempora cum. Suscipit omnis doloremque suscipit perferendis dicta. Quam repellat voluptatibus quae est velit. Fugit et quisquam possimus sint quis et. Qui nihil dignissimos doloribus consequatur nihil molestias laboriosam. Ex natus est rerum.', '2021-11-02 01:01:01', NULL, '/uploads/thumbnails/article-4.webp', 893, 'Maxime harum velit ipsam cumque laudantium. Adipisci et eos animi provident qui libero omnis et.', 'Minima quae assumenda delectus aspernatur eos adipisci. Vel voluptas est accusamus ut. Nobis eaque eveniet alias dicta recusandae sed. Nobis aut sint atque earum rerum. Pariatur dicta rerum illo aut ut at quo.', 'Voluptatem aut voluptas voluptas doloremque. Eos illo earum velit architecto.', 'delectus-et-eum-inventore-quia', 1),
(115, 114, 'Créez un site Web professionnel avec Bootstrap : un guide étape par étape', 'Molestias amet et rerum optio aut recusandae ex. Necessitatibus ad inventore doloribus quisquam ratione. Quo cum dolorem est consequatur dicta quibusdam. Libero ipsa et error officia rerum officiis voluptas. Harum modi aut aut vitae. Dolor velit reprehenderit nihil. Quod et aliquam voluptates dolores culpa aut doloribus. Repellat vel atque est vitae. Quod voluptas quis aut magni maiores hic. Sed magni maiores iste quia repellat dolorem. Fugit labore expedita dicta fugit cum. Explicabo sequi id ducimus est rem. Soluta maxime est tempore fugit. Qui voluptatem rerum pariatur placeat alias earum aliquam. Culpa libero aperiam placeat. Voluptatum fuga eum sed soluta aut excepturi. Ut ratione reiciendis omnis repudiandae repellendus omnis. Tenetur non nobis doloremque optio sit sed facilis. Aut ipsam quia itaque praesentium distinctio. Dolores mollitia doloribus a minima sunt consectetur. Sit molestiae commodi autem inventore. Et facere nulla error rerum temporibus dolores aut voluptate. Nemo voluptatem qui aut laudantium sit cum in quia. Accusamus aperiam non fugit magni voluptatem. Neque quae et necessitatibus iusto delectus minima recusandae illo. Voluptas explicabo nesciunt repudiandae tenetur necessitatibus. Id veniam iure sed eveniet sed praesentium veniam. Eum quod voluptatum aut sint. Id beatae fugiat aperiam. Vero ut laboriosam consequuntur ducimus ut et. Qui praesentium ullam mollitia. Consequatur veniam aut magnam unde exercitationem omnis sed. Doloremque laboriosam voluptas aut necessitatibus expedita velit sunt. Sapiente temporibus aut corrupti nemo. Aperiam ea rerum corporis natus voluptates. Molestiae maxime culpa aliquam pariatur. Tempore suscipit non rem ut quaerat quisquam. Adipisci ab error et voluptas aut. Exercitationem qui ipsam est ullam omnis est. Quisquam ut nostrum asperiores cupiditate quia fugiat. Ullam voluptatem quae aut id sit sit veniam optio. Ut laudantium quibusdam sint sit dignissimos velit.', '2023-03-16 14:43:41', NULL, '/uploads/thumbnails/article-2.webp', 175, 'Ut amet cum officia qui maxime maxime. Ut nemo alias aut numquam.', 'Labore omnis animi sunt dignissimos culpa. Id sunt quod sunt. Sit magnam error est minima enim rem non. Voluptatem a dignissimos ea expedita accusamus laudantium ipsam. Quis expedita atque velit nulla.', 'Et incidunt facilis doloremque dolorem distinctio sed. Error omnis sed est provident eum.', 'magnam-exercitationem-ipsa-sed-dolorem-sit-velit-facere-velit', 1),
(116, 120, 'Le guide complet du SEO pour améliorer le classement de votre site sur les moteurs de recherche', 'Sit perspiciatis est ea voluptates est. Incidunt fugit reprehenderit nostrum illum corrupti. Et praesentium et eum est dolorem autem maiores accusamus. Nihil alias in dicta molestiae fuga cum. Nam exercitationem nesciunt dicta est. Adipisci nemo est earum. Animi sed officiis laudantium cumque. Quia culpa totam necessitatibus assumenda iusto nobis. Ut consequuntur sequi neque quia. Dolores commodi facere numquam ut voluptas eum exercitationem. Quibusdam adipisci vel consectetur occaecati ullam. In vel aspernatur impedit optio officia labore. Velit inventore exercitationem quod facilis eos. Molestias laborum ab aut laboriosam quae. Accusamus enim rem cumque autem. Et eum sed libero repudiandae rem pariatur deleniti. Neque ut explicabo expedita rerum omnis quod vel. Minima officia est occaecati ratione et. Qui qui aut eligendi saepe odit. Dolor et et placeat sequi. Iste illum est qui iure. Sed non dolorem inventore ut. Quis aspernatur autem ullam hic est molestias expedita. A ut officia quae ut culpa placeat minima. Aut perspiciatis quos nihil aut quos consequatur soluta. Omnis corrupti quis distinctio praesentium excepturi est ducimus. Sit ea repellendus quas pariatur. Vel aliquid expedita dolor et et error. Ex aut reprehenderit et illum nihil inventore ad laboriosam. A eum voluptas dolores odio omnis. Illo nobis ab sit qui. Qui cumque odio nihil voluptatem nihil distinctio. Vel nulla rerum nesciunt labore dolor veritatis corrupti. Nisi praesentium dicta qui sunt mollitia quis. Et ratione voluptas omnis id ducimus non ut voluptatem. Iure quae quam quae omnis et adipisci. Culpa consequuntur iusto animi quae aliquid. Perspiciatis reiciendis libero reprehenderit corporis commodi vel labore et. Explicabo dolor corrupti nisi quis et. Similique rerum laboriosam nobis officiis. Tenetur tempora eius beatae sunt accusantium enim accusantium ducimus. Sunt necessitatibus aut error qui earum in qui aut.', '2021-10-30 12:12:06', NULL, '/uploads/thumbnails/article-2.webp', 87, 'Rem aliquam blanditiis alias. Voluptates iure animi autem.', 'Esse in eveniet debitis. Minus itaque vel numquam aspernatur cupiditate molestiae. Veritatis nobis quas ea sint sit. Officia voluptas aliquam atque qui at consequatur officiis explicabo. Animi quisquam accusamus omnis reprehenderit a eveniet.', 'Maiores sit quas minima doloribus perspiciatis quas. Aperiam velit consequatur cum placeat.', 'vel-in-quibusdam-nihil-et-mollitia', 1),
(117, 113, 'Comment gérer efficacement les formulaires dans le développement Web', 'Amet ad et aut ut atque ex omnis itaque. Qui a veritatis pariatur a veritatis repellat. Repellendus voluptatum inventore beatae est fugiat officia in. Ullam ea omnis adipisci suscipit. Corrupti adipisci ad repellendus vitae nihil eaque quia cupiditate. Sit velit et voluptatem aut perferendis nulla hic. Non in quos possimus aspernatur quia dolorem et. Nihil minima ea quis incidunt. Similique necessitatibus sit alias et molestiae quos labore doloribus. Voluptatem praesentium consectetur culpa minus aspernatur amet omnis. Nisi perferendis quae est quam laudantium et nemo consequatur. Libero et mollitia accusantium labore commodi officiis vel. Mollitia vero distinctio consequuntur unde dicta. Voluptate dolorem esse ipsum voluptatum iure ab. Cumque id id assumenda consequuntur omnis ullam. Aliquid quis et quam unde consectetur quasi ut. Sit optio ipsam rerum non delectus aliquam. Similique harum beatae voluptas doloremque officiis numquam placeat. Exercitationem aut ab voluptatibus blanditiis debitis voluptatem vero. Nobis sequi ipsum et rerum voluptates quaerat. Ut dolores necessitatibus aut deserunt autem nihil. Qui ipsam eos porro temporibus nostrum omnis labore dignissimos. Quis a recusandae sequi voluptatem et ut et numquam. Quod voluptatem dolores vel aut velit praesentium est dolores. Aut maiores quia eaque ea qui. Deleniti quidem nostrum est cum mollitia. Id occaecati dicta quis ea vero architecto. Non sed aut aut deserunt quibusdam sed. Nobis reprehenderit id iusto molestias molestiae animi. Et voluptatum et nam nisi. Quod quas sed consequatur provident est natus. Molestiae vitae temporibus unde ducimus soluta. Excepturi omnis veniam modi totam qui incidunt. Rerum perferendis odio ipsam id. Voluptate possimus doloribus molestias quo. Quisquam aliquam dolores vero. Eius non est soluta enim aut. Qui qui sed libero veritatis ducimus. Incidunt perferendis assumenda voluptatem reprehenderit culpa quia.', '2022-07-06 12:07:20', NULL, '/uploads/thumbnails/article-3.webp', 840, 'Cum in consequuntur quae. Reprehenderit ut repellendus odit eum.', 'Occaecati sint dolor sequi veniam. Cumque doloribus autem architecto sint cum at. Nulla adipisci tempora ut.', 'Laudantium expedita itaque aspernatur. Voluptas in totam dolores.', 'vel-dolorum-nihil-ut-molestiae', 1),
(118, 123, 'Comment gérer efficacement les formulaires dans le développement Web', 'Nobis atque sunt dignissimos fugit. At ipsa ex aut vitae eum. Consectetur placeat ut est voluptatem. Incidunt et omnis illum qui eligendi. Nemo voluptatibus iusto et officiis. Similique officiis dolorum quia aliquid sunt cumque quis. Minima provident vitae perspiciatis at. Dolores excepturi iste dolorum expedita illo enim. Numquam at repellendus in eligendi magni et. Similique tempora quod minus quisquam aut similique. Cupiditate error suscipit sunt. Cum earum qui enim sequi. Dicta corporis aliquid expedita doloribus. Molestias eaque ut occaecati enim blanditiis. Laudantium ea veritatis tenetur similique rerum quas magni quis. Quas laboriosam ut quia. Unde quisquam minima molestias nemo nobis dolor adipisci sed. Magni et quaerat dignissimos quia. Necessitatibus fugit exercitationem aspernatur molestiae consequatur voluptatum. Et nostrum est unde et molestias veniam quod. Ex quidem eum voluptas voluptatem. Corrupti modi voluptatum tempore eaque. Et alias harum et deserunt. Enim error soluta quibusdam aperiam. Cupiditate nam quia rem error quibusdam laudantium. Doloribus repudiandae dolorem est ipsa veniam. Voluptatem vero eaque fuga voluptatem eius natus. Quae mollitia omnis qui et aperiam omnis et quo. Vel et illo aut odio enim dolores. Dolorem consequatur voluptatem pariatur error saepe sunt inventore. Ipsa itaque consequatur est facilis sed. Voluptatem assumenda molestias mollitia maxime enim voluptate. Facere accusamus cumque itaque non. Iusto voluptates assumenda ab molestiae molestiae vel qui officiis. Ex voluptatem porro voluptatem voluptas repudiandae. Consequatur velit quos nihil eveniet vel quam voluptatem. Officiis dolores enim eveniet error cumque quo consequatur. Voluptate consequatur cum laboriosam dolor. Ea ipsam rem facilis fuga iusto. Vitae minus in distinctio accusamus porro. Officia deleniti omnis culpa voluptatem illum.', '2023-03-29 16:06:42', NULL, '/uploads/thumbnails/article-2.webp', 340, 'Ducimus est voluptate aliquam in voluptas laudantium et sint. Eos numquam natus quis non rerum.', 'Aliquid ratione libero in. Maiores rem qui eaque iste quas possimus repudiandae accusantium. At vitae provident nesciunt voluptas accusantium. Atque a cumque nostrum.', 'Id in in voluptatibus ut. Ea et et quidem asperiores nostrum.', 'explicabo-quae-distinctio-molestias-sit-et-eligendi-soluta', 1),
(119, 112, 'Les fondamentaux du HTML5 : tout ce que vous devez savoir', 'Enim id quis maiores. Officia ex fugiat nulla vero rerum ipsum veritatis. Quaerat officia nihil incidunt at eligendi. Eos quidem omnis vitae accusamus animi. Dolorum omnis deserunt magnam tenetur et rerum. Reiciendis ut aut alias id consequuntur. Mollitia blanditiis ab sit aperiam cum. Et aut nemo omnis corrupti et quia aut. Voluptatem veniam rerum dolore aliquam mollitia autem excepturi. Quaerat pariatur id et voluptatibus. Et adipisci qui id at ipsum blanditiis. Cumque totam temporibus ipsa eveniet et hic. Et qui adipisci assumenda ab. Reiciendis qui sit culpa eum et repudiandae eius. Maxime ut ut vitae eum sapiente nam. Fugiat et ut aut aut. Qui tempora aut deserunt deleniti repellendus dolore quam. Dicta sed ut eveniet corporis. Autem dolores impedit repellat eveniet culpa iusto adipisci. Ab aut eos et. Et commodi adipisci sed earum. Libero cumque officiis quia officia et omnis. Distinctio maxime eligendi voluptas laborum esse. Quos harum aperiam veniam perspiciatis blanditiis repellendus. Libero quas similique non vel et in omnis. Ratione et suscipit rem voluptas et. Aut et a officiis minima quia minima sed. Autem ut dolores placeat tempore fuga enim. Unde nisi aliquam quis reiciendis sapiente sequi possimus. Sint nostrum dolorum in aperiam rerum autem. Inventore laudantium excepturi fugit pariatur possimus. Provident sint non quia ut aut fugit. Sit eos modi unde. Dolorem nisi facilis voluptas qui voluptatem et. Corporis enim dolores aut necessitatibus aut eaque. Et quisquam eius voluptatem vel. Vel sint incidunt est est quod corrupti ipsa. Dolorum omnis dolorem doloribus. Atque commodi autem voluptas non autem. Fugit et maiores dicta ullam eligendi suscipit voluptatibus consequuntur. Est eligendi et quis doloribus quisquam assumenda est. Ipsa et blanditiis laborum nihil voluptas voluptatem ea. Quia repellat accusamus sapiente doloribus ut. Hic et eos in adipisci eaque.', '2021-11-03 10:44:24', NULL, '/uploads/thumbnails/article-1.webp', 27, 'Quidem totam laborum sit repellendus aut qui. Ea et earum tempora labore ab ullam aut.', 'Officiis quia nostrum id omnis reiciendis tempora quia. Sit quae doloribus et. Qui id id velit provident veritatis. Molestias molestiae voluptatem consequatur sint. Dolores facilis omnis excepturi quo aut. Tempore vel dignissimos qui earum.', 'Dolorem voluptatem quibusdam aut quidem quia qui voluptatem velit. Tempore aut quis aut.', 'fugit-voluptate-qui-corrupti-dolorem-ad-eum', 1),
(120, 119, 'Faut-il se réorienter en Dev Web ?', 'Molestiae ex impedit animi soluta. Necessitatibus quae error at fuga doloremque iure nihil. Autem dicta error labore voluptatem id fugiat sit. Eligendi et consequuntur fuga eligendi et facilis voluptates dolore. Ut alias in eum quia. Tempora officiis aut aut voluptas. Corrupti ut non officia aut voluptas eos autem. Aut iure ab quo nihil rerum. Sunt aut fugit labore similique quo minus qui. Aliquid quibusdam animi mollitia deserunt. Ut quia totam aspernatur non. Ea accusamus adipisci harum molestias eos nihil optio. Magni laborum commodi provident sint. Incidunt ea occaecati quos ut adipisci. Sit eius itaque doloremque cumque. Minus rem atque ipsam dolor consectetur voluptatum modi. Consequuntur voluptatibus accusantium dicta porro enim vel necessitatibus maiores. Repudiandae eaque enim sint voluptas quia. Consequuntur ab excepturi in nam qui nam. Laudantium aut qui neque exercitationem quis. Facere et sint facilis illum. Aut id provident voluptates reiciendis ipsam ullam mollitia. Voluptatibus impedit aut et eos. Occaecati voluptatem voluptate excepturi. Consequatur assumenda iure tempora labore. Quo enim vel nostrum. Dolorem eligendi illum id dolores debitis aliquam. Enim excepturi in et. Vel ut quasi minima eveniet minima iste. Enim iste sunt harum in fuga. Iste ut porro quo maiores et. Non porro possimus natus numquam laudantium. Eveniet autem reprehenderit maxime dolore sequi voluptatibus. Sed qui iure sed reprehenderit itaque minus ex ratione. Ea cum pariatur error fugit dignissimos. Nihil sit odit et quos non est. Tempora dolor quia sed veniam. Dolore nostrum in voluptas aliquam optio pariatur. Ipsum eum ullam excepturi dolorem enim rerum laborum. Saepe ea deserunt et. Sed dolore et illo quo. Quod praesentium quisquam deleniti et aut officia. Provident ab non impedit ut exercitationem voluptates aut.', '2023-08-01 14:05:15', NULL, '/uploads/thumbnails/article-3.webp', 711, 'Similique ut expedita quae est autem ut consequatur vel. Eveniet molestias numquam debitis quia.', 'Totam exercitationem nam cumque quos dolore. Nisi a et sit ut enim. Voluptatibus odio non est. Dolorum et veritatis perferendis nihil fugiat.', 'Vel debitis non est sit magni autem maxime. Et enim et sit.', 'impedit-et-ducimus-in-assumenda-dolor-quasi-pariatur-rem', 1);

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
(82, 'HTML'),
(83, 'CSS'),
(84, 'JavaScript'),
(85, 'PHP'),
(86, 'Python'),
(87, 'Ruby'),
(88, 'Emploi'),
(89, 'Reconversion'),
(90, 'Étude de cas');

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
(82, 106),
(82, 111),
(82, 114),
(82, 120),
(83, 107),
(83, 110),
(83, 112),
(83, 113),
(83, 119),
(83, 120),
(84, 104),
(84, 108),
(84, 109),
(84, 115),
(84, 118),
(85, 101),
(85, 110),
(85, 115),
(85, 117),
(86, 111),
(86, 116),
(86, 120),
(87, 102),
(87, 103),
(87, 104),
(87, 105),
(87, 107),
(87, 110),
(87, 111),
(87, 112),
(87, 118),
(87, 119),
(88, 101),
(88, 102),
(88, 103),
(88, 107),
(88, 108),
(88, 115),
(88, 116),
(88, 117),
(88, 118),
(88, 119),
(89, 104),
(89, 106),
(89, 112),
(89, 113),
(89, 114),
(90, 101),
(90, 102),
(90, 103),
(90, 105),
(90, 106),
(90, 108),
(90, 109),
(90, 113),
(90, 114),
(90, 117);

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
(501, 107, 113, 'Totam ut labore quibusdam qui quam nulla dicta. Porro maiores nobis ea dolore officia est qui enim. Sit inventore illo molestiae doloribus officia inventore qui. Perferendis quo ut autem velit.', '2023-05-15 07:48:08'),
(502, 106, 117, 'Cumque tenetur consequatur qui quasi. Laudantium est voluptas at nulla porro. Commodi facere quia vitae eos tempora est. Ea praesentium qui et ipsa. Impedit et unde fugiat officia. Neque quis et ratione quisquam. In amet sit aut fugit et dolores.', '2023-06-22 01:40:23'),
(503, 105, 124, 'Ut sit odio unde cum dolorem ipsam sequi. Provident omnis culpa autem perferendis aut odio. Laudantium vel est quas unde.', '2023-06-03 16:27:21'),
(504, 107, 114, 'Possimus commodi dignissimos laborum hic quia natus saepe corporis. Nobis quidem harum provident rerum quo fugiat. Odio accusantium molestiae eos et sapiente autem.', '2022-07-09 09:07:07'),
(505, 117, 122, 'Tenetur iure unde blanditiis nihil. Culpa exercitationem fuga repudiandae labore. Ea eveniet doloribus quia sed enim dicta voluptates.', '2022-10-15 11:32:17'),
(506, 102, 116, 'Voluptas ut et odio. Ut ea ipsam et veritatis quisquam. Ut minus ullam maxime est perferendis numquam non est.', '2021-12-04 18:21:19'),
(507, 118, 112, 'Totam accusamus assumenda aliquid et. Quam quis ea repudiandae maxime. Non similique eos perferendis eaque odit. Perferendis omnis dignissimos consectetur sed deserunt.', '2023-05-04 12:31:40'),
(508, 112, 118, 'Expedita dicta occaecati et laudantium beatae sed soluta. Quia quam provident harum aut et. Exercitationem voluptatibus ex voluptate recusandae soluta omnis sint.', '2022-02-04 22:00:31'),
(509, 110, 122, 'Omnis consequatur qui temporibus. Molestiae vitae excepturi dolore sint aut quas. Consequatur nemo asperiores provident non veniam vel iure nostrum. Impedit qui consectetur est qui.', '2023-05-09 02:03:00'),
(510, 114, 118, 'Non eos doloribus provident assumenda iusto exercitationem nostrum. Ab molestiae labore qui ipsum nihil maxime pariatur cupiditate. In quos sint necessitatibus.', '2022-02-07 01:27:01'),
(511, 111, 114, 'Quia sit reprehenderit impedit sequi recusandae consectetur ut. Distinctio sunt blanditiis voluptatem qui et amet quo. Ullam praesentium illo et voluptas eos. Quisquam aut nihil non officia non esse.', '2021-12-27 09:25:06'),
(512, 113, 117, 'Sunt quis facere consequuntur explicabo ipsa non. Hic molestias tempore et in. In sint fuga officia et cumque recusandae quia.', '2023-06-08 09:32:30'),
(513, 115, 119, 'Commodi beatae odit et officiis. Odio est quia et et fugiat amet. Unde veniam omnis et enim qui deserunt labore. Error qui dolorum officiis tempora distinctio fuga nesciunt.', '2023-04-04 16:18:22'),
(514, 112, 122, 'Harum voluptas quas qui occaecati aut quos. Iusto sit sit laboriosam ipsam. Ut unde numquam impedit. Error fugit sed molestiae reprehenderit. Sint saepe temporibus quia et expedita perspiciatis.', '2022-09-04 20:15:21'),
(515, 112, 118, 'Sunt dolores in est. Asperiores porro vel in ratione aut est. Animi quos sed ut minus beatae qui quia. Earum deserunt harum deleniti alias perferendis ut omnis beatae.', '2022-12-30 19:19:27'),
(516, 119, 112, 'Officia ut quia ipsum quos. In sed amet tempora tempora assumenda itaque ad laborum. Saepe molestiae vel commodi ex et odit. Sed nulla eveniet facere rerum aut.', '2022-10-18 19:56:03'),
(517, 105, 122, 'Consequuntur repellendus non iure aut expedita in. Necessitatibus dolor modi error dolorem. Sit sint ea dolores quidem non non. Adipisci reprehenderit consectetur aut aut deleniti et. Ut sapiente voluptas velit exercitationem et nam.', '2023-03-03 08:42:36'),
(518, 107, 114, 'In molestias magni accusantium delectus. Ut libero atque voluptas voluptas optio perspiciatis rerum. Dolorem qui quis dolorum officiis. Qui corrupti aspernatur ipsa nulla et quod.', '2021-12-12 08:25:25'),
(519, 115, 121, 'Molestiae eos facere repellendus rem. Voluptas optio qui repellendus mollitia eum illum error. Ipsam earum eos harum repellendus et.', '2023-05-27 19:24:35'),
(520, 104, 113, 'Labore dignissimos consequatur omnis ut aut quis. Alias illum ut aut in omnis blanditiis autem corrupti. Cupiditate dolor voluptas quas.', '2022-01-19 22:31:37'),
(521, 105, 116, 'Corporis reprehenderit nam enim assumenda quia adipisci ullam. Eaque quisquam quae illo vel. Eaque praesentium veritatis eveniet quia natus. Esse dolorem voluptatem ad explicabo libero optio. Impedit ut magnam itaque voluptates.', '2023-03-11 21:11:54'),
(522, 101, 116, 'Vero soluta beatae provident aut dolorum dolore. Qui officia impedit maiores placeat necessitatibus. Voluptatum nesciunt corrupti dolor sequi enim.', '2021-12-29 18:32:50'),
(523, 111, 124, 'Reprehenderit ad eum minus voluptas odio vel quas soluta. Laborum maiores ad porro ipsa. Est et magni aut non et et ut dolores. Corrupti officiis quia sit consectetur. Et fugit sed omnis quia nobis. Ad voluptatem magni fuga dolorum iusto.', '2022-05-31 03:45:53'),
(524, 110, 112, 'Modi provident dolores repellat. Facilis quo qui necessitatibus vero mollitia est aut occaecati. Omnis illum possimus modi nesciunt eum consequatur reiciendis. Unde beatae voluptas enim aspernatur tempora.', '2023-01-13 20:59:59'),
(525, 103, 122, 'Non rem est expedita alias nostrum ut. Ullam autem aut doloremque illo repellat. Dignissimos sit vitae numquam amet quo accusamus. Qui nihil culpa quos quis repudiandae.', '2022-10-13 05:58:54'),
(526, 105, 119, 'Architecto enim minima voluptas ut. Aut odit sed eveniet voluptatum eos similique. Voluptatem quasi nobis eos veniam quo aliquid. Reprehenderit iusto sint et illum sed. Tempora non ullam voluptatem voluptates. Ab molestiae est rerum.', '2023-04-30 22:19:57'),
(527, 105, 116, 'Quae aut nam odio exercitationem eius accusamus qui qui. Aut minus voluptas at nostrum eum omnis. In deleniti sed est repellendus laboriosam reiciendis. Eos animi earum labore totam magnam harum.', '2022-12-27 09:03:10'),
(528, 105, 123, 'Expedita ad tenetur dolor corrupti. Sint voluptate est quia consequuntur corrupti et perferendis. Culpa et veritatis officiis illo consectetur beatae commodi.', '2021-10-08 16:39:28'),
(529, 114, 114, 'Ea culpa et excepturi quas deleniti ullam. Voluptates quia voluptas porro. Sed laudantium voluptates doloremque et. Possimus voluptatem sequi exercitationem soluta.', '2021-11-12 03:32:14'),
(530, 114, 115, 'Ut ut dolores aut voluptatem. Cupiditate sequi hic velit ratione. Aut explicabo odit aut quidem odit consequatur. Animi iusto vitae voluptatibus.', '2022-06-24 05:53:28'),
(531, 106, 120, 'Est voluptates minima mollitia. Quo ipsam at doloribus dignissimos harum ipsa quam. Aut ut repellendus quam. Impedit aspernatur qui voluptatem reiciendis quaerat rerum eos. Blanditiis quaerat minus et in quos error sint.', '2022-11-13 07:47:39'),
(532, 116, 124, 'Nam similique architecto totam. Quasi vel dolorum dicta perspiciatis qui nam. Corrupti est consequuntur voluptas ut voluptas quibusdam. Eum perspiciatis aspernatur blanditiis sunt ea.', '2023-07-07 08:51:42'),
(533, 102, 115, 'Error assumenda ut veritatis alias similique. Non quos harum quidem animi sit. Tenetur qui atque in deleniti voluptatum cumque. Saepe dolorem iusto ex nostrum amet magnam eligendi.', '2021-11-12 01:38:26'),
(534, 110, 116, 'Possimus est non nam enim sed eum. Provident quo tempore accusantium rerum esse quod laborum. Doloribus enim ut veniam non.', '2023-06-01 13:16:14'),
(535, 113, 117, 'Dicta tempore harum voluptas doloribus amet. Sed sed illo ducimus. Facilis quo qui nulla atque iure quo. Accusamus et iusto tenetur sit harum aliquid sed.', '2022-03-31 15:58:02'),
(536, 116, 123, 'Blanditiis quis officia unde cum. Ut perferendis soluta quo voluptas consequatur. Itaque aliquid aperiam non est corrupti officiis voluptas. Similique aut ut magnam.', '2022-04-24 22:26:56'),
(537, 113, 116, 'At nihil quo aut. Nesciunt ullam ipsum nisi laborum cumque. Earum fugit ipsa recusandae sit.', '2022-03-28 16:55:40'),
(538, 110, 117, 'Assumenda officia quidem vero voluptas itaque delectus ipsam. Quos eveniet quas saepe. Non ipsum nobis qui.', '2022-09-23 02:00:46'),
(539, 102, 119, 'Numquam qui eius expedita fugiat in tempore iusto modi. Nam molestias ratione voluptate pariatur sit eligendi voluptates. Fugit et qui et atque voluptatem.', '2023-07-16 05:26:45'),
(540, 104, 114, 'Odit expedita aperiam accusantium. Repellendus libero est et excepturi. Iste nesciunt omnis numquam dolorem cum.', '2023-02-23 03:22:50'),
(541, 117, 113, 'Consequatur animi quaerat excepturi repellendus ut reiciendis labore dolor. Amet necessitatibus alias molestiae molestiae quas. Adipisci quas architecto et quia ut. Commodi inventore est et minima qui quo sequi.', '2021-11-02 14:41:19'),
(542, 104, 115, 'Quas itaque ut molestiae sunt. Voluptatibus quae id at iusto dolor reprehenderit. Natus non deleniti laudantium nemo.', '2023-07-05 21:38:41'),
(543, 106, 112, 'Itaque quam eos placeat minima dolores omnis ut aperiam. Omnis officia est rerum non soluta quo. Ipsam eius quasi aut enim quasi voluptas. Perferendis assumenda deleniti minima nostrum.', '2022-06-01 04:34:38'),
(544, 111, 116, 'Consequatur voluptatum magni deserunt quidem ratione. Fugiat recusandae omnis dolorem rerum. Harum earum ducimus dolor qui distinctio quae consequatur enim.', '2021-10-04 23:24:11'),
(545, 107, 115, 'Nihil et rem ut iste eum. Ea sit vel sunt autem aut. Illo esse sequi sequi nihil. Ab consequatur et molestiae velit accusantium.', '2022-04-02 03:36:57'),
(546, 114, 114, 'Perferendis est laborum blanditiis est eius error. Vel quia quia ipsum sunt ratione aperiam. Magni nam numquam aut fugit et laboriosam sit. Eligendi quod minus cumque qui quia.', '2023-06-18 17:21:16'),
(547, 117, 114, 'Aut sit maxime doloribus exercitationem aspernatur blanditiis praesentium. Facilis omnis rerum ratione placeat. Voluptatem illum dolore non hic.', '2023-05-02 02:54:22'),
(548, 119, 112, 'Ab doloribus magni quasi expedita non. Molestiae consectetur tempora alias aliquam officia et. Aut dignissimos debitis tenetur nesciunt exercitationem et.', '2022-01-30 17:28:14'),
(549, 118, 113, 'Voluptatem et autem ratione unde dolore cupiditate. Sit dolore quod nobis. Laudantium dicta odit assumenda odit voluptatum sunt. Qui repellat ut enim fuga officiis et ut.', '2022-05-29 20:38:38'),
(550, 101, 120, 'Consectetur sed reprehenderit nam aut eaque. Inventore et officia perferendis ex sit ipsum. Eaque et laudantium quo minima. Excepturi ut quae et. Sed earum nulla eos consequatur hic. Perspiciatis in nihil in tenetur dolores et odit.', '2021-10-28 20:10:11'),
(551, 102, 112, 'Error iure impedit corporis non est. In voluptates esse dolore maxime dolore porro rerum veniam. Rerum consequatur omnis aut occaecati tempore. Iure placeat dolorem expedita voluptate voluptates.', '2023-03-18 01:21:06'),
(552, 104, 115, 'Ducimus minus facilis et doloremque. Atque omnis deserunt ex reprehenderit. Dolorem quia maiores ut sunt minus sint qui. Voluptatibus molestiae officia tempora laudantium vitae facilis.', '2021-10-02 17:30:58'),
(553, 103, 112, 'Sunt repudiandae itaque dolorem et consequuntur. Aut rerum et officiis. Corporis ut et officiis consequatur alias et. Cumque sequi harum occaecati. Aut est molestiae aperiam laborum est enim quis.', '2022-08-28 21:05:21'),
(554, 102, 121, 'Quia vitae odit aliquid quaerat. Et porro enim sint cumque modi animi. Suscipit qui aut ut. Aut magni quo eveniet blanditiis qui magnam eveniet. Et velit assumenda sunt tenetur. Blanditiis totam et asperiores officia. Facilis quo non est.', '2023-07-09 01:36:41'),
(555, 105, 115, 'Delectus qui molestiae ducimus. Ullam adipisci quia vel fugit beatae consequatur quidem. Id sint quis quaerat quis velit tempora id. Nemo omnis blanditiis aut voluptatum fugiat cum. Deleniti voluptates deleniti ad.', '2021-12-09 01:17:15'),
(556, 116, 114, 'Enim nisi ducimus omnis repudiandae quasi. Et aut iusto nostrum voluptatem deserunt rerum ea reiciendis. Quo minima porro eius suscipit quas. Vero nemo in assumenda.', '2022-09-21 17:08:58'),
(557, 101, 117, 'Deleniti eum id ipsum ipsam minima sunt. Vel iste dolores eius possimus officiis rerum aut. Cupiditate qui at deserunt.', '2022-07-31 13:32:20'),
(558, 113, 123, 'Quia eos excepturi perferendis itaque necessitatibus harum adipisci. Sint molestias ipsam nobis sint. Harum culpa qui quaerat ea. Expedita consequatur vero dolor est.', '2021-10-24 00:14:48'),
(559, 118, 124, 'Repellat in eos fugiat et aperiam mollitia sed. Qui rem quae fuga sed cumque at. Cum dignissimos consequuntur sapiente. Rem ut nam quia saepe ut. Est corrupti et et voluptatem quas. Et quaerat hic porro voluptatem. Eaque nisi non maxime eius.', '2023-07-01 20:54:55'),
(560, 117, 114, 'Veniam hic rerum voluptas voluptas nihil vitae. Occaecati dolorum et voluptatem et vero ducimus. Quidem animi vitae voluptatem qui totam quam. Nemo quam ullam error minus voluptatem. Libero est suscipit soluta quisquam et.', '2022-09-15 01:57:21'),
(561, 115, 119, 'Velit nesciunt sed reprehenderit cum explicabo. Nam tempore incidunt molestiae tempore et debitis. Molestiae ducimus eos debitis sint. Occaecati velit rerum vel id.', '2023-03-24 17:13:10'),
(562, 115, 116, 'Facere et delectus libero. Animi quae saepe nisi aliquid ut hic quibusdam non. Et ut accusamus rem. Similique et est ut esse.', '2023-04-16 07:39:31'),
(563, 116, 112, 'Dolor ea nobis commodi aut. Consequatur aut vitae doloremque eos impedit rem consectetur. Veniam quae ullam ipsam animi.', '2023-07-02 08:24:03'),
(564, 112, 117, 'Omnis ipsa ullam et consectetur ratione aliquam ut. Reprehenderit est ipsum numquam totam. Voluptatem animi voluptas beatae corrupti. Molestias magnam consequatur reprehenderit quisquam magnam. Non amet rerum sed perferendis aperiam.', '2021-12-08 06:58:28'),
(565, 101, 121, 'Amet adipisci laborum assumenda dolor. Dolore alias eaque quo. Maxime ut laudantium adipisci.', '2022-11-14 22:19:44'),
(566, 116, 114, 'Excepturi sit aliquam impedit dignissimos. Amet temporibus voluptas ipsam velit corrupti vitae.', '2023-01-12 03:56:12'),
(567, 102, 121, 'Quia eos necessitatibus aut tempora qui. Optio sunt molestiae laboriosam quae nulla. Tempore ad dolorum temporibus voluptatem. Distinctio itaque sint et ut.', '2022-06-16 19:16:48'),
(568, 113, 120, 'Rerum vero voluptatem qui est fugit. Qui et amet quia tempore voluptatum voluptate. Facere aut sint aut asperiores omnis molestiae. Dolor ea odit minima.', '2021-11-20 19:01:51'),
(569, 107, 122, 'Architecto voluptatibus ad tempore corporis. Reprehenderit corporis qui quia distinctio sit eum. Eius consequatur necessitatibus qui voluptates sapiente libero.', '2023-01-09 23:49:06'),
(570, 113, 122, 'Non aut ipsam id neque dicta. Aut architecto possimus ipsam. Aliquid eveniet quo quod ducimus. Sint enim est asperiores nihil. Consequatur aliquam aut ipsa odit at et. Hic maxime quasi dolores aut magnam qui suscipit.', '2023-06-19 13:48:02'),
(571, 111, 117, 'Ut animi eius sed ratione assumenda illum neque dicta. Distinctio ea eos eum voluptas eligendi. Dolor nesciunt distinctio laboriosam provident explicabo occaecati. Aut sunt dolor nobis odio. Sint vel non hic placeat.', '2023-04-29 00:39:57'),
(572, 101, 114, 'Sed quidem consequatur voluptas dolor recusandae ut. Ex cumque voluptatem blanditiis qui. Aut vero doloremque reiciendis aut saepe.', '2022-08-02 04:41:17'),
(573, 103, 112, 'Dolor vitae minima earum aut ea eveniet. Eligendi est voluptates ipsum. Voluptatem ut aut quia possimus laboriosam.', '2021-09-02 06:47:14'),
(574, 114, 121, 'Enim est sed hic repudiandae iusto ullam molestiae. Quidem tempora vero itaque dolor exercitationem. Corporis vel iste veniam qui pariatur aut aut. Iste quo dignissimos nisi deserunt impedit asperiores.', '2022-05-29 12:37:34'),
(575, 112, 114, 'Autem labore voluptate dolores numquam iste doloribus aut qui. A nostrum et est reprehenderit odit. Inventore aut dolorem adipisci ut repellendus est.', '2022-12-24 23:37:12'),
(576, 116, 116, 'Possimus animi nemo illo facere ducimus nemo ut. Et eos ut ut delectus consequatur autem. Veniam iure non necessitatibus.', '2021-12-29 00:22:43'),
(577, 120, 123, 'Cupiditate quasi non non id. Eum corrupti quo ipsa voluptates unde eius et. Ut nobis aut aperiam omnis dolores impedit quae.', '2023-03-09 02:30:12'),
(578, 110, 119, 'Illum vitae assumenda expedita ut dolorem rem. Ut aut ratione ipsum nisi sapiente illo fugiat veniam. Sit eum at quae qui.', '2022-02-20 23:36:12'),
(579, 116, 115, 'Aperiam ut nesciunt doloremque modi debitis. Eius rerum voluptas sunt quia laboriosam repellendus nemo sed. Rerum nemo consequatur a nihil blanditiis. Quis in deserunt eius dolorem.', '2021-10-02 13:50:03'),
(580, 114, 122, 'Veritatis est magni ipsa numquam ut autem qui veniam. Vel vitae et occaecati labore culpa. Rerum ut explicabo est sit consequuntur. Aperiam et doloribus velit cumque voluptatem. Qui neque voluptas nisi placeat excepturi.', '2022-02-04 04:52:50'),
(581, 114, 120, 'Eligendi eius odit fuga explicabo eum. Ut reprehenderit delectus nulla et veritatis. Ipsa quod harum quidem repudiandae quo id corrupti.', '2022-07-08 19:10:50'),
(582, 104, 118, 'Nisi ratione tempore veniam fugit possimus unde et. Earum voluptatem dignissimos eos autem rem nesciunt sunt quos. Alias ea est beatae minima. Vero unde omnis assumenda.', '2022-06-02 03:53:06'),
(583, 114, 123, 'Est sequi assumenda dolor dolores. Est aut nulla doloremque iste aperiam aut sapiente necessitatibus. Doloribus ea aut ipsa. Labore numquam illum nobis ipsam enim odit. Architecto harum qui neque voluptatem eveniet.', '2023-07-25 23:09:04'),
(584, 114, 117, 'Tempore omnis nam quae quo iure reprehenderit. Ut quibusdam dolores ad velit aliquid. Dignissimos laborum commodi aut. Et sed aut asperiores quo labore. Et quaerat iure hic dolore.', '2021-09-16 14:58:22'),
(585, 107, 122, 'Animi corporis hic et tenetur consequatur. Eaque aut a est sapiente. Distinctio qui eum distinctio non. Quia qui voluptatem veniam accusamus. Nemo debitis accusantium porro et doloremque amet. Est nemo quas cumque et eius.', '2022-01-03 23:06:03'),
(586, 112, 116, 'Repudiandae qui animi dicta assumenda recusandae. Dignissimos et consectetur dolorum facilis harum voluptatem explicabo qui. Quia sed sunt eaque labore. Qui quaerat in deserunt recusandae.', '2022-10-13 14:08:15'),
(587, 101, 114, 'Molestiae similique dolores consequatur reiciendis quae et. Unde ut voluptas ut doloribus. Quasi dicta cum nemo quisquam nam.', '2023-04-06 19:03:26'),
(588, 115, 116, 'Beatae adipisci vero sint saepe hic ab harum. Et reiciendis adipisci omnis officiis non. Quia illo non nihil quia ipsum sit voluptatem.', '2022-12-05 08:10:05'),
(589, 104, 124, 'Temporibus fugiat quasi iusto molestias laudantium velit. Cumque commodi odio ut quidem. Dolorem et ut perferendis quasi illo fuga omnis. Ratione est quidem perspiciatis repellendus rerum quae sed.', '2022-02-14 21:50:35'),
(590, 111, 112, 'Sint atque dignissimos et optio. Et quasi aut perferendis magnam velit. Porro et corrupti distinctio iusto corporis sed culpa.', '2022-01-01 22:50:10'),
(591, 106, 115, 'Consectetur ea est et blanditiis et. Magni esse aspernatur culpa. Ipsum neque debitis consequuntur ex rem similique omnis adipisci.', '2023-06-01 11:03:46'),
(592, 110, 117, 'Qui autem quia occaecati dolores. Explicabo veniam reprehenderit ut nostrum. Cumque facere facere quae esse autem.', '2021-08-19 00:38:13'),
(593, 110, 121, 'Sed consectetur id ab repellendus quo at optio autem. Enim consequatur qui rerum praesentium. Impedit accusantium rerum voluptas voluptatibus suscipit. Ratione est quae et in qui aspernatur qui fugiat.', '2023-05-20 10:53:49'),
(594, 107, 120, 'Minima qui eum dolore rem fuga quidem sunt omnis. Repellendus porro vel architecto suscipit. Eligendi omnis sed accusantium molestias.', '2022-10-04 03:13:41'),
(595, 120, 124, 'Et sed mollitia et dolores. Doloribus beatae reiciendis consequatur placeat in mollitia. Ullam odio et sequi deleniti blanditiis. Tenetur iure atque voluptatibus fuga esse et.', '2022-01-02 05:00:09'),
(596, 107, 121, 'Aliquam exercitationem facere tempora quia quibusdam consequuntur ut. Dolores et iste sint voluptas velit dolorem. Eligendi sunt reprehenderit et assumenda consequatur. Facere repellat nisi officia repudiandae ab cumque.', '2022-12-21 03:33:03'),
(597, 110, 112, 'Velit et nulla illum cupiditate a nulla. Cupiditate placeat dolore aut. Labore perferendis ipsam velit ut totam quis. Praesentium impedit omnis unde odio voluptatem nostrum.', '2022-05-08 15:23:58'),
(598, 106, 112, 'Consequatur error ex quidem. Omnis sit et velit ipsa. Exercitationem aut magni in cum dolores.', '2022-05-18 21:12:14'),
(599, 113, 116, 'Harum incidunt nemo enim quis. Nobis qui facilis qui possimus nulla omnis ea. Voluptatem sit esse assumenda in inventore quo. Quaerat ullam et blanditiis mollitia magnam.', '2023-03-11 13:15:35'),
(600, 110, 121, 'Rerum sit et omnis voluptatum ut. Fugit voluptatem rem delectus beatae beatae voluptas. Tempora magnam maxime aut et eaque itaque. Omnis voluptatem mollitia dolore voluptatem ex officia voluptatem. Molestiae enim quia sed dolorem nihil ut.', '2022-01-13 05:41:50');

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
(112, 'admin@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$0xMOWqB.lCf3txMZjHoVPeJR/eSpa3sk8JaPdN/HDV68hxGBMlzZi', 'Admin', NULL, NULL, '2023-08-10 10:10:09', NULL, '/uploads/avatars/default_avatar.webp'),
(113, 'editor@gmail.com', '[\"ROLE_EDITOR\"]', '$2y$13$WBKGmnI0pmvRPCKMWGJ.6u95oKVsMbyQkLseW9jSSmkPwkvWT3OQ2', 'Editor', NULL, NULL, '2023-08-10 10:10:09', NULL, '/uploads/avatars/default_avatar.webp'),
(114, 'test@gmail.com', '[\"ROLE_USER\"]', '$2y$13$KMKj3Hy3C86Rs.UeCOxd/.cyM48w.P1XH0ALo5Y511LSjQK457/TO', 'Compte de test', NULL, NULL, '2023-08-10 10:10:10', NULL, '/uploads/avatars/default_avatar.webp'),
(115, 'PHP_Lord105@hotmail.com', '[]', '$2y$13$oXWNvXWhiUJ/MILvAJvZNu/96zeEKNne1yoWwhRW4TqrGu5gdCIly', 'PHP_Lord105', NULL, NULL, '2023-08-10 10:10:10', NULL, '/uploads/avatars/default_avatar.webp'),
(116, 'TolkienDev29@yahoo.com', '[]', '$2y$13$4dt3mTOkmMJLPmQw89jqheYkJ3nX9bEZJI248L8Q6tkC4JfdrnlCi', 'TolkienDev29', NULL, NULL, '2023-08-10 10:10:10', NULL, '/uploads/avatars/default_avatar.webp'),
(117, 'John_Doe141@hotmail.com', '[]', '$2y$13$dDLalZhOPYWbkL4cWCrEOeO.U3fhfoHutSH2RZcXblX3gKINzBFJi', 'John_Doe141', NULL, NULL, '2023-08-10 10:10:11', NULL, '/uploads/avatars/default_avatar.webp'),
(118, 'Not_A_Number66@gmail.com', '[]', '$2y$13$yRYsVNAYuGNKW5wCWK91seFf9zPfelns7jVKkynOInpPTP7N8Xf7W', 'Not_A_Number66', NULL, NULL, '2023-08-10 10:10:11', NULL, '/uploads/avatars/default_avatar.webp'),
(119, 'Code_Master170@hotmail.com', '[]', '$2y$13$D/Iy8N5Sr6XT7U/4gJOqlun.lnKJCjClxccYON6/6Ptzr3z5JEGzm', 'Code_Master170', NULL, NULL, '2023-08-10 10:10:11', NULL, '/uploads/avatars/default_avatar.webp'),
(120, 'Monthy_Python182@gmail.com', '[]', '$2y$13$ozoaoNHb3MX/4F9FC6/Gc.gm3zlLAHwT5BXypHKgEy/yJcPGcMice', 'Monthy_Python182', NULL, NULL, '2023-08-10 10:10:12', NULL, '/uploads/avatars/default_avatar.webp'),
(121, 'Java_Not_Script77@yahoo.com', '[]', '$2y$13$zoiYOuxFOUhnl/nnxAWw9uYplpeSiiDRmcq3v/m7ymz05OIGg2MKS', 'Java_Not_Script77', NULL, NULL, '2023-08-10 10:10:12', NULL, '/uploads/avatars/default_avatar.webp'),
(122, 'Monthy_Python454@gmail.com', '[]', '$2y$13$J3tVHlxxV5x9n6nOIR5Vt.zr35ZUgRv36xkHuEZx126Qx9jLwwcoK', 'Monthy_Python454', NULL, NULL, '2023-08-10 10:10:12', NULL, '/uploads/avatars/default_avatar.webp'),
(123, 'Hello_World120@yahoo.com', '[]', '$2y$13$BXv/x7R4fMI5evAYiXbZ5ePYgO6i7qLDLpjflVN1Q4N0B2eaeLrqW', 'Hello_World120', NULL, NULL, '2023-08-10 10:10:13', NULL, '/uploads/avatars/default_avatar.webp'),
(124, 'Console_log_addict317@gmail.com', '[]', '$2y$13$AwR73/MJUQhAoUnNN.NOSubGz.9kgoKuSmNyqUBe.J29Ka5YHjVi6', 'Console_log_addict317', NULL, NULL, '2023-08-10 10:10:13', NULL, '/uploads/avatars/default_avatar.webp');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=601;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

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