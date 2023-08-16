-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 16 août 2023 à 09:43
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
(261, 250, 'Id quos eos molestiae non excepturi.', 'Quisquam eaque cupiditate qui provident sapiente nemo modi. Totam aut nihil velit ex et. Ratione qui voluptas eius omnis. Corrupti quasi quam ipsam impedit. Qui velit optio excepturi. Minima doloribus iure magnam vel consectetur. Cum consequuntur illum delectus accusamus. Voluptatibus est sunt cumque consequatur maiores. Praesentium quo aliquid ut sit. Magni ea omnis ut commodi velit libero. Sit perferendis quos blanditiis dolor quia. Est necessitatibus hic sed dignissimos possimus. Eos voluptatum tempora tempore molestiae dolores nam eos. Incidunt sapiente cum aliquam asperiores inventore. Architecto reprehenderit porro repudiandae aut ab alias sint. Ut similique deleniti animi odio. Eum sit corrupti et dolorem quas est. Vel rerum nemo iusto sequi asperiores. Nihil sapiente quis et. Vel quia et inventore vel. Ducimus dolores explicabo placeat exercitationem velit. Doloribus et vitae ducimus alias. Fugit hic sit id velit rem cumque aut. Eos reiciendis asperiores numquam quidem inventore nulla dicta. Necessitatibus quia animi quod id doloremque in cumque. Eum velit labore non suscipit aut distinctio. Tempora dolore deleniti nihil ea eos. Excepturi ut provident minima excepturi. Enim totam saepe consequatur veniam est dignissimos rerum. Ipsa et non impedit id porro voluptatem ipsum. Et dolor magni sed. Ipsa aliquid natus facere exercitationem dignissimos dolores. Corporis nam in fuga sed. Nihil perferendis tempora iure cumque maiores a reiciendis. Est molestiae quos et impedit veritatis. Voluptatibus amet recusandae aut voluptates. Facere sit consectetur ullam in. Repellendus est et explicabo iste nisi. Neque praesentium eos sint tempora. Facilis possimus quibusdam eos iste. Autem ea sapiente quas rerum. Molestiae ipsam autem nobis distinctio. Ut pariatur dolores dolore nesciunt.', '2022-07-15 15:28:18', NULL, '/uploads/thumbnails/article-10.webp', 139, 'Atque cumque officiis quae culpa autem voluptatem quaerat. Quia et autem architecto quidem.', 'Delectus eos perspiciatis maiores quis id eveniet aliquid. Reprehenderit quasi quis repellendus est deleniti. Molestiae et quia repellendus libero necessitatibus.', 'Numquam iste assumenda libero. Fugiat aliquid nobis nostrum.', 'cupiditate-facilis-et-reiciendis-et-nihil', 1),
(262, 250, 'Libero vel modi cum rem qui.', 'Porro corrupti nihil quia iure ipsam odio est. Quidem quas rerum tempora iste. Saepe neque cumque pariatur nihil sed omnis. Aut delectus ex est ipsa. Numquam magnam dolore nostrum quibusdam excepturi dolores. Molestiae odit est provident. Optio aspernatur enim quia aliquam. Modi recusandae magni dolorum nam alias esse. Distinctio eos eligendi et ipsa. Repudiandae reprehenderit rerum molestias commodi delectus quibusdam. Iusto dolore nam est aliquam. Non numquam ab pariatur saepe quaerat. Corporis dolores tenetur sunt ratione earum omnis omnis. Iste nostrum molestias veritatis repellendus. Ut rerum exercitationem temporibus saepe incidunt libero consequuntur. Iusto quo a repellat et et beatae qui. Blanditiis voluptates sint sint et praesentium et. Repudiandae vel quaerat animi sequi aperiam sunt et. Quo dignissimos et praesentium rerum libero. Inventore temporibus veniam quia neque est aliquid cum. Dolores necessitatibus et doloremque porro sed. Ex fugiat sapiente velit dolorem fugiat. Labore enim velit reiciendis voluptas qui. Maxime expedita voluptas dolor quis vel aut. Ut suscipit nisi assumenda quibusdam ut tenetur consequatur reiciendis. Sit enim et ad et. Voluptatum voluptate aut est sunt molestiae amet. Dolores deserunt labore inventore eius. Consequatur culpa accusantium illo facere praesentium perspiciatis. Dolore eligendi mollitia est nihil. Eum itaque labore qui in excepturi voluptatum eligendi consequatur. Officia nam exercitationem assumenda laborum consequuntur omnis. Velit vitae natus cumque aut amet deserunt placeat. Velit est non voluptas nulla sint omnis voluptate. Voluptate cumque veritatis sit fugiat eius neque vel. Nam tempore aut molestias ut quia. Ad dolores nihil aut quam unde illum iure. Sunt facere iure non qui voluptas facilis iusto. Aut architecto est eveniet vitae maiores corrupti et. Labore assumenda sint nobis repudiandae quia.', '2022-03-26 05:25:50', NULL, '/uploads/thumbnails/article-5.webp', 498, 'Enim sed nemo doloremque voluptate voluptas ullam. Tenetur id ut hic non maiores modi.', 'Voluptatem ab nobis officia magni ad nam unde repellendus. Voluptate explicabo commodi perferendis quis. Et magni ducimus eos dolor rerum ab aut dolor. Sunt rerum nesciunt est reiciendis qui. Ducimus ut id et debitis quia dicta expedita.', 'Officia quo est delectus cumque enim. Rem officia qui neque dolor.', 'excepturi-sint-sequi-velit-iusto-explicabo-saepe-voluptates', 1),
(263, 248, 'Quos aut et ut minima eos.', 'Velit consequatur animi fuga et omnis. Rerum harum blanditiis sit fuga sunt exercitationem et pariatur. Debitis ut consequatur aspernatur placeat nisi nesciunt eius voluptatem. Perferendis eaque dolorem necessitatibus exercitationem cupiditate autem aliquid assumenda. Corporis eligendi quas quos rerum ut optio eos aut. Aut dolorem delectus excepturi nemo occaecati. Nisi neque non dicta mollitia vitae autem. Ut porro et consequuntur. Error sint eum amet ut consequatur. Placeat odio voluptas deleniti eveniet laborum corporis ut ipsam. Et reprehenderit corrupti perferendis impedit sed modi. Ipsum sit qui est expedita. Ipsam culpa distinctio ad nobis ab odit omnis ipsum. Labore laudantium saepe ipsum excepturi quis nesciunt harum. Quas voluptates ducimus omnis explicabo ratione repellendus reprehenderit sunt. Porro provident animi voluptatem. Sint modi commodi corrupti sed. Asperiores quaerat in odit tempore magni tenetur. Sapiente rem quis corrupti excepturi voluptas voluptates et. Odio dignissimos molestiae sapiente. Autem ut modi sint quae harum natus. Harum sequi dolore dolores itaque magnam laudantium voluptatibus. Hic recusandae ipsum voluptatem vitae. Eaque accusamus itaque temporibus alias. Amet qui repellendus reiciendis enim asperiores vel facere quidem. Nemo et dignissimos voluptas consectetur. Aspernatur dolores mollitia a ad vitae perspiciatis quia consequatur. Quasi quidem officiis minima rerum. Nobis amet exercitationem nemo et. Voluptates labore sint aspernatur et pariatur omnis repellendus. Quis dolor vitae vel in. Est eum distinctio et et alias. Eum sunt optio et reprehenderit eaque voluptatibus incidunt. Quia vero repellendus accusamus et. Velit distinctio sed vitae consectetur enim impedit aliquam. Autem nam dolores id alias quis sed dolores. Quia provident dolorem molestias veritatis adipisci ut. Voluptas dolores accusamus magni ut ipsam.', '2022-06-13 00:03:31', NULL, '/uploads/thumbnails/article-2.webp', 721, 'Cum deleniti maiores quidem est eaque. Natus eum occaecati in aut.', 'Voluptatem optio cum odit voluptas ullam nihil ab. Distinctio est qui earum dolores eligendi. Explicabo qui et ullam aut rerum sint. Aperiam sit et error. Corporis reprehenderit in quas. Dolore omnis sunt ut placeat nesciunt.', 'Ea ut voluptas inventore debitis vel. Sed ut dolor voluptatem ipsam.', 'esse-facere-eveniet-ut-dignissimos-consequuntur', 1),
(264, 246, 'Non id rerum omnis accusamus laborum in quasi in.', 'Voluptatem delectus dolores rerum natus hic et quis. Necessitatibus alias mollitia sint similique. Et consectetur eveniet error vel recusandae est. Est non voluptate recusandae nostrum. Dicta deleniti ea culpa sint amet. Vero libero repellat et quia dolores excepturi necessitatibus repellat. Et sapiente qui est voluptas sunt et commodi. Et et aut quaerat quia libero et voluptatem. Animi sint rerum impedit sed. Voluptate rerum quis aperiam consectetur sit dolorem eius similique. Ab qui cumque sit magnam ratione voluptatem. Praesentium dicta necessitatibus reprehenderit quod. Ut maiores qui aliquam omnis vitae deserunt. Quia explicabo id consectetur unde consequatur. Eligendi tempora mollitia cupiditate illo minima porro tenetur qui. Ducimus amet est necessitatibus sed enim. Iusto illum qui qui explicabo minus. Suscipit voluptatem quo quis modi dicta nemo. Magnam voluptatibus consequatur quos alias maiores. Quia et voluptatum perferendis nobis ex. Deleniti deleniti corrupti sapiente velit consequatur. Qui qui sunt eos veniam. Nesciunt sint dolores officia iure unde sit. Sint dolorem dolore neque optio voluptas ut optio minus. Quae similique perferendis molestiae amet aut dolorem culpa maxime. Ut qui omnis minus est unde. Porro maxime odio accusamus qui facilis. Repellendus illo quis consequatur at. Deserunt sapiente pariatur consequatur illo adipisci et tenetur. Deleniti possimus fugiat soluta deserunt saepe. Optio voluptatum perspiciatis nisi ratione quia. Corporis amet iusto molestiae placeat. Ipsa delectus architecto non dolores. Quas asperiores voluptate dolorum ut fuga a cupiditate dolore. Vel alias molestias mollitia nam. Dolorem eius omnis iste aut architecto. Aliquid facilis eius aut quisquam incidunt necessitatibus. Vel asperiores et asperiores enim. Et ipsum amet beatae accusantium mollitia totam. Earum voluptate ab enim excepturi perferendis. Officia rerum voluptatem quam dolor fugit sunt minus.', '2021-09-12 07:47:46', NULL, '/uploads/thumbnails/article-1.webp', 695, 'Exercitationem quia consequatur enim quod et. Et autem commodi reprehenderit dolores.', 'Perferendis repellat fuga optio ullam quia maiores quo. Vero quaerat earum distinctio voluptatem. Reiciendis qui occaecati earum fugit voluptate ducimus. Non exercitationem officiis eaque est distinctio cum culpa.', 'Libero perferendis ipsam aliquid ut. Qui debitis id sed eum.', 'accusamus-quia-consequatur-ab-veniam', 1),
(265, 241, 'Ab iste provident qui iure.', 'Minus minima ut aut odio odit voluptatibus. Quas provident consectetur quam modi blanditiis provident. Voluptatem qui non nihil sapiente ipsa doloribus. Reprehenderit voluptas autem ea fugiat. Sint pariatur doloremque fugiat accusantium eius rerum tempora. Enim vitae aut aliquam magnam officia enim. Non ea et qui ut quae quasi. Et explicabo iusto minus eum. Odio assumenda ipsum eos laborum dolorum deleniti. Reiciendis mollitia exercitationem fugit itaque quasi odit. Facere repellendus iusto ipsa nemo. Eum consequuntur qui adipisci aliquid. Laboriosam mollitia distinctio non possimus corrupti perferendis. Saepe est iure quaerat dolorum aut. Omnis enim accusantium qui vel vero est quod. Soluta non dolorum quo optio eveniet excepturi. Eum quia est inventore omnis nostrum aut. Doloremque consequatur vitae quasi et recusandae sed. Eaque voluptatum culpa sunt et vel. Dolores aut id vel distinctio nihil. Voluptas rerum hic accusantium ad. Possimus distinctio in accusamus placeat beatae quibusdam molestiae. Eligendi fugit blanditiis hic laborum rem. Voluptates et quae architecto quae qui. Perferendis qui explicabo et sit. A modi repudiandae quibusdam dolor. Voluptatem cumque ut corrupti quae enim minus. Sed sint a corrupti et totam ex doloribus. Beatae eveniet sunt qui unde ipsum quia. Ut maxime voluptas est porro beatae vero totam. Sint omnis iste perspiciatis ex aliquid inventore. Quam et illo voluptates nobis quis. Et maiores quos consequuntur perferendis sequi omnis magni. Qui laudantium provident animi molestias tenetur libero eligendi. Nihil reprehenderit dolores eligendi tenetur harum mollitia ut. Itaque quos qui quia et. Voluptatem ab dolorem aut voluptatum architecto vero eos. Deleniti ex officia repudiandae. Distinctio harum reiciendis veritatis et expedita rerum. Quod similique dignissimos et aliquid a excepturi. Suscipit et dolores reprehenderit inventore aliquid aut ipsa nemo.', '2022-02-22 15:38:25', NULL, '/uploads/thumbnails/article-9.webp', 348, 'Et excepturi at qui illum numquam enim debitis. In aspernatur aut voluptates quas voluptates.', 'Omnis minima voluptas numquam. Qui deserunt dolore et. Perferendis quibusdam perspiciatis et labore accusantium et. Magni numquam repellat voluptas impedit excepturi repellat voluptate. Officia voluptatem perferendis tenetur id laborum et.', 'Nihil quidem ut rerum autem. Omnis dolores rerum eum molestiae.', 'quia-alias-hic-natus-magni-et-quod', 1),
(266, 245, 'Asperiores voluptatem ab esse corrupti eligendi.', 'Voluptates minima nihil consequatur perspiciatis. Quia alias cum dolorem quia. Ut reprehenderit ut odit eum. Deserunt aut officiis velit quod aliquid pariatur. Eos expedita facilis voluptas quo assumenda. Mollitia vel tempora aut dignissimos possimus sit. Aperiam natus dolores velit qui. Et et nostrum magnam doloremque accusantium unde repellat voluptatem. Explicabo tempora exercitationem fugiat ab doloremque. Dolor aut et nam possimus nihil. Labore reprehenderit consequatur et omnis. Ipsum laboriosam sit tempore impedit sint beatae. Quod expedita praesentium impedit qui rem beatae ut. Natus id nihil temporibus dolore tempore molestias velit quae. Ullam quia est nesciunt suscipit qui laboriosam labore aperiam. Et enim dolorem qui sit harum et. Enim voluptatem recusandae ratione illum quo et. Ut et eos provident totam. Facere esse nemo dolores rerum. Ut minima voluptas tenetur ut. Harum consequatur ut minus explicabo in. Magnam illo ut id temporibus dolores facere. Qui quia natus est nobis mollitia voluptatem veritatis ut. Aut autem ullam dolor et rerum ab id reprehenderit. In natus quos culpa odio. Nostrum dolor omnis in asperiores magnam ratione nostrum. Corrupti eligendi eligendi tempore maiores aliquam ut. Accusantium sapiente consectetur ut ut eum praesentium autem. Optio doloribus nihil exercitationem aliquam minus eos. In impedit vel debitis placeat et aut. Cumque sit accusamus fugit sunt. Sapiente aut dicta cumque ad quod eligendi. Aut eum provident libero doloremque aspernatur ipsum magni. Officia delectus cum placeat id consectetur enim temporibus. Quibusdam quibusdam sint commodi voluptatem rem voluptas quod. Aut qui architecto repellat dolores rerum. Laudantium quod velit qui quo sed. Officia minus id aliquid ea commodi. Error impedit nostrum autem corrupti debitis sed aut. Vel distinctio minus vel fugiat itaque. Illo non aut adipisci sapiente reiciendis. Nulla a et dolor aliquid deserunt ea dolor. Sed amet debitis quidem qui sed recusandae.', '2023-04-01 19:51:37', NULL, '/uploads/thumbnails/article-7.webp', 931, 'Perspiciatis vitae reprehenderit impedit. Sint non ipsam corporis assumenda deleniti.', 'Consequatur ea hic sapiente officia ut. Dolorem tempora perferendis fuga tenetur distinctio nam voluptatem. Ipsam necessitatibus ea et molestiae facilis. Sint assumenda similique explicabo pariatur reiciendis.', 'Ea omnis dolores fugit aut qui. Non iusto ut aut eum sit voluptatem quia.', 'et-id-atque-velit-iure', 1),
(267, 246, 'Provident saepe totam veniam sit voluptate.', 'Et officia libero repudiandae quam. Perspiciatis sit vel tenetur esse accusamus minus. Commodi rerum minima et rerum. Rerum aspernatur molestiae est nesciunt non. Deserunt nihil qui est autem quia mollitia labore sed. Deleniti qui dolorum incidunt ut molestiae eos dignissimos similique. Fuga repellat nostrum excepturi. Officia velit fugit quam enim deleniti eos. Dolore laudantium unde modi quos animi voluptatum. Ut perspiciatis quo accusamus. Labore qui quod rem. Aperiam laboriosam mollitia voluptatem adipisci. Ipsam pariatur sapiente animi omnis. Ea labore amet beatae voluptas repudiandae iusto praesentium. Cupiditate similique qui et blanditiis numquam eos. Nihil voluptatem ut sed labore modi. Quia quasi ut vero excepturi delectus dolore ut. Rem placeat labore sed aliquid fugiat. Qui et praesentium aliquid nulla. Ea et error illo in incidunt. Sit in sint non voluptatem. Repellat eveniet corrupti ipsa sint. Qui aut maxime quam consequuntur modi tenetur incidunt. Sequi sit laborum assumenda numquam. Iure ex distinctio omnis ipsum animi et. Vel et ut est delectus ratione corrupti ut dicta. Sit dolor rerum sapiente temporibus voluptas ad. Quam qui ut ad at et qui rerum. Voluptatibus aliquam totam numquam molestiae eum sunt consequatur. Sint excepturi ratione tenetur velit. Quo et quam odio officiis. Est et in est dolorem voluptates. Voluptatem vero et eligendi nisi ipsam voluptates accusamus. Atque quo ut labore harum ad. Deleniti qui eligendi rerum omnis quia qui. Magni dicta voluptates aut nisi quas. Nemo suscipit omnis quia itaque rerum at. Neque dignissimos recusandae fuga dicta consequatur ducimus deserunt repudiandae. Deleniti atque incidunt ratione voluptas. Ad in quia neque. Nulla mollitia ut molestias voluptatibus corrupti est quia deleniti. Laborum vitae reiciendis saepe ut. Reprehenderit perferendis qui dolore quam consequatur vel et. Doloribus sed qui nam aut ratione pariatur odio.', '2022-03-27 12:08:37', NULL, '/uploads/thumbnails/article-7.webp', 676, 'Qui quis dolores tenetur. Quia quasi cum optio ut ut et.', 'Sed exercitationem aliquam reprehenderit aut sit. Distinctio quia ab maxime mollitia pariatur. Nihil quis tenetur est repudiandae quam qui ex.', 'Quas perspiciatis labore sit. Dolor est nisi consequatur quasi dolores aspernatur aut dolorem.', 'temporibus-et-doloribus-quia-ut', 1),
(268, 241, 'Et veritatis expedita non nobis dicta.', 'Et quam voluptatum dolores quidem soluta voluptatem expedita ut. Aspernatur ipsam laboriosam minima natus doloribus. Voluptates cupiditate beatae dolorum accusantium. Inventore sint vel hic expedita dolore. Sint magnam quaerat provident earum rerum aut. Molestiae et voluptas laudantium. Quis voluptatem sit est explicabo rerum. Quibusdam deserunt inventore quos ab. Placeat ex reprehenderit numquam numquam. Iusto labore vel debitis similique error est ipsa accusantium. Harum atque dicta maiores laboriosam qui. Et earum qui rerum optio ut facilis ut. Blanditiis mollitia architecto esse harum. Mollitia quia quo fugiat ex neque et in. In rerum omnis mollitia nesciunt rerum eius quas. Veniam dolorum ut adipisci praesentium maxime non qui eos. Ex voluptate nobis mollitia rerum. Facere enim quis sunt doloremque quia at vel. Mollitia voluptatem quo incidunt sit aspernatur omnis error vel. Qui veniam illo eaque eos quia. Velit rerum porro explicabo deleniti provident corrupti. Aperiam odio perspiciatis esse quam vitae. Consequatur officiis nihil necessitatibus quo. Similique quas a sed omnis rerum molestias. Aperiam qui quia eaque qui. Numquam eveniet dicta molestiae quia ratione. Officiis velit quia dolorum impedit. Omnis molestiae dolorem sunt odit est praesentium. Ut culpa enim molestias eos voluptatem quo officiis quia. Beatae optio ut ipsum reiciendis magnam. Perspiciatis quia rerum reiciendis totam. Quod nam eius esse qui. Voluptatibus mollitia quia nesciunt doloremque nemo praesentium. Est harum repellendus tempore accusantium recusandae sint. Sunt aut laborum perspiciatis delectus molestias voluptates. Dignissimos occaecati aperiam fugit ducimus deserunt fugit. Odio laboriosam molestiae est veniam qui consectetur ipsa accusamus. Impedit accusamus dolore sapiente quidem nam harum. Voluptatum alias minima ipsam error vel.', '2021-12-07 23:20:18', NULL, '/uploads/thumbnails/article-3.webp', 939, 'Numquam iste placeat omnis aperiam voluptas. Optio facilis quibusdam corrupti quis est quis.', 'Molestias cum velit ut et sit repellendus. Qui magni excepturi voluptatem voluptatem asperiores et. Facere in voluptas nisi est autem consequatur optio.', 'Aliquid quibusdam accusantium aut commodi maiores. Id corrupti et eaque aspernatur.', 'distinctio-minima-voluptas-doloremque-ea-eum-quibusdam', 1),
(269, 251, 'Consequatur repellat labore libero atque omnis alias.', 'Fugit qui beatae enim ut labore non. Reprehenderit pariatur ea ratione eos neque. Et mollitia amet temporibus voluptatem fugit deserunt culpa. Quia ex aliquid eaque sed. Rerum reprehenderit dolor minima quasi id eius consequatur. Autem ea molestias consequuntur aut nulla enim. Omnis sapiente ab odio recusandae omnis. Et quos deserunt ut similique laudantium impedit quia. Aut impedit sunt vero error nam. Aut est voluptatem ipsam minima. Nulla ullam dignissimos dolores harum vitae. Et occaecati deleniti dolore porro maiores. Est est perspiciatis ut aut et aut dolore ut. Sunt aliquam officia ut. Tenetur omnis est assumenda voluptatem ipsum recusandae quos temporibus. Animi dolore esse eos et in. Ratione quaerat quas nihil. Voluptatum ad ipsam optio. Quod adipisci maiores asperiores facere qui voluptas asperiores. Fugit aut eos asperiores possimus aliquam. Quis dicta eum ullam exercitationem corrupti aut voluptas. Nulla non dolor accusamus aut. Sunt nostrum sed veritatis eaque. Explicabo et exercitationem non fugiat. Totam reprehenderit quaerat ut optio quia atque. Repellat maxime cum saepe magnam porro. Porro quia et quo sed sit ducimus magnam ut. Adipisci commodi eaque error voluptatum dolorem quas. Accusantium ullam cum facere ut. Earum rerum ut eligendi et. Est eveniet quo adipisci dolorem sit deserunt autem. A deserunt omnis laboriosam id qui impedit quibusdam. Consequatur sequi qui debitis. Dignissimos officia et fugit necessitatibus eveniet unde. Omnis minima nulla rerum aliquid necessitatibus fuga harum. Ipsa quo sit est sapiente quo corporis. Fuga nesciunt cumque nisi sit qui. Aut dolores similique accusamus natus eos et corporis. Dolores vel quaerat magnam dolorem aliquam dolore vel. Iure voluptatem illum id necessitatibus et aut vero. Sunt soluta et et fugiat. Adipisci aliquid iure harum praesentium aut qui. Sed voluptas rem quia. Ex est quaerat qui eveniet quo quia nisi. Libero quia enim deleniti et.', '2022-10-28 11:57:30', NULL, '/uploads/thumbnails/article-11.webp', 830, 'Voluptas ea cum harum dolorem. Sed dolorum voluptas quo laborum. Sequi et sit et.', 'Dolor aut animi eaque a facilis corporis facere. Ut voluptas ut delectus nemo consequatur quod. Natus itaque praesentium qui eum consequuntur alias. Iusto nihil voluptas voluptates maiores quidem. Nam delectus eligendi consectetur tempore.', 'Cupiditate quam ipsa amet atque veniam perspiciatis. Ipsa dolores aut earum odit aut et qui aut.', 'accusamus-quidem-nesciunt-id-laboriosam-consectetur', 1),
(270, 245, 'Reprehenderit voluptas veritatis molestiae numquam non modi.', 'Recusandae voluptas ex quasi dolor quidem deserunt vero. Minima maiores omnis quos sint beatae iste et. Consequuntur eaque eos amet est architecto. A ut nostrum ab laudantium voluptatibus soluta occaecati ut. Deleniti praesentium et quia optio et officia. Optio est placeat id eum odio dolorem. Amet et facilis vero quidem. Voluptatem eum laborum expedita. Sequi et doloribus voluptatem. Consequatur nesciunt veritatis consequatur eum at excepturi explicabo et. Tenetur cupiditate nostrum voluptatum nihil optio harum. In perferendis ipsam dolor. Nesciunt est eos vero quisquam ab enim. Laborum laboriosam id beatae aut voluptatem. Voluptatem autem quo ipsum quis minima. Autem distinctio eos architecto minima exercitationem. Ut illum iste dignissimos aliquam distinctio at quis. Dignissimos voluptas expedita vel voluptas. Ea laudantium facere sed commodi aut. Ipsa ea ut molestiae est facilis consectetur numquam. Quos omnis magni numquam voluptatum eligendi. Sunt nobis recusandae non inventore. Doloremque tempora quia earum deleniti. Eum placeat debitis veniam. Est qui dolorem sunt. Quia maxime expedita corrupti aut sapiente ipsa et. Error ad autem quisquam libero rem eum. Dignissimos accusantium voluptas quia magni est. Ut excepturi reiciendis et eaque. Quisquam ipsa ut enim quos numquam. Error sed earum sunt. Excepturi quia quo nemo qui id dolor. Est magni aliquid facere eos quasi eum eaque error. Voluptatibus cumque quae delectus nobis repellat nisi. Vitae rerum corporis eius recusandae. Eos id blanditiis sed ut expedita. Eos vero delectus delectus non. Itaque ut veniam quaerat et. Labore aliquam aliquid unde aut. Sunt in eius ab ut qui. Necessitatibus iusto molestiae ullam maxime. Quia aut ut necessitatibus quis saepe sit. Et numquam voluptatum quisquam veniam mollitia. Dignissimos aspernatur perspiciatis aut distinctio. Blanditiis eveniet itaque magnam beatae.', '2022-03-27 06:04:35', NULL, '/uploads/thumbnails/article-5.webp', 185, 'Debitis est consequatur omnis error. Et ea et praesentium nihil repudiandae optio.', 'Modi ipsam porro et repellat in deleniti repellendus. Et et eum sed aspernatur explicabo consequatur tempore. Suscipit quos reiciendis aperiam beatae voluptatem consequatur. Pariatur ex quaerat dolore labore nesciunt.', 'Aliquid adipisci quia fuga quos. Rerum sed accusantium tenetur reiciendis.', 'officia-optio-officia-ut-sit-voluptatem-est-libero-et', 1),
(271, 248, 'Quis ut quis asperiores delectus laborum sed laborum ab.', 'Consequatur aut minus non quasi eius. Ut asperiores assumenda non voluptas dolores eius in eaque. Qui sit autem est non non. Et repellat nostrum praesentium. Ad ut omnis quia est et tenetur nihil placeat. Ad delectus omnis aut unde temporibus et nam. Perferendis minus accusamus aut itaque eos. Quod aspernatur harum quo non esse aut itaque nesciunt. Natus cupiditate et non sed quas. Et et ut molestias deleniti libero dicta odit aspernatur. Veritatis voluptatem ea odit pariatur. Inventore sit animi saepe est ipsa. Sunt nihil autem repellendus inventore et et. Expedita dolor aliquid ducimus. Minima atque officia ut qui ratione repellat. Voluptatem ex occaecati dicta magnam adipisci voluptatem quia esse. Earum sit alias ut inventore sint dolor. Cumque enim nostrum deleniti. Est cupiditate veritatis nihil. Rerum tempora voluptatem et facilis qui. Error illo ea nostrum qui et atque. Rem vel dolor sed quos commodi. Numquam laborum dolore inventore quis impedit odio sint culpa. Voluptas esse debitis placeat qui velit nemo. Quibusdam expedita deserunt quo aut. Eligendi et in laboriosam aliquid asperiores. Nulla possimus impedit qui id voluptas. Aliquid non sit magnam ex doloremque. Velit optio nostrum nihil unde quod. Maxime asperiores saepe voluptates omnis nemo. Incidunt unde voluptas corporis et voluptates minima fugiat. Ipsum quibusdam perspiciatis fugit rem. Et tempore eos ut non eligendi molestias. Id non quo tempore quia perferendis eum perspiciatis omnis. Autem recusandae consequatur dolor est sed neque qui quia. Facere soluta reprehenderit facere et esse. Quidem consequatur nihil cum odio. Ipsam voluptates architecto accusantium voluptate. Consequuntur sit inventore cum quas. Et adipisci a facilis sed. Ab id iure sapiente quisquam quas tempore. Eos suscipit porro fugit iusto sint enim illum. Voluptatem ut ut ratione et quia accusantium accusantium. Provident dolorum error expedita et. Suscipit iste nihil ab maxime iusto nisi.', '2022-01-31 04:19:49', NULL, '/uploads/thumbnails/article-1.webp', 587, 'Voluptatem id veritatis ut hic sed. Nobis sed cupiditate consequatur ratione autem porro.', 'Non ducimus voluptatem incidunt mollitia. Magnam magnam quibusdam asperiores deserunt ab in. Illo atque molestiae voluptatibus reprehenderit.', 'Autem minima quae ut rerum et minima. Sed explicabo sed odit assumenda quae amet quidem.', 'dolorum-magnam-ab-dicta-quasi', 1),
(272, 242, 'Beatae cum quidem maxime.', 'Est similique ullam maiores maxime quia nostrum. Amet quod et qui optio suscipit. Aspernatur doloremque perferendis molestiae accusamus voluptas. Ab consequatur quisquam aliquid illum ab repellat. Sapiente quae natus est id harum dicta. Accusantium voluptatem nemo ex qui itaque. Sequi nisi similique laudantium officia et quo ea. Totam dolor maiores et quibusdam totam. Ratione et sapiente ipsam in animi laborum laboriosam. Quia dolor facilis sed sunt. Fugiat et velit ab sequi officiis. Quia placeat temporibus veritatis beatae. Nulla dolores sit quia laudantium et. Eos aliquid laborum minus sit ut consectetur. Sed qui ut dignissimos ratione assumenda aperiam. Veritatis corporis incidunt debitis nihil et ut. Quod impedit tempore quia voluptatem sit. Molestiae ut veritatis magni voluptates corporis optio qui. Praesentium veniam consequatur nam voluptates magni est nesciunt. Possimus id vitae omnis vero temporibus laudantium qui officiis. Velit alias ea est doloremque nulla rerum. Repudiandae nulla est consequatur sunt molestiae. Qui repellat vitae dolorum vero. Autem distinctio facilis laboriosam quidem pariatur eveniet est. Unde consequuntur laboriosam delectus et est. Impedit consequuntur quia distinctio. Sunt modi et sunt itaque ut. Natus ratione consequatur est architecto quos voluptate ab voluptatem. Quia omnis eligendi minus ut ea delectus dolorum. Exercitationem omnis in veritatis delectus adipisci. Voluptas cum nobis velit libero nesciunt possimus earum. Et praesentium ullam doloremque consequatur quasi. Adipisci odio sunt sequi earum. Temporibus atque iste doloribus vero qui aut sint. Et eius doloribus molestiae eveniet excepturi quia voluptas nobis. Quibusdam et ut neque inventore corrupti. Expedita est dolorem unde. Perferendis repellat alias tempora unde. Voluptatibus totam officia quia minima ad. Dolores inventore qui error nihil voluptatibus quia.', '2023-03-30 18:45:10', NULL, '/uploads/thumbnails/article-7.webp', 859, 'Quo ab quos error ipsa. Quo dolore quisquam omnis eos. Possimus aut molestiae pariatur ut vel.', 'Ad possimus harum et consequuntur nulla ut. Cum et ea veritatis sapiente ea. Officiis est et amet. Et sed iste incidunt omnis nulla. Illum ut autem quisquam mollitia ab.', 'Non ut non error ut sed. Qui non illo occaecati in. Ut iure iste laborum esse natus deserunt.', 'dolorem-dicta-dolor-autem-pariatur-ut', 1),
(273, 252, 'Magni omnis cumque est numquam similique voluptatem pariatur.', 'Adipisci autem tempora ullam culpa magnam. Nemo atque est cupiditate consectetur inventore qui consequatur. Neque nobis maiores aut cupiditate quaerat sint. Vel molestiae molestiae fugiat quo autem accusantium. Harum molestiae error sunt quia consectetur. Sit in quas ad qui pariatur repudiandae. Tempora recusandae sit eius quas occaecati. Nostrum quibusdam illum quisquam perferendis voluptas quaerat unde quisquam. Et vel accusamus dolor explicabo accusamus. Voluptas id tempora qui et. In corrupti voluptates recusandae laboriosam in aut. Enim id perspiciatis libero quibusdam qui qui. Dolorum voluptatem sapiente laboriosam sint ullam nostrum. Ut eligendi aperiam et deserunt corrupti. Deleniti quod sit officia porro. Facilis sint neque sit doloremque natus. Autem consectetur harum laudantium vel. Eum ullam alias et. Accusamus aspernatur magnam quia earum quis. Omnis blanditiis voluptatem amet excepturi vitae eius. Modi necessitatibus aut nostrum in qui ut aut. Delectus officia et est veritatis voluptas at. Eveniet ut sint voluptatem. Et tempore voluptates quia nemo culpa. Provident voluptatibus reprehenderit aliquam et facilis magnam magnam quisquam. Aut id eum qui officia et. Aperiam voluptate maiores cupiditate nisi dolorum ut ut. Eius enim voluptates temporibus dicta in. Aliquid nam excepturi qui aut doloremque. Sed magnam reiciendis laborum dolor eligendi quam. Quidem sit quo quibusdam itaque sit. Incidunt ratione dolorem quis. Vel eum quibusdam quia et ipsum molestiae. Natus laborum perspiciatis eveniet vel saepe sed perspiciatis. Autem vel voluptatem totam numquam. Quo velit qui sed. Consequatur tempore fugiat explicabo ut rerum. Minima et veritatis et voluptas. Modi itaque quod quod dolor saepe officia doloribus. Sint corporis recusandae sed. Dicta eos sit eius et maxime est voluptas. Accusamus tempore quas sint voluptas aliquid itaque. Consequatur facere sapiente sed est consectetur. Numquam ea hic veritatis modi beatae.', '2021-12-06 12:41:18', NULL, '/uploads/thumbnails/article-10.webp', 445, 'Inventore perspiciatis ut et aut eum eveniet illum. Qui ut eveniet expedita sit ex libero est.', 'Et totam non iste eaque dolorem exercitationem illum. Deleniti voluptate voluptatem et possimus.', 'Aut eius error dolorem quia qui. Suscipit rerum quo maxime et aut repudiandae.', 'voluptas-tenetur-vero-tempora-possimus-perferendis', 1),
(274, 243, 'Dolorum harum et praesentium repudiandae quae velit doloribus.', 'Quis qui amet sequi nobis inventore. Dolores maxime magni aliquam accusantium dolorum. Nesciunt veritatis maiores qui consequatur rerum voluptate voluptas beatae. Doloremque facere earum voluptas. Expedita laborum aperiam iure vitae. Et aut qui rerum. Et illum atque velit at perspiciatis velit. Quibusdam dignissimos culpa eveniet. Sapiente maxime natus maiores sint et sit. Sed dolores voluptatibus et. Ipsum quis corporis sint natus et quia fuga dolor. Voluptatum aut reiciendis dicta nulla totam consequatur vitae vitae. In ad quas repudiandae ut vero. Consequatur voluptates iusto delectus natus nam. Non qui odit et tempora fugiat harum quasi. Beatae beatae earum neque reprehenderit. Et nihil cupiditate omnis quibusdam. Aut praesentium et praesentium ratione rerum sint. Et dolore quibusdam ratione quidem consequatur. In repellendus ab accusamus placeat. Accusamus quibusdam velit illo natus. Consequatur perspiciatis quidem suscipit eos debitis eius sunt. Dolorum asperiores fugit qui vel aut ratione. Libero eaque qui quam inventore quidem sint voluptatem. Ea architecto natus commodi et. Ad est id odio voluptas at molestiae unde nulla. Quia ratione aut ratione est sit eius. Dicta est aut molestias aut. Molestias error nulla quos quas exercitationem fugit aut. Repellat et accusantium nihil. Et et sint officia. Voluptas et minima soluta quos quis nihil porro. In optio ipsa est dolorem quae consectetur. Dolorem necessitatibus et rerum eum quis ipsa et. Inventore nihil hic accusantium ea. Perferendis impedit accusamus qui nam. Aut sunt velit aliquid harum. Dolor impedit iusto totam quae. Minus quod sint debitis corporis cum maxime molestias. Ducimus quod quia sint nulla consequuntur ratione. Consequatur ut consectetur mollitia inventore sit. Et qui illo et culpa alias. Amet eum omnis totam voluptatem laudantium a et. Et architecto id maiores quod impedit.', '2023-04-29 13:45:11', NULL, '/uploads/thumbnails/article-12.webp', 660, 'Autem earum maiores aut eos qui sit. Odit possimus est expedita aliquam aliquam.', 'Mollitia consequuntur amet sunt qui similique asperiores. Eaque voluptatem error autem numquam.', 'Blanditiis quos distinctio eos earum a ab. Perferendis eum impedit et exercitationem aut omnis.', 'quia-assumenda-laborum-qui-eligendi', 1),
(275, 245, 'Hic qui accusamus velit repudiandae.', 'Perspiciatis temporibus quisquam quaerat nihil. Non qui occaecati aperiam et sequi. Quia accusamus quibusdam non aut a ut modi ad. Modi eveniet a beatae perferendis et. Debitis qui et soluta delectus eligendi non eaque neque. Accusantium qui quos optio nobis consequatur. Quos quis ab ea laboriosam nisi distinctio quasi et. Iusto aliquid et eum nam asperiores quas a. Commodi deserunt unde est reiciendis iure quia. Repudiandae ullam adipisci neque occaecati eos tenetur eos. Exercitationem praesentium qui eum id aperiam alias. Eius rerum dolor veniam quo. Delectus rerum aliquid maxime itaque. Deserunt et perspiciatis culpa. Sit id pariatur in tenetur ipsa laudantium. Eos harum labore porro veniam aspernatur qui. Modi optio culpa est quod ut et et. Saepe laboriosam repellat numquam ut ullam ut quia magnam. Libero optio pariatur quasi nostrum id officiis in. Nesciunt aperiam assumenda enim nisi dolores quas possimus ut. Voluptates illum non exercitationem ipsa aut tempora. Reiciendis sed incidunt at et fugit consequatur et. Ipsum assumenda aspernatur veniam quaerat. Dolores voluptatem aliquam consequuntur aut vitae molestias aut. Quis exercitationem dolores et. Optio voluptatum incidunt voluptas aut mollitia eum. Ad sunt accusamus et similique cumque. Laboriosam sit dolores fugit labore debitis magnam qui. Aperiam temporibus impedit qui aut error eum. Suscipit est optio praesentium aperiam quia. Culpa quo nesciunt fugiat id aut deserunt. Quibusdam modi est est qui est illum. Reprehenderit aut sit officiis est tempore voluptate soluta perspiciatis. Esse vero dolorum unde voluptates ducimus. Corrupti nesciunt nihil omnis deleniti dolorem ea. Molestiae quo qui maxime dolorem est earum itaque. Et occaecati eaque eos amet. Et iste et numquam eligendi explicabo quisquam. Eligendi ipsa voluptas itaque impedit et ut. Veritatis veniam perferendis quibusdam. Sint dolorum veritatis dolores amet atque esse dolorem. Fugit dolor quia ut officiis minus. Rerum adipisci sequi optio.', '2023-05-21 08:53:08', NULL, '/uploads/thumbnails/article-6.webp', 467, 'Officiis non quo velit similique odio aut voluptatem omnis. Et qui distinctio facere minima.', 'Officia blanditiis eligendi delectus. Officiis aut tempore corrupti harum dolore error aut nesciunt. Et in laboriosam aut accusamus.', 'Labore fuga nulla in esse. Nostrum unde enim sint consequatur. Harum et natus omnis harum in.', 'similique-libero-voluptatum-modi-ut-et-error-consequatur-sunt', 1),
(276, 242, 'Aut error temporibus voluptatem iure soluta omnis.', 'Incidunt corrupti non pariatur et sed ut aliquam dolorum. Neque eius labore eos molestiae. Repellendus qui perferendis nihil eligendi facere aut numquam. Est blanditiis et voluptas qui et quos. Fugiat recusandae dolores ea quo commodi aut. Veniam magnam dicta mollitia nihil voluptatem inventore ad. Repudiandae voluptate doloribus nisi et consequuntur ullam. Odio odio cumque eos quia dolores provident laborum. Id corrupti consequuntur non velit cumque. Ipsum magnam aperiam repudiandae vitae inventore voluptatem ipsum. Ut in est nostrum aut voluptatum quas. Et aspernatur reiciendis temporibus tempore ut rerum et quo. Non est ipsum nesciunt iure. Amet consequuntur quia harum id. Voluptas natus molestiae quo voluptate cupiditate. Molestias quis quia magni officiis id debitis enim. Odit sunt et dignissimos voluptate. Voluptatem suscipit dicta et optio aut. Doloribus itaque dignissimos ipsa. Non repudiandae voluptatem et fugit provident odio aliquid adipisci. Et est ab consequuntur possimus fuga. Vel iste suscipit et et molestias. Quas laboriosam delectus aspernatur ut temporibus nihil aut. Quam laboriosam cum ab vel est occaecati qui. Commodi aut dignissimos unde ratione veritatis qui. Aperiam molestiae dolore sapiente qui sunt. Accusamus omnis nam voluptas. Commodi deserunt quo aliquid iste voluptatem. Recusandae molestiae aut provident exercitationem beatae. Aut dolores possimus quae non. Rerum illum quos incidunt omnis sunt dolore quae. Accusamus enim libero est enim expedita. Occaecati omnis dolore illo et. Facere voluptatem sapiente saepe fuga dicta. Veniam dolorem officia tempora ad tempora ad nihil corrupti. Veritatis in sequi qui ut est mollitia. Non et nulla ut ut atque ea libero. Aut ut harum adipisci et quas. Est voluptatum ducimus qui et fugiat vel unde. Magnam magnam tempore tenetur sit. Quia aliquam maxime dignissimos nemo.', '2021-09-25 15:32:32', NULL, '/uploads/thumbnails/article-2.webp', 793, 'Asperiores sed fuga qui tenetur. Labore cumque eos sunt.', 'Omnis blanditiis ut cum quae voluptate quasi soluta harum. Veritatis rerum vel iure maiores minus dolorem ut.', 'Nisi quidem alias velit consectetur sunt. Ad ducimus repellat repellat mollitia et fugiat unde et.', 'velit-suscipit-voluptatem-aliquid-voluptas-autem-assumenda-velit-et', 1),
(277, 248, 'At nam magnam et praesentium fuga dolor odio.', 'Sed et nisi iusto vitae. Sapiente aspernatur pariatur sit neque recusandae aut est. Consequatur nesciunt totam dolores ducimus facere. Qui nisi ex excepturi itaque. Aspernatur delectus beatae necessitatibus voluptate. Quidem velit dolore repudiandae et dolorem. Voluptatem et quia sunt nobis atque. Vero odit cumque et consequatur quos. Quia cumque deserunt facilis eligendi sequi. At dignissimos quibusdam qui dolores. Asperiores minima rerum omnis minima iusto natus. Minus quisquam sint id nobis velit fugiat. Eveniet dolorum magni ut. Qui ipsa quas ut et et enim placeat. Autem ipsa qui sed ab quis quia ratione. Et quis et vel qui placeat sit. Molestiae et dolores impedit soluta magnam praesentium. Aut minima sint adipisci aperiam aut temporibus eum. Aut est sit voluptas aut eum. Ratione repellendus vitae possimus non molestiae quibusdam. Neque ratione sunt rem molestiae quos. Similique natus doloremque sapiente pariatur sint officia. Voluptatem accusamus ratione iure aut. Id sed vitae quis corrupti et consequatur. Repellendus cumque reiciendis voluptas est odio. Accusantium a culpa voluptates corrupti fugit ea. Et nam suscipit facilis nisi. Est sit quisquam ut sunt harum inventore. Rerum adipisci ipsum sit accusantium dicta voluptatem perspiciatis. Velit ipsam autem facere quis dolor. Ut qui nobis animi voluptas quaerat. Qui perferendis soluta iste accusamus et. Ab rem culpa laboriosam nisi ut autem saepe. Fuga non consequuntur vel voluptatibus. Id doloribus possimus vero et. Nihil cupiditate temporibus consequatur pariatur recusandae dolorem et. Ea non qui sunt in sapiente. Et provident doloribus unde accusamus doloribus et sed. Saepe dignissimos numquam animi et a voluptatem. Illum voluptates et sapiente dolorem. Quae quo vero velit sed earum inventore.', '2022-10-21 13:18:22', NULL, '/uploads/thumbnails/article-7.webp', 936, 'Est architecto assumenda non non. Non quia quis ratione velit assumenda.', 'Ea et dolore quis consequatur. Non sit accusantium et eveniet reprehenderit qui voluptates. Quae enim minima eligendi voluptas necessitatibus unde. Dolorum dolorum nihil et ipsum et ea voluptates. Ea et repellendus inventore voluptas dolorum.', 'Vitae provident quia dolorem voluptas ullam. Reprehenderit magnam temporibus maxime dolorem.', 'perspiciatis-perspiciatis-voluptates-quas-vel', 1),
(278, 243, 'Iusto autem et a.', 'Est doloribus earum earum suscipit vero molestiae repudiandae. Quia ut cupiditate sapiente ex eum recusandae ex quam. Qui ut officiis aut cum. Qui qui illo ea aut. Vel est libero quia. Error voluptatem non sequi ut quaerat deleniti voluptatibus numquam. Qui quae assumenda aliquam saepe animi sed. Ut sed dolor dolor aut quibusdam aliquid. Velit animi sit natus aut excepturi autem. Vero molestias quia quas est. Molestias sed consequuntur ad laboriosam commodi aut. Aut vel corrupti libero repellat. Minima optio at et reprehenderit expedita voluptas. Ut in officiis laboriosam inventore enim. Beatae culpa sunt voluptates ut a eveniet libero. Consequuntur quia explicabo aperiam. Facere ratione corporis nobis dolor culpa. Nihil nostrum quis corrupti omnis quo aperiam. Ut id culpa et omnis. Quis saepe officiis commodi veniam. Aperiam eius reiciendis ipsum ipsam sunt. Id qui illo quo eius vel velit. Facilis harum et et porro voluptates minus. Reprehenderit sint enim nihil rerum nostrum facere velit. Ullam dolorem cupiditate rerum sit cum nihil aut. Suscipit distinctio pariatur quos ea consequatur quas aperiam. Aut rerum eveniet repellendus placeat rerum odit dolor. Omnis voluptas officiis voluptatum commodi facilis eos. Qui ipsum accusantium non earum eos omnis. Quae fugit cumque saepe. Quaerat iure dolore est sapiente veniam fugiat quas. Sequi deleniti aliquid pariatur aut aliquam aspernatur magni. Quaerat accusantium doloremque exercitationem ratione ducimus numquam quo. Ea explicabo occaecati vero tempore voluptate. Quos sint rerum delectus corporis eos corporis beatae ipsum. Sunt eum quaerat veniam velit est enim tempora. Quia explicabo velit qui qui cumque est. Incidunt reprehenderit ratione ipsam et sunt dolores commodi explicabo. Saepe autem sed est totam consequuntur qui blanditiis. Ex ut autem vero est.', '2021-09-24 19:39:54', NULL, '/uploads/thumbnails/article-5.webp', 557, 'Culpa est quo aut unde dolorem qui nesciunt eum. Aut nisi dolorem quia aut vel.', 'Cum voluptas qui nemo delectus veniam et adipisci. Temporibus quod explicabo porro laboriosam. Iusto non eos doloribus necessitatibus harum quos architecto est.', 'Qui ipsum iste consequatur est sequi. Voluptatibus laboriosam vel sunt et.', 'consequatur-dolore-reprehenderit-est-deleniti', 1),
(279, 241, 'Ea et debitis necessitatibus delectus doloribus.', 'Ullam molestiae eum rem aperiam delectus deserunt. Et doloremque quas minima eligendi est aliquam officiis et. Quasi eius nulla consequatur modi. Sed aut eos a vitae eius dolores. Dolorem non excepturi aut optio consequatur sit praesentium. Repellat hic sequi voluptates error id omnis. Nobis repellendus doloribus est temporibus. Aliquam corporis laborum velit inventore eos accusantium. Ipsam voluptatem ea ut tenetur. Tempora mollitia iure maxime minus aliquam nemo ipsam alias. Consequatur et pariatur qui doloremque dignissimos eligendi. Enim ea officia dolor libero asperiores nihil et sunt. Consequuntur dolor reiciendis placeat cum. Omnis facilis rerum illo qui vel ipsum reprehenderit. Vel qui autem culpa aperiam voluptas dolor cumque. Reprehenderit deserunt quis rem praesentium suscipit consequatur. Et fuga quidem quam aut assumenda porro est. Praesentium necessitatibus earum ut quia et consequuntur quaerat. Similique quia veritatis aliquid et hic. Sed recusandae magni aut excepturi ducimus debitis. Mollitia ratione assumenda sapiente dolor. Molestiae quis est sequi ipsam. Nihil provident cum perferendis pariatur magnam possimus. Rerum vero in earum earum. Deleniti libero et dicta itaque dignissimos qui et debitis. Ut accusantium sit ipsa qui nobis. Eveniet esse aliquid et dolores. Consequatur optio sed necessitatibus est molestias cum. Facere officiis aut amet est qui. Neque minus ut officia numquam facere quasi et. Expedita aspernatur incidunt necessitatibus enim. Quasi ducimus sit dolorem aliquid nihil est optio vero. Distinctio est ipsum sunt eaque omnis. Molestiae accusamus sit et blanditiis et. Molestiae architecto totam molestiae deserunt neque omnis cumque recusandae. Reprehenderit consequatur iure quo est. Ut ipsa culpa quis harum sed dolor. Natus dolor alias dolorem ea id. Temporibus qui distinctio aut maiores sed voluptas sit. At perferendis ex deserunt. Distinctio velit voluptas ut sit incidunt quidem odio.', '2023-07-14 00:41:56', NULL, '/uploads/thumbnails/article-1.webp', 163, 'Dolores nihil vitae in qui. Eos et suscipit voluptas.', 'Ipsum unde deserunt rerum dolorem natus quo delectus. Aliquid sequi quam voluptatem et fugit delectus. Amet esse maiores tempore architecto ullam. Soluta nam autem possimus consequatur.', 'Est alias pariatur quia. Nemo harum beatae doloremque veritatis quaerat officia.', 'qui-dolore-omnis-modi-occaecati-sed-eum-veritatis', 1),
(280, 249, 'Quo doloribus dolores quaerat.', 'Est sit velit quod adipisci vel aut et. Ut modi saepe nobis repellendus qui rerum. Tenetur explicabo nam autem perspiciatis esse laborum distinctio. Aut perferendis sint recusandae reiciendis id ipsum officiis. Sint consectetur qui magni voluptatum culpa inventore. Veritatis corporis sed odit consequatur quo. Iure aut assumenda fugit et. Rerum ea perspiciatis cum itaque illum aperiam. Nostrum neque praesentium ut voluptatem suscipit quam et recusandae. Natus ea rerum cupiditate perspiciatis provident modi. Nemo a velit illo praesentium saepe qui et. Ut error voluptates dolorum quos et consequatur sed. Fuga quo et culpa autem. Quisquam vel aut deleniti. Cupiditate sint sunt quo consequatur quos. Consequatur pariatur qui et optio autem. Autem totam corporis provident quisquam odit. Pariatur et tempora consequatur. Et assumenda reiciendis at odit nulla. Accusantium et non qui occaecati dolorum aliquam. Quibusdam dolorem modi repellendus non molestias vitae. Voluptatem voluptas et labore animi. At sint repellendus aut recusandae. Maxime tempore provident a voluptatum corrupti harum. Velit cum vero eius. Necessitatibus sapiente odit a dignissimos qui dignissimos. Qui quas quia rerum. Explicabo velit recusandae accusamus natus dolor nam. Enim dicta quia aut dolor et. Porro est porro error vel amet. Facere numquam expedita velit cumque. Nihil quia modi sed id doloremque. Ea dolorem voluptate quis ut sit aut harum eius. Inventore et omnis quas nisi consequatur necessitatibus id vel. Incidunt enim quae illum harum magnam. Cum et sed distinctio officiis quaerat sit incidunt. Minima sint maxime et autem aliquid pariatur illo. Ea ipsam harum possimus qui optio. Recusandae delectus non animi hic. Provident nemo voluptatum dolores natus quasi. Voluptatem rerum et nemo cum omnis. Quasi voluptatem amet labore nisi veritatis rerum eveniet. Qui accusantium aut eum ea sit. Rerum occaecati atque repellendus. Assumenda doloremque aspernatur assumenda porro.', '2023-06-28 02:36:31', NULL, '/uploads/thumbnails/article-11.webp', 765, 'Voluptate nisi nesciunt natus architecto tenetur consequatur. Quaerat cumque labore ullam.', 'Quia non repellat asperiores et ad maiores consectetur aliquam. Nemo laudantium incidunt reiciendis provident qui excepturi. Enim optio quasi perspiciatis. Reiciendis fuga aliquid pariatur nobis quas.', 'Magnam magni doloremque ullam vel. Et dicta exercitationem earum sed molestiae autem facilis.', 'accusantium-sed-voluptas-veniam-praesentium-mollitia-sit', 1);

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
(172, 'HTML'),
(173, 'CSS'),
(174, 'JavaScript'),
(175, 'PHP'),
(176, 'Python'),
(177, 'Ruby'),
(178, 'Emploi'),
(179, 'Reconversion'),
(180, 'Étude de cas');

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
(172, 272),
(172, 274),
(172, 275),
(173, 264),
(173, 278),
(174, 263),
(174, 265),
(174, 266),
(174, 269),
(174, 278),
(174, 280),
(175, 262),
(175, 266),
(175, 269),
(175, 271),
(175, 272),
(175, 276),
(175, 277),
(175, 278),
(176, 261),
(176, 263),
(176, 267),
(176, 268),
(176, 270),
(176, 271),
(176, 272),
(176, 275),
(177, 268),
(177, 276),
(177, 277),
(178, 262),
(178, 264),
(178, 265),
(178, 266),
(178, 267),
(178, 268),
(178, 270),
(178, 271),
(178, 273),
(178, 276),
(178, 279),
(178, 280),
(179, 261),
(179, 265),
(179, 270),
(179, 273),
(179, 274),
(179, 279),
(179, 280),
(180, 262),
(180, 263),
(180, 264),
(180, 267),
(180, 275),
(180, 277);

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
(1301, 273, 249, 'Impedit quia sapiente nostrum quasi voluptatem mollitia error. Numquam error ea quia veritatis quidem eius odit quam. Occaecati repellat in fuga. Est fugit ea quas iure beatae.', '2022-02-25 21:51:14'),
(1302, 270, 241, 'In aliquid vero error quia eum. Numquam odio aut delectus deleniti voluptatem ipsa odio. Ut ea fugiat aperiam qui.', '2021-12-15 15:11:57'),
(1303, 262, 250, 'Perferendis cumque dicta quia unde alias eligendi. Quo est neque minima repellendus pariatur fugit minima molestias. Debitis rem velit quo repellat soluta aut. Facere nihil omnis facilis officia aut voluptatum exercitationem.', '2022-03-24 00:58:20'),
(1304, 266, 250, 'Cupiditate vel itaque quia. Et iure temporibus ut. Ab porro qui voluptatibus nulla culpa quae. Modi est saepe qui veritatis sit exercitationem.', '2022-01-24 09:58:23'),
(1305, 262, 247, 'Numquam quibusdam quis iste. Ut ducimus sed hic provident accusantium explicabo. Harum vel ullam saepe debitis. Nulla eveniet eius asperiores dicta corrupti.', '2022-06-06 14:31:08'),
(1306, 277, 245, 'Enim voluptas consequatur debitis itaque et. Alias recusandae quis ut quia adipisci et hic.', '2022-02-10 18:22:22'),
(1307, 269, 243, 'Culpa qui omnis provident alias autem fugit reprehenderit est. Fugiat explicabo sapiente ex quaerat atque vel sed. Aut dolores quia tempora iure ut atque quia. In voluptatibus facere voluptas placeat atque beatae id.', '2021-11-03 22:07:19'),
(1308, 265, 250, 'Ratione incidunt beatae assumenda omnis voluptas veritatis. Ipsum ipsa doloremque alias earum nobis. Culpa atque et ut est dicta tenetur necessitatibus. Architecto architecto sit et praesentium cupiditate.', '2021-11-24 13:34:15'),
(1309, 262, 253, 'Esse et porro vel deleniti dolorem. Sit tenetur iste qui et reiciendis amet. Ut ratione ut ex ut architecto error impedit saepe.', '2021-12-28 00:38:48'),
(1310, 271, 242, 'Fugiat pariatur delectus dolores aliquam quo debitis. Aspernatur temporibus ut quisquam velit ea eligendi velit. Sint rem ut cum quo. Vel quam tenetur consequatur corrupti et quam.', '2022-06-12 14:28:51'),
(1311, 262, 243, 'Molestias est unde odit laudantium molestias assumenda. Veritatis ad totam officiis aut asperiores possimus. Suscipit inventore hic et corporis laudantium nulla commodi. Dolore itaque accusantium itaque dignissimos praesentium.', '2022-01-05 08:08:12'),
(1312, 262, 251, 'Rem reprehenderit est enim vel quas rerum. Repellendus velit veritatis aut harum autem cumque numquam. Deleniti at omnis dolor autem quia culpa quo.', '2023-06-24 07:54:58'),
(1313, 261, 253, 'Ea vel voluptatem iure incidunt sit. Adipisci et eveniet inventore temporibus nemo dolores tenetur modi. In vel dicta recusandae explicabo et eaque quia earum.', '2022-02-06 09:11:36'),
(1314, 274, 253, 'Voluptatum magni recusandae doloremque et aut sunt quia aliquid. Voluptatem cupiditate nisi voluptates iure voluptatum. Sed enim aut consectetur tenetur et. Pariatur odio eos eaque sequi.', '2022-01-25 16:40:41'),
(1315, 272, 243, 'Doloremque nihil in a aut consectetur in. Eos in a unde rerum nobis ducimus sint molestiae. Minima quia quod tempore neque.', '2021-09-03 16:59:33'),
(1316, 273, 248, 'Eum dolorum explicabo autem sequi amet. Ut fuga molestiae magni autem consequatur. Est qui reprehenderit quia ipsam.', '2022-11-24 20:17:08'),
(1317, 262, 252, 'In voluptatem ut laudantium exercitationem. Blanditiis consectetur velit alias excepturi maiores est. Et vel tempora sit doloribus fugiat qui.', '2023-05-17 13:32:10'),
(1318, 263, 251, 'Iure qui deserunt qui vero. Assumenda adipisci rem fugit accusamus quia. Odit dolorem aliquid deserunt.', '2022-03-23 04:15:53'),
(1319, 276, 249, 'Dolorum omnis molestiae dolorem. Voluptatibus sunt reprehenderit placeat sed non delectus. Eius iste provident voluptas beatae accusamus impedit. Tempora fugiat non sed qui aut.', '2022-07-19 00:05:53'),
(1320, 274, 253, 'Consequatur beatae quia dolorem officiis qui accusamus. Similique consequuntur fuga dolor necessitatibus rerum. Dolor est architecto saepe sint.', '2022-12-24 01:43:26'),
(1321, 272, 249, 'Est enim magni et cupiditate soluta. Animi sunt ipsum eum sunt quia tenetur. Ex eaque beatae sapiente alias et labore. Ut modi et omnis aliquam. Perferendis neque voluptate sapiente aut temporibus.', '2022-12-21 23:45:43'),
(1322, 269, 252, 'Minus qui ut explicabo dolorem aspernatur magni occaecati. Culpa sit delectus est cum exercitationem autem nisi. Consequuntur occaecati ut iure quia minima aut officiis. Omnis quos mollitia iste quam sit.', '2022-01-07 11:38:23'),
(1323, 261, 248, 'Ut est fugiat eum itaque. Magni doloremque natus ratione dolor ut est.', '2022-03-11 13:36:19'),
(1324, 271, 243, 'Quisquam deleniti velit placeat exercitationem architecto odio aperiam ducimus. Porro aperiam praesentium quia sit aut placeat. Sit a adipisci iure quod. Animi distinctio voluptate et non.', '2023-04-28 23:03:30'),
(1325, 269, 253, 'Architecto illum eligendi corrupti et nobis. Ullam officiis natus officiis repudiandae dolores molestiae voluptatem sit. Alias ducimus et autem voluptates est quia vel. Eos et mollitia sunt tenetur aut quis.', '2022-04-13 13:09:19'),
(1326, 277, 247, 'Non suscipit est quam dolor doloribus ipsa. Aut suscipit voluptatem rerum quam nemo enim. Expedita rerum ut incidunt nulla odio aperiam.', '2023-04-27 06:58:22'),
(1327, 271, 243, 'Ipsam ut nemo sit velit. Perspiciatis placeat corporis doloremque earum quis porro. Sequi quos in quo quae. Ut eius ab placeat sit. Voluptas quis et ex consequatur dolorum.', '2022-06-04 19:12:07'),
(1328, 261, 245, 'Ullam omnis nam omnis doloremque voluptatem. Amet fuga reprehenderit placeat pariatur. Fugit impedit vel deleniti consectetur incidunt vel. Quia expedita porro modi.', '2023-03-10 06:51:07'),
(1329, 272, 244, 'Ut neque ullam sunt nesciunt. Harum sunt rerum expedita qui commodi. Impedit eum velit est aut. Deserunt et facilis consectetur ut tempora velit non. Dolorem voluptas vitae et possimus neque. Laudantium voluptatem beatae aliquam sit eos.', '2022-05-10 12:41:33'),
(1330, 270, 247, 'Praesentium amet voluptatem porro laudantium assumenda vel et. Magnam eum debitis in voluptas. Suscipit nam perferendis mollitia praesentium omnis deserunt ex. Eligendi dolor perferendis ipsam fuga.', '2023-05-30 04:01:00'),
(1331, 270, 244, 'Aut dolor repellat qui veniam. Modi repellat laboriosam quia ut quis. Distinctio aut vel eum ut. Expedita eos doloremque qui eos ut consequatur aut expedita.', '2023-06-23 10:10:35'),
(1332, 275, 253, 'Sit et pariatur est. Repellendus ut officia sint minima veritatis. Eaque at eum dicta ut porro eos eum. Ut ducimus sunt cum qui eum veniam consequuntur.', '2022-04-04 18:51:08'),
(1333, 280, 244, 'Dolor omnis molestiae natus est. Autem omnis nemo tempora quaerat. Aut autem autem unde amet illo eaque et.', '2022-09-07 22:55:04'),
(1334, 266, 246, 'Debitis voluptatem quis vel quas commodi et. Vel impedit qui qui voluptatum possimus explicabo. Voluptate omnis nemo dolorem asperiores. Ducimus cupiditate est et voluptate ut repellat ea dolorum. Quo velit optio rerum numquam rerum in placeat.', '2023-07-29 01:39:23'),
(1335, 274, 247, 'Aperiam libero earum ea. Non aspernatur sunt iure voluptas nihil et. Ratione nobis sequi voluptas sit aliquam voluptas. Enim impedit enim quis corrupti repudiandae.', '2022-12-14 01:39:20'),
(1336, 278, 251, 'Qui est iste eos vitae autem. Vitae magni fugiat rerum sit dignissimos expedita magnam consequatur.', '2023-01-11 03:01:28'),
(1337, 273, 253, 'Aut vitae dolorum enim qui quibusdam vel. Quam aut quaerat voluptatem nihil vitae. Aut placeat sed sit rerum fuga at. Nulla sed velit ea unde quae occaecati.', '2022-01-08 19:45:49'),
(1338, 269, 247, 'Ex atque nemo minima est qui aperiam sint. Recusandae recusandae ex itaque maxime. Mollitia minima sapiente deserunt maxime est molestiae eum enim. Ipsum sunt provident commodi sed. Et minima eum quia natus. Soluta unde nulla et.', '2022-03-29 14:05:03'),
(1339, 268, 243, 'Eaque vero nesciunt voluptatem repudiandae illum eaque accusamus. Eveniet soluta natus quam. Error delectus dolorem eius voluptatibus corrupti et ea.', '2023-08-13 18:25:20'),
(1340, 261, 248, 'Doloribus tempore distinctio quod hic velit enim. Sint quasi quia iure modi qui voluptas. Est non dolor aspernatur debitis quia. Autem blanditiis facilis quos sunt quaerat architecto cum.', '2021-10-28 01:20:18'),
(1341, 273, 244, 'Ipsa libero est et. Adipisci adipisci et nulla ut dignissimos. Recusandae omnis quas omnis sapiente nisi eligendi. Accusamus excepturi libero amet eius consequuntur voluptatum dolores.', '2021-11-23 22:21:54'),
(1342, 279, 243, 'Modi ut atque architecto exercitationem possimus. Ut incidunt assumenda debitis qui dolore cupiditate. Officia asperiores ex iure incidunt. Et in tempore beatae consequatur dolorem et possimus. Sed similique ut necessitatibus quis quia soluta.', '2023-01-30 12:29:58'),
(1343, 277, 249, 'Non quia aperiam tempora numquam iure. Officiis temporibus doloribus odit. Consectetur praesentium est assumenda quaerat autem.', '2022-03-13 07:08:14'),
(1344, 263, 243, 'Quod quibusdam perferendis dolor est maiores ratione tempora. Fugit similique est iusto. Ex eos aut optio culpa totam qui dolores.', '2021-08-19 20:37:28'),
(1345, 266, 243, 'Aperiam accusantium quia itaque reiciendis sint at vel. Enim itaque illo perferendis necessitatibus. Sit neque aperiam quia et tempora placeat ducimus.', '2021-12-02 18:25:53'),
(1346, 280, 244, 'Magni et nam excepturi velit magnam aut. Mollitia excepturi reiciendis ut placeat et quia. Libero odit ut vero ut officiis. Tempora sunt alias maiores odio et excepturi ut.', '2022-02-24 11:04:48'),
(1347, 275, 250, 'Eum aliquam ut sed ipsam tempore cum accusantium. Nam rerum nobis sint. Et ut quo id iste cum quia sed dolor. Sit qui sint saepe ut labore ut. Iste voluptates accusantium sit dicta tempore quo ipsum et. Et quo ex rerum ut aut numquam atque.', '2022-01-22 08:02:13'),
(1348, 274, 249, 'Aperiam eligendi est iure quas. Nostrum eaque et quo et officiis qui. Sapiente non non facilis et pariatur. Sit dolore numquam veritatis asperiores inventore.', '2023-04-01 08:51:07'),
(1349, 264, 252, 'Architecto aut aliquam et voluptatum minus aut. Rem quia possimus quidem praesentium. Unde sed nihil praesentium ea ut recusandae est. Quia quo suscipit iure.', '2023-08-05 21:58:13'),
(1350, 262, 241, 'Repudiandae et expedita quod libero optio occaecati ut. Facere quisquam omnis sint itaque sunt esse. Dolores non eligendi ducimus et facere quasi id dignissimos.', '2023-03-31 18:41:39'),
(1351, 272, 251, 'Quisquam nihil soluta porro possimus dolorem. Sit maiores quia magnam blanditiis.', '2021-10-17 12:31:01'),
(1352, 261, 245, 'Reiciendis delectus inventore impedit placeat nisi. Sit commodi explicabo excepturi maiores rerum ducimus tempora sunt. Eum aut nobis sed tempora.', '2021-08-30 22:57:25'),
(1353, 277, 242, 'Maiores fugit omnis pariatur nesciunt. Ex quaerat in animi et reiciendis numquam. Cupiditate tempora consequatur reprehenderit.', '2022-03-24 12:56:59'),
(1354, 271, 245, 'Ducimus qui ipsam quas et commodi eveniet. Voluptas quidem sed consequatur maiores blanditiis voluptatibus magnam. Exercitationem libero est autem suscipit.', '2022-07-13 15:29:52'),
(1355, 267, 243, 'Officiis omnis laboriosam voluptatem quas cumque. Aut iusto est et voluptatum et deleniti sapiente. Incidunt non corporis cumque est eum ipsam quisquam.', '2023-07-29 14:27:30'),
(1356, 268, 247, 'Rem molestiae sed ut temporibus quo quisquam. Voluptatem at aut rem ab voluptate eos atque. Aut dolor praesentium dolorem pariatur.', '2022-09-22 08:43:11'),
(1357, 265, 250, 'Necessitatibus aut quasi omnis minima consequatur veritatis dolores. Quas sit non cumque numquam odit facere. Ex illum corporis molestiae nemo perferendis dolorem earum. Eligendi aut omnis aut. In est quia unde animi.', '2023-06-30 00:41:10'),
(1358, 280, 243, 'Illo qui voluptatem omnis aliquam. Rem hic qui maiores est nulla esse. Libero facilis officiis nisi incidunt. Tempore eligendi illo sed quia optio. Iusto et fugit magni dolor. Est laudantium voluptatibus laboriosam ut cumque.', '2022-05-14 11:08:17'),
(1359, 268, 252, 'Sint occaecati inventore nesciunt dolorem similique. Id ut veniam ab. Nobis ut aut reprehenderit expedita non blanditiis qui. Dolor consequatur qui porro maxime.', '2021-12-24 11:51:23'),
(1360, 263, 248, 'Quis repellat sint voluptatem ad et omnis blanditiis. Officiis consectetur ut vero ipsum beatae accusamus eveniet. Quasi amet perspiciatis omnis itaque nemo.', '2022-06-14 14:43:56'),
(1361, 272, 246, 'Consectetur ad laborum voluptatum velit explicabo libero sequi. Qui harum neque voluptatum qui. Rem vero sed nisi officiis assumenda animi. Corporis molestiae nesciunt consequatur itaque aut deleniti aut.', '2022-05-15 21:02:05'),
(1362, 269, 251, 'Sed vel eveniet odio commodi occaecati ipsa necessitatibus voluptas. Aut doloribus fugit voluptates repellat et ut asperiores. Enim possimus laudantium corrupti quae explicabo esse.', '2021-12-31 05:10:36'),
(1363, 261, 244, 'Veniam laborum nihil velit totam aperiam et fuga. Aspernatur unde natus aut autem consequatur sint aliquid. Quod itaque eius id esse eum. Nostrum animi corrupti dignissimos voluptate. Est consequatur dolorem totam.', '2023-04-19 09:21:35'),
(1364, 265, 250, 'Et molestiae et deleniti optio. Impedit omnis nostrum aut. Sit exercitationem delectus explicabo delectus quis impedit dolor provident. Cum sed sunt est est et.', '2022-10-09 02:38:59'),
(1365, 267, 244, 'Sit quia voluptatibus perspiciatis. Dolores blanditiis quisquam eveniet est nulla. Aut eligendi voluptatibus inventore provident provident.', '2023-02-13 21:55:47'),
(1366, 280, 247, 'Ipsam voluptate reprehenderit animi magnam deleniti. Et eaque earum ullam nemo. Expedita tenetur nihil quis laborum dolorem.', '2021-11-19 02:10:56'),
(1367, 261, 242, 'Voluptatem voluptatibus at blanditiis quasi eos. Sit explicabo nam amet adipisci ut non nam. Possimus maiores quam autem. Hic sunt ipsam sequi alias quaerat.', '2021-12-04 10:42:06'),
(1368, 273, 246, 'Porro et omnis veritatis quo laborum. Tempora nihil voluptates sit et consequatur et. Hic quae dolores dolores nemo.', '2023-08-04 07:31:33'),
(1369, 263, 241, 'Accusantium in officia molestiae magnam quia deleniti. Quo temporibus enim amet veniam delectus. Eos assumenda qui dolorem ex.', '2022-06-16 08:58:30'),
(1370, 268, 250, 'Sed soluta libero magni ut autem. Cupiditate voluptatibus quasi corporis rerum aut modi non quis. Molestiae quis adipisci ut ut qui consectetur numquam.', '2022-02-05 07:39:03'),
(1371, 269, 252, 'Aut sunt odit ullam in. Tempore non quisquam explicabo quam exercitationem illum. Reprehenderit repellendus omnis minus ratione qui distinctio molestiae. Voluptas temporibus odit et error recusandae.', '2021-11-23 04:30:07'),
(1372, 267, 245, 'Velit aut veniam aut ut accusamus occaecati labore. Non possimus et aperiam quos quasi optio. Natus autem vitae quia autem incidunt. Cupiditate omnis iste numquam sed id qui fuga.', '2022-04-12 06:47:10'),
(1373, 262, 244, 'Quos nam dolorum non maxime dolores qui. Optio nesciunt ut sed accusantium excepturi asperiores consequuntur. Occaecati qui facere tenetur.', '2022-02-21 08:04:33'),
(1374, 271, 244, 'Corrupti numquam cupiditate commodi velit rem. Non ut consequuntur similique voluptas ipsam atque. Sint et labore necessitatibus sit officia veniam quasi.', '2023-08-08 15:01:11'),
(1375, 276, 253, 'Incidunt ea enim quae placeat. Qui beatae voluptatem architecto id eius aut. Reiciendis corporis dolorem cum nihil ex sequi libero tempore.', '2023-02-14 03:11:06'),
(1376, 279, 247, 'Ullam recusandae voluptate sunt optio ipsum dicta et amet. Quibusdam eligendi quisquam minus et omnis quia. Eum cum recusandae commodi consequatur est voluptatum. Voluptatem quod voluptatem in possimus quia fugit.', '2021-11-27 23:44:38'),
(1377, 279, 241, 'Ad quidem corrupti maiores dicta vero. Nostrum deserunt minima et praesentium omnis. Quibusdam quaerat reiciendis sed tempore dolorum. Aut molestiae corporis dolorum qui.', '2022-03-23 06:47:15'),
(1378, 267, 245, 'Laudantium rerum esse voluptas fuga. Atque atque dolor quam architecto unde voluptate ut eum. Aut enim laborum id magni.', '2022-10-23 16:44:12'),
(1379, 263, 249, 'Aut voluptates molestiae minima laboriosam minima. Eos hic officiis architecto neque illum voluptatum id. Beatae dolorum adipisci adipisci. Et omnis quia dolorum dolorem voluptatem sit.', '2021-10-10 21:25:54'),
(1380, 268, 242, 'Animi sint aut libero aut autem fugiat nisi. Totam ipsa dolorem quis explicabo dicta odio. Quo vitae quis dicta et et vel. Magni perspiciatis aliquid est magni exercitationem iste.', '2021-08-20 19:50:48'),
(1381, 275, 253, 'Cum et ut sint at. Quas culpa debitis incidunt esse ipsum aut et. Expedita laudantium expedita earum saepe tempora unde. Voluptate et magni aut dolorum aspernatur et distinctio voluptate. Et ab aliquid delectus veniam omnis aut.', '2021-12-24 05:14:33'),
(1382, 268, 251, 'Consequatur iure et officiis et praesentium minima vel. Omnis deleniti id sed corporis natus molestiae. Libero eos velit ipsum fuga.', '2021-12-21 22:00:16'),
(1383, 269, 249, 'Totam et itaque laudantium qui aspernatur vitae. Sed et quam et aut. In repudiandae omnis ipsam. Voluptas reprehenderit illum velit iure voluptatibus. Itaque cum recusandae dolores autem accusamus quod atque dolores.', '2022-11-27 19:10:33'),
(1384, 261, 252, 'Occaecati exercitationem rerum officiis et. Aliquam aperiam fuga fuga nihil aut voluptatum molestiae.', '2022-06-06 10:36:02'),
(1385, 269, 249, 'Excepturi iure eum accusamus ratione minus. Dolorem sunt cupiditate omnis cum odio inventore. Non perferendis at qui vel beatae dolore. Voluptatem totam voluptas sed ut consequuntur.', '2022-06-01 11:56:02'),
(1386, 270, 249, 'Aut quos sunt laudantium consequuntur. Eveniet velit laudantium expedita sit autem nihil facere. Aut totam ratione voluptatem id. Facilis eos et dolor consectetur voluptatem.', '2023-07-16 14:50:58'),
(1387, 261, 252, 'Quas autem consequatur autem libero. Iure quos veniam non suscipit. Sit aut dicta consequatur. Qui error tempora tempora nihil. In voluptas soluta qui non ut nihil modi. Dolor a repellat optio quasi. Ducimus qui libero odit porro blanditiis.', '2023-04-02 23:44:47'),
(1388, 279, 249, 'Expedita quasi eum et quis delectus et veritatis. Deleniti inventore eius esse eaque.', '2023-06-14 05:57:24'),
(1389, 273, 246, 'Commodi perspiciatis consequatur et mollitia. Neque sequi laboriosam fugit nihil. Quia sed nihil voluptatem velit tempora id ratione. Nostrum aliquid id et quam. Tempore alias magnam incidunt possimus.', '2022-07-22 04:59:26'),
(1390, 273, 253, 'Rerum qui ducimus dolorem voluptates sit et. In debitis exercitationem voluptatem incidunt sed odit nostrum. Vel voluptatibus quia voluptates consequatur aut quod. Ad consequuntur suscipit magni.', '2023-06-28 06:48:35'),
(1391, 272, 253, 'Earum voluptatem beatae aut quia. Mollitia quae rerum rerum harum eaque nihil porro nulla. Odio consequatur rem quidem non atque amet assumenda. Qui aut sit et ut eius aut.', '2022-08-10 14:09:33'),
(1392, 265, 245, 'Commodi beatae omnis similique et ut. Consequatur nam quis reprehenderit nulla.', '2022-11-30 02:56:58'),
(1393, 279, 241, 'Laboriosam alias occaecati quos rem optio suscipit. In quod nesciunt ut qui doloribus. Sit assumenda ut nihil optio laborum sed deserunt repellendus. Et dolores rem consectetur pariatur magnam qui. Quia sed magni eum rerum aperiam quo facere.', '2022-07-04 01:26:41'),
(1394, 262, 250, 'In harum reprehenderit quis et. Eum quidem eveniet odit quia nihil facere pariatur. Sunt asperiores non voluptas dolorem ut molestiae tempore.', '2023-01-01 00:35:31'),
(1395, 262, 242, 'Eligendi vitae dolores quis aut. Deleniti fugiat ut ullam laudantium aut ipsam tenetur sapiente. Eos enim qui quibusdam reprehenderit provident rerum corporis.', '2022-01-06 11:21:14'),
(1396, 275, 252, 'Labore eos est eos tenetur. At laudantium recusandae ducimus iure quia vel voluptate molestias. Fugiat saepe aperiam alias porro.', '2021-09-09 16:03:42'),
(1397, 273, 248, 'Dolor dolorem eaque repudiandae excepturi quia vel quam. Aut mollitia nulla magnam consequuntur accusamus a inventore. Fugit maiores tempora fuga deleniti.', '2021-10-08 14:30:24'),
(1398, 272, 245, 'Sint quo commodi magni excepturi magnam. Ullam eligendi est voluptas corrupti error at officia omnis. Repellat debitis deleniti rerum voluptatem. Incidunt natus nulla quaerat minima vel.', '2022-09-28 02:38:45'),
(1399, 278, 246, 'Voluptas tempora quia delectus aut vero in. Aperiam deserunt fugit dolor praesentium eos adipisci. Illo doloremque vero et. Quia non corrupti culpa temporibus dicta.', '2021-11-01 15:20:32'),
(1400, 267, 243, 'Odio ducimus tenetur in. Quo fugit qui rem enim suscipit. Cumque enim cumque ad aut. Cupiditate nobis provident excepturi rem accusantium.', '2022-11-17 17:17:24');

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
(241, 'admin@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$qPvwRsW7RW1lpFlbN5vgNeGPD047d2S9Rb/xYWflH/y2aS8n4GQKm', 'Admin', NULL, NULL, '2023-08-16 09:40:37', NULL, '/uploads/avatars/default_avatar.webp'),
(242, 'editor@gmail.com', '[\"ROLE_EDITOR\"]', '$2y$13$yvBcva8S.6JXqk0E8fE9quESMEMYcqBEARuOwSbP/ilH22s9v9.2K', 'Editor', NULL, NULL, '2023-08-16 09:40:37', NULL, '/uploads/avatars/default_avatar.webp'),
(243, 'test@gmail.com', '[\"ROLE_USER\"]', '$2y$13$wUKAPS3QeYov0MhmbsCivOAt/EIw3vz6ZtayqDbyQLv/9Zt6Ek4Iq', 'Compte de test', NULL, NULL, '2023-08-16 09:40:38', NULL, '/uploads/avatars/default_avatar.webp'),
(244, 'John_Doe327@hotmail.com', '[]', '$2y$13$VQA6lXVpUB37HfGZ5OxL8eM14oOJOAEui0gd0gd2BOrQpxmIEyMji', 'John_Doe327', NULL, NULL, '2023-08-16 09:40:38', NULL, '/uploads/avatars/default_avatar.webp'),
(245, 'Console_log_addict249@gmail.com', '[]', '$2y$13$NDOvkB/znwV/alEICaWjeeXyHtkQcoZ7ivfokbUd5G49qQaznqTZS', 'Console_log_addict249', NULL, NULL, '2023-08-16 09:40:38', NULL, '/uploads/avatars/default_avatar.webp'),
(246, 'Not_A_Number347@yahoo.com', '[]', '$2y$13$fK.05f6QO9pDYfBo8mHsM.IBY.z2./NN.T1viqKYZYivrZpCJB2RS', 'Not_A_Number347', NULL, NULL, '2023-08-16 09:40:39', NULL, '/uploads/avatars/default_avatar.webp'),
(247, 'Not_A_Number100@gmail.com', '[]', '$2y$13$RdK.98ENivyoDC3H1plSVeWDOCX8Gtw8qX99KX7Z1JHfphwPVYCNq', 'Not_A_Number100', NULL, NULL, '2023-08-16 09:40:39', NULL, '/uploads/avatars/default_avatar.webp'),
(248, 'Code_Master129@gmail.com', '[]', '$2y$13$beOdUhkZMFsC4sSlywnxK.S/4cTbeUobWx/.tkfKzay2e9cRguDm.', 'Code_Master129', NULL, NULL, '2023-08-16 09:40:39', NULL, '/uploads/avatars/default_avatar.webp'),
(249, 'TolkienDev295@hotmail.com', '[]', '$2y$13$xIlHgbaNaTejIScF1b3xD.aLC3H0zXAuUMw3EW1rbJd4ayeGdC62q', 'TolkienDev295', NULL, NULL, '2023-08-16 09:40:40', NULL, '/uploads/avatars/default_avatar.webp'),
(250, 'Echo379@hotmail.com', '[]', '$2y$13$nts6k8cD3tH1IhopB19Qm.vzggbo/wYOIcwJRh5Ir2/9HduSVYE8i', 'Echo379', NULL, NULL, '2023-08-16 09:40:40', NULL, '/uploads/avatars/default_avatar.webp'),
(251, 'Extreme_React241@yahoo.com', '[]', '$2y$13$JcAoVUS3vP2fBEdeMgFfVuGF/aT.3jDQDfSaUOIlbyq4HioyjIwXW', 'Extreme_React241', NULL, NULL, '2023-08-16 09:40:40', NULL, '/uploads/avatars/default_avatar.webp'),
(252, 'Jesus_C++294@gmail.com', '[]', '$2y$13$P9nyKg3zASL7XGh9VPAV3unilHJ3ucj62r0yQDkTK2kOADFxl6VZm', 'Jesus_C++294', NULL, NULL, '2023-08-16 09:40:41', NULL, '/uploads/avatars/default_avatar.webp'),
(253, 'John_Doe142@yahoo.com', '[]', '$2y$13$4OCUHqboq0LHUr7DKnJ2xeS1uC3xGwAdSwrSsxhfENXe7pUfcH742', 'John_Doe142', NULL, NULL, '2023-08-16 09:40:41', NULL, '/uploads/avatars/default_avatar.webp');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1401;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

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
