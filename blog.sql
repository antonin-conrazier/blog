-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 12 avr. 2022 à 08:44
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `introduction` text NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `introduction`, `content`, `created_at`) VALUES
(114, 'L’argent fait-il le bonheur ?', 'Par Realmz23342Rz', 'L’argent fait-il le bonheur ? Cette question n’est pas nouvelle : philosophes, hommes politiques et économistes s’intéressent depuis longtemps à ce sujet. Les premières réponses scientifiques, en revanche, ont moins de 10 ans. Si nous connaissons tous de personnes ayant un parti pris définitif sur la question, la recherche en psychologie et en sciences économiques nous apporte enfin des éléments de réponse précis et étayés pour trancher le débat. Voyons donc si, oui ou non, l’argent fait le bonheur.', 'Comment mesurer le bonheur ?\r\n\r\nAvant même de savoir si on peut se « payer » du bonheur, encore faut-il savoir de quoi on parle. Dans la recherche scientifique, il existe de nombreuses échelles permettant de situer une personne en termes d’épanouissement personnel. En psychologie positive, et plus particulièrement dans les travaux qui nous intéressent, on utilise deux mesures complémentaires pour mesurer le bonheur :\r\n\r\n    La satisfaction dans la vie.\r\n    Le bien-être émotionnel.\r\n\r\nLa satisfaction dans la vie\r\nOutils de mesure\r\n\r\nPour savoir si les gens sont satisfaits de leur vie, on utilise en général l’échelle de mesure de Cantril. Les participants aux études répondent alors à une question de ce type :\r\n\r\n« Voici une échelle qui représente l’échelle de la vie. Supposons que le sommet de l’échelle représente la meilleure vie possible pour vous, et le bas de l’échelle la pire vie possible pour vous. Où vous situez-vous personnellement sur cette échelle en ce moment ? »\r\n\r\nGrâce à cette évaluation sur un continuum allant de 0 à 10, on obtient une mesure assez globale et robuste de la satisfaction et du bonheur.\r\nLe bien-être émotionnel\r\n\r\nPour évaluer le bien-être émotionnel, on demande aux participants d’indiquer la manière dont ils se sont sentis la veille de la passation de l’enquête. Pour ce faire, on leur propose une liste d’émotions, et ils doivent indiquer celles qu’ils ont ressenties. Cette liste contient un certain nombre d’émotions positives et négatives. On agrège ensuite ces réponses pour obtenir un score d’émotions positives et un score d’absence d’émotions négatives.\r\n\r\nLa présence d’émotions positives est fortement liée au bonheur. Néanmoins, cela n’implique pas nécessairement une faible présence d’émotions négatives. C’est pourquoi on mesure également ces dernières. Le fait de ne ressentir que peu d’émotions négatives est, ici aussi, lié au bonheur. Mais, là encore, le fait de ne pas ressentir d’émotions négatives ne signifie pas pour autant que l’on ressent des émotions positives. On peut très bien être dans une neutralité ou une apathie émotionnelle. Ainsi, ces deux scores, complémentaires, sont indispensables pour mesurer correctement le bien-être émotionnel, et donc le bonheur.\r\n\r\n \r\nNiveau de salaire et épanouissement personnel\r\n\r\nMaintenant que la manière dont on mesure le bonheur a été clarifiée, revenons à notre question initiale. Pour y répondre, les chercheurs mesurent donc le bonheur, mais demandent aussi aux participants leur niveau de revenus sur une année. Deux grandes études ont été menées spécifiquement sur ce sujet. Commençons par celle qui a pour la première fois mis « un chiffre sur le bonheur ».\r\nLa première recherche précise sur le sujet\r\n\r\nCette première étude [1] a été publiée en 2010 par deux prix Nobel d’économie (Daniel Kahneman et Angus Deaton). Elle se limitait aux États-Unis, et portait sur 1000 habitants. Ses principaux résultats sont les suivants :\r\n\r\n    La satisfaction dans la vie augmente avec les revenus, et ce de manière forte jusqu’à 120 000$/an.\r\n    Le bien-être émotionnel s’améliore jusqu’à des revenus de 75 000$/an. Au-delà, on observe une saturation (même avec des revenus plus élevés, le bien-être émotionnel cesse de s’améliorer).\r\n    La souffrance émotionnelle est exacerbée par les revenus plus faibles. De même, la satisfaction dans la vie est bien plus faible lorsque les revenus sont peu élevés.\r\n\r\nMême si l’échantillon de cette recherche reste limité, Daniel Kahneman et Angus Deaton ont pour la première fois dégagé un lien clair entre revenus et bonheur. Depuis cette étude, on insiste beaucoup sur ce chiffre de 75 000$ par an (6250$ par mois), qui a fait couler beaucoup d’encre et suscité un vif débat. Un certain chef d’entreprise américain a même fait parler de lui il y a quelques années en révisant sa politique salariale sur la base des résultats de cette étude.\r\nUne vision plus récente, et plus complète\r\n\r\nUne femme comptant des dollars américainsUne deuxième étude[2], publiée en 2018, a porté sur 1,7 millions de personnes réparties dans 164 pays. Les chercheurs ont ici pris en compte la taille du foyer. Cela signifie que les chiffres listés ci-dessous correspondent systématiquement au revenu annuel pour 1 individu seul. Par ailleurs, il est à noter que les revenus sont rapportés au coût de la vie du pays, et transformés en équivalent en dollars pour assurer une comparabilité des résultats entre les différentes parties du monde. Au niveau mondial, on peut résumer les conclusions de ces travaux en 3 points :\r\n\r\n    La satisfaction dans la vie augmente avec les revenus, et sature à 95 000$/an (environ 85 000€).\r\n    Les émotions positives augmentent avec les revenus, mais saturent quant à elles à 60 000$ de revenu annuel (environ 50 000€).\r\n    Les émotions négatives baissent également avec les revenus. Cette baisse stagne aux alentours de 75 000$/an (environ 65 000€).\r\n\r\nEn regardant l’ensemble du monde, on constate globalement que la saturation de l’effet est plus « chère » dans les pays riches. Cela signifie qu’il faut gagner plus pour atteindre le « plafond » de bonheur lié à l’argent dans les pays occidentaux (tout en gardant à l’esprit que le coût de la vie est pris en compte dans les calculs). Dans l’ensemble, cette étude donne des résultats assez proches de la précédente.\r\nLes chiffres pour l’Europe\r\n\r\nSi cette recherche est plus précise que la précédente, elle ne permet pas pour autant d’analyser les données pays par pays. Néanmoins, afin que ces chiffres soient plus parlants, j’ai listé ci-dessous les résultats de l’Europe de l’ouest, en euros :\r\n\r\n    La satisfaction dans la vie augmente avec les revenus, et sature à 90 000€/an (environ 100 000$/an).\r\n    Le bien-être émotionnel (augmentation des émotions positives et baisse des émotions négatives) cesse de s’améliorer au-delà de 45 000€ de revenu par an (environ 50 000$).\r\n\r\nPour rendre les choses encore plus concrètes, on peut dire que, dans l’ensemble, les habitants d’Europe de l’ouest cessent de voir leur satisfaction augmenter au-delà de 7400€ de revenu mensuel. Le bien-être émotionnel, quant à lui, « coûte moins cher » avec un plafond à 3700€ par mois.', '2022-04-10 00:00:00'),
(110, 'Finalement, selon une étude, l’argent fait bien le bonheur', 'Par letirlicoincoin', 'Un chercheur américain a analysé les réponses de dizaines de milliers d’utilisateurs de son application mobile, raconte « Vanity Fair ».', 'Vivre d\'amour et d\'eau fraîche pourrait ne pas être suffisant pour accéder au bien-être émotionnel… D\'après une nouvelle étude, l\'argent fait bien le bonheur, raconte Vanity Fair. Dans un papier publié en 2010, l\'économiste Angus Deaton et le psychologue Daniel Kahneman constataient une hausse de la satisfaction à l\'égard de la vie conforme à la hausse des revenus.\r\n\r\nLes deux Prix Nobel d\'économie expliquaient cependant que le bien-être émotionnel des Américains cessait de s\'améliorer au-delà de 75 000 dollars par an (soit près de 62 000 euros). Parallèlement à leur publication, Matthew Killigsworth, alors étudiant en doctorat de psychologie à Harvard, développe l\'application iPhone « Track your happiness » afin d\'interroger ses utilisateurs au sujet de leurs émotions et activités.\r\n\r\nPlus riche, plus heureux\r\n\r\nDix ans après son lancement, le chercheur a décidé de l\'utiliser afin de comparer le bonheur et les revenus de ses utilisateurs. Matthew Killingsworth, aujourd\'hui chercheur au sein de l\'université de Pennsylvanie, a analysé les réponses de 33 391 travailleurs américains.\r\n\r\nSes conclusions, publiées dans les Actes de la National Academy of Science, montrent que, même au-delà de 75 000 dollars de revenus par an (voire 90 000 dollars par an), plus les utilisateurs augmentent leur pouvoir d\'achat, plus ils expriment une augmentation de leur bien-être émotionnel. De quoi rassurer Jeff Bezos, Elon Musk ou Bill Gates les jours de déprime passagère…', '2022-04-07 00:00:00'),
(112, 'D’où vient l’argent ?', 'Par Annie Benassi Carré', 'Si vous êtes économiste comme moi, peut-être avez-vous été assailli(e) par vos proches durant la pause estivale, autour de la question suivante :  D’où vient l’argent ?', 'L’Etat semblait désargenté, il essayait de réduire le déficit, menait des réformes en ce sens ; et puis soudain, virage à 180°, il déverse des milliards pour financer les masques, les tests, les vaccins, mais aussi les entreprises dont le chiffre d’affaires s’est effondré lors de la crise sanitaire, et les ménages dont les revenus sans cela se seraient affaissés. Nos entreprises n’avaient plus de clients, et pourtant nous étions toujours payés en fin de mois. Comment ce miracle est-il possible ? Où est le loup ?\r\n\r\nTout le monde a en tête le circuit normal de l’argent dans l’économie : les entreprises rémunèrent leurs salariés pour leur travail ; cette rémunération fournit l’essentiel de leurs revenus aux ménages, lesquels en dépensent la majorité pour consommer des biens et des services produits par les entreprises, lesquelles rémunèrent les salariés, etc.\r\n\r\nLors du premier confinement, en mars 2020, les dépenses de consommation ont brutalement chuté, de manière inégale selon les secteurs ; les secteurs aval (comme les restaurants) ont réduit leurs achats de biens intermédiaires (comme les bouteilles de vin) ; c’est ainsi que la chute du chiffre d’affaires s’est propagée dans l’économie. J’illustrerai ici le propos sur le cas de la France, mais les schémas sont identiques qualitativement dans les autres pays avancés.\r\n\r\nPrivées de chiffre d’affaires, de nombreuses entreprises ne pouvaient plus payer leurs salariés, enrayant un peu plus encore le circuit présenté sur le graphique 1. Pour éviter cette amplification catastrophique de la crise économique, le Gouvernement a très rapidement mis en place trois types de soutiens :\r\n\r\n    Des subventions directes, à travers notamment le fonds de solidarité et les exonérations de cotisations sociales ;\r\n    Une large extension du dispositif d’activité partielle ;\r\n    Des prêts garantis par l’Etat et des reports de cotisations et d’échéances fiscales.\r\n\r\nCes soutiens ont permis aux entreprises de continuer de verser les salaires. Le pouvoir d’achat du revenu disponible brut a ainsi augmenté en moyenne de 0,4 % en 2020 selon l’Insee, alors que le PIB baissait de 7,9 %.\r\n\r\n', '2022-04-09 00:00:00'),
(113, 'L\'argent fait (un peu) le bonheur', 'Par Maris Piniz ', 'L\'Insee a publié mardi les résultats d\'une étude visant à mesurer l\'impact sur le bien-être de plusieurs indicateurs de qualité de vie mentionnés. ', 'Le bien-être dépend-il de la seule taille du portefeuille ? Le rapport de la Commission sur la mesure des performances et du progrès social, dit \"rapport Stiglitz\", du nom de son directeur, Prix Nobel d\'économie, mettait déjà en évidence en août 2009 la nécessité de ne pas s\'arrêter aux simples feuilles de salaire et à la couleur de la carte bancaire pour mesurer le bien-être d\'une personne.\r\nCela semble aller de soi, et pourtant les indicateurs économiques mis à la disposition des évaluateurs de politiques publiques, que ce soit le PIB par habitant ou l\'indicateur de développement humain échouaient jusqu\'alors à en rendre compte.\r\n\r\nPour pallier ce vide, l\'Insee a publié, mardi 8 janvier, les résultats d\'une étude visant à mesurer l\'impact sur le bien-être de plusieurs indicateurs de qualité de vie mentionnés par le rapport Stiglitz. L\'étude, réalisée en 2011 sur un échantillon de dix mille Français de métropole âgés de plus de dix-huit ans, rapporte que \"les adultes vivant en France métropolitaine évaluent leur sentiment général de bien-être, sur une échelle de 0 à 10, à un niveau moyen de 6,8\". Dans la cohorte étudiée, les \"faiblement satisfaits\" sont somme toute peu nombreux : seuls 7 % des personnes interrogées ont déclaré un niveau de bonheur inférieur à 5, tandis que 13 % ont donné une note supérieure à 8.\r\n\r\nDans le détail, le bonheur matériel compte pour une part importante dans cette mesure du bien-être. En effet, parmi les sondés ayant déclaré un niveau de bien-être inférieur à 5, plus d\'une personne sur cinq (22,5 %) fait partie du décile de la population le plus pauvre. C\'est encore plus vrai dans l\'autre sens : pour ce qui est de la population s\'étant attribué la note de bonheur la plus élevée, près d\'une sur quatre (23,4%) provient d\'un ménage disposant de hauts revenus, dans le décile le plus riche de la population.\r\n\r\nIMPORTANCE DES LIENS SOCIAUX\r\n\r\nSi les contraintes de ressources contribuent largement aux différences de bonheur ressenti, on ne peut leur en imputer la seule responsabilité. Il ressort de l\'enquête que la qualité de vie et ses multiples facteurs influent directement sur le bien-être. Deux indicateurs notamment jouent tout autant que les contraintes financières (définies comme le manque de moyens financiers pour se loger, s\'alimenter, s\'habiller, se déplacer) : la faiblesse des liens sociaux, qui fait référence aux contacts peu fréquents avec la famille ou les amis, et le stress de la vie quotidienne, qui englobe des tracas récurrents concernant la santé, les relations familiales, le budget du foyer...\r\n\r\nL\'enquête montre, par exemple, qu\'un mauvais état de santé ou des conditions de logement dégradées (humidité, manque d\'espace...) détériorent le sentiment de bien-être. En revanche, celui-ci n\'est pas modifié significativement par la qualité de l\'environnement (pollution de l\'air, pollution sonore, présence d\'espaces verts, propreté du quartier...) ni par les \"tensions au sein de la société\", qui font référence aux rapports entre les genres, les générations, les religions ou les partis politiques...\r\n\r\nCette enquête présente également la particularité d\'englober, et c\'est une première, les risques psychosociaux au travail. Ce terme recouvre à la fois le stress, les violences internes (harcèlement moral, sexuel) et externes (infligées par les clients, fournisseurs, patients, partenaires...). Il apparaît que ces risques psychosociaux \"vont de pair avec un moindre sentiment de bien-être\", une conclusion qui souligne l\'importance accordée par les actifs à leurs conditions de travail.\r\n\r\nEnfin, l\'enquête met également en évidence une différence de corrélation entre bien-être et contraintes financières chez les personnes exerçant un emploi et sur l\'ensemble de la population. Contrairement à ce que l\'on pourrait penser, le manque de ressources matérielles affecte beaucoup plus le bien-être des actifs que celui des populations n\'ayant pas ou plus d\'emploi.', '2022-04-08 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime NOT NULL,
  `article_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ARTICLES` (`article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=210 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `author`, `content`, `created_at`, `article_id`) VALUES
(208, 'Mili Destini', 'l\'argent oui beaucoup l\'argent j\'aime !', '2022-04-11 17:17:58', 114),
(209, 'jean paul lamenace', 'comment avoir l\'argent ....\r\npour de vrai ??!', '2022-04-11 17:19:16', 110);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`) VALUES
(9, 'Marc', 'Bernard', 'sbarbe@roy.com'),
(15, 'Brigitte', 'Hoarau', 'pierre08@moreno.fr'),
(19, 'Susanne', 'Allard', 'guillaume.marechal@charles.fr'),
(23, 'Alphonse', 'Lecomte', 'valerie.tessier@gillet.com'),
(26, 'Guillaume', 'Guillou', 'tessier.thierry@sfr.fr'),
(28, 'Élise', 'Delahaye', 'david.noel@loiseau.org');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
