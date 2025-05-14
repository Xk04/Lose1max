-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 14 mai 2025 à 12:45
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `lose1max`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id_article` int(10) NOT NULL,
  `Titre` varchar(255) DEFAULT NULL,
  `url_image` varchar(2083) DEFAULT 'stadeDeHaut.jpeg',
  `Date_publication` date DEFAULT NULL,
  `id_journaliste` int(10) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `contenu` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id_article`, `Titre`, `url_image`, `Date_publication`, `id_journaliste`, `description`, `contenu`) VALUES
(15, 'La LFP et DAZN ont trouvé un accord', 'dazn.jpg', '2025-05-02', 6, 'La LFP et DAZN se sont accordés pour le règlement des deux dernières échéances de cette saison, pour un total de 140 millions d\'euros. La Ligue a maintenant jusqu\'à la fin du mois pour tester le marché, et éventuellement s\'engager avec DAZN pour son projet de chaîne de la Ligue.', '« Dans le cadre de la médiation mise en place à l\'initiative de M. Patrick Sayer, président du Tribunal des activités économiques de Paris, LFP Media et DAZN sont parvenues à un accord mettant fin à leur différend. » Par un communiqué commun, la société commerciale de la Ligue de football professionnel et son diffuseur principal, ont acté la fin de leur conflit judiciaire. Une décision validée en conseil d\'administration de la Ligue ce mercredi.\n\nComme annoncé par L\'Équipe, ce premier pas consiste à acter la rupture du contrat de diffusion dès la fin de cette saison et engage donc DAZN à régler 140 millions d\'euros, à travers ses deux dernières échéances de 70 millions, une ces prochains jours et l\'autre le 30 juin. Dans l\'entourage de la LFP, on précise que « la Ligue peut désormais tester le marché des distributeurs et que le prochain point d\'étape sera fait fin mai, une fois le marché testé avec les options sur la table ».\n\nLa plateforme DAZN, elle, se dit satisfaite de cet accord et de l\'ouverture de nouvelles discussions avec la Ligue pour envisager un partenariat autour de sa propre chaîne. Concernant l\'indemnité compensatoire de 100 millions d\'euros que devrait régler DAZN pour la deuxième année du contrat intial, la plateforme proposait de l\'investir ces deux prochaines saisons dans la production de la future chaîne 100 % Ligue 1 envisagée par la LFP. Faute de partenariat, DAZN pourrait, selon nos informations, transférer son parc d\'abonnés (entre 600 et 700 000 aujourd\'hui) contre 15 millions d\'euros. Du moins les abonnés sur lesquels elle a la main en direct puisqu\'une bonne partie de ses abonnements sont vendus par des opérateurs comme Prime Video, Canal+, Orange, SFR... qui détiennent eux-même les fichiers clients et non DAZN.\n\nPour l\'avenir, notamment sur la construction de sa chaîne 100 % L1, la LFP a appris jeudi que Canal+ souhaitait s\'y investir. Mais pas à n\'importe quelles conditions... Mardi, un collège de Ligue 1 doit se tenir avec tous les présidents pour commencer à débattre des diverses options.'),
(16, 'Nice-Matin fête ses 80 ans à l\'Allianz Riviera lors de la rencontre décisive OGC Nice-Reims', 'ogcnice-nice-matin.jpg', '2025-05-02', 7, 'L’OGC Nice doit battre Reims ce soir pour entretenir son rêve de Ligue des champions, dans une rencontre marquée par les 80 ans du journal Nice-Matin.', '\r\nEnsemble et maintenant. La formule résonne depuis plusieurs semaines dans les travées de l’Allianz Riviera, l’écho sera vendredi soir plus fort que jamais.\r\n\r\nParce que l’union fait la force, l’OGC Nice et le journal local ont marché main dans la main vers la réception de Reims du soir (20h45) pour célébrer et fédérer autour des 80 ans de Nice-Matin.\r\n\r\n\"Même si le club est un peu plus vieux (120 ans), 80 ans ce n’est quand même pas rien, a souri Franck Haise. L’idée est en tout cas vraiment sympa et le maillot est réussi.\"\r\n\r\nReste à passer la barre des 24.000 spectateurs et assister à une victoire des Rouge et Noir pour que la soirée évènement soit du même acabit.\r\n\r\nLes Niçois veulent garder les pieds sur terre depuis l’exploit à Paris, tandis que leurs supporters ont la tête dans les étoiles, eux. Parce que la Ligue des champions, le choix du roi, n’est plus une illusion depuis la soirée magique du Parc des Princes.\r\n\r\nSoudés et séduisants, les Aiglons ont réussi une performance majuscule que la presse nationale a trop cherché à minorer via les préoccupations du PSG pour sa demi-finale de C1.\r\n\r\nC’est pourtant bien le même onze qui a battu Arsenal qui s’est cassé les dents sur le dispositif inédit de Franck Haise, la détermination et l’efficacité des Niçois.\r\n\r\nLes douze arrêts de Bulka et les doublés de Sanson (buts) et Bouanani (passes décisives) renforçaient l’idée d’une soirée parfaite avant que les graves blessures d’Abdelmonem et Youssouf ne tronquent l’esprit de fête.\r\n\r\nAbdelmonem et Youssouf dans les têtes pour gagner du cœur\r\n\"C’était déjà un mélange d’émotions dans le vestiaire à Paris. Tu veux fêter la victoire dans un grand match et rigoler, puis tu penses à Mohamed qui nous a quittés sur civière et n’a même pas pu célébrer avec nous, a reconnu l’immense gardien polonais. La blessure de Youssouf est une seconde catastrophe en cinq jours. Je leur souhaite beaucoup de force et de courage au nom de l’équipe.\"\r\n\r\nÉcarté quatre mois au cours de la saison 2022-23, Bulka connaît les tracas d’une longue convalescence (épaule). La finale de Coupe de France perdue contre Nantes (2022) ou les échecs répétés dans la quête d’une qualif’ en Ligue des champions sont d’autres blessures bien connues du portier arrivé sur la Côte en 2021.\r\n\r\n\"On doit garder Youssouf et Abdelmonem dans nos têtes, je pense que ça peut souder le groupe. Nous aider à ouvrir les yeux et profiter du moment. Ces accidents montrent que la vie de joueur est imprévisible. Alors quand tu peux vivre une fin de saison excitante, il faut le faire à 100% et en être content\".\r\n\r\nFranck Haise aussi préfère la philosophie aux mathématiques à trois DST (devoir sur table) du verdict final de la Ligue 1. \"On ne doit pas faire de calculs ou trop se poser de questions. Prenons le match de Reims avec enthousiasme, énergie, volonté de jouer et de poser des problèmes à l’adversaire. À nous de prendre des initiatives et faire notre match pour regarder tranquillement la suite des résultats du week-end.\"\r\n\r\nRien à perdre, tout à gagner, c’était déjà la formule gagnante à Paris. Souffler des bougies était aussi resté un moment à part contre Saint-Etienne (8-0). \"C’était les 120 ans du club, rembobine Bulka. Si on refait la même chose, je signe tous les jours.\" Nous aussi. Le même pari qu’au Parc des Princes?\r\n'),
(17, 'Course à l’Europe : Le suspense est total !', 'course-a-l-europe.jpeg', '2025-04-30', 8, 'A trois journées de la fin du championnat, le suspense reste entier dans la course à l’Europe. De l’OM (2e) à Strasbourg (7e), six clubs se tiennent en seulement quatre points en haut de la Ligue 1 McDonald’s.', 'Les trois dernières journées de Ligue 1 McDonald’s s’annoncent palpitantes ! Derrière le PSG, déjà champion, six clubs peuvent encore viser une qualification directe pour la prochaine Ligue des Champions. Après 31 journées, l’OM compte 4 points d\'avance sur le RCSA, soit le plus faible écart entre le 2e et le 7e dans l\'élite, à ce stade de la compétition, depuis l\'instauration de la victoire à 3 points (1994/95). Focus sur les dynamiques et les calendriers des prétendants à l\'Europe.\r\n\r\n> Le classement de la Ligue 1 McDonald’s\r\n\r\nStrasbourg, une phase retour de feu\r\nMoins bien classé des six clubs, le RC Strasbourg Alsace est pourtant celui qui affiche la meilleure forme depuis le début de la phase retour. Derrière le PSG (35 pts, 11V, 2N, 1D), les hommes de Liam Rosenior présentent tout simplement le deuxième bilan de Ligue 1 McDonald’s sur la période (31 pts, 9V, 4N, 1D). Seul le Stade Rennais est parvenu à battre le RCSA depuis la 18e journée (1-0, le 2 février), alors que les Strasbourgeois sont invaincus sur les 11 derniers matchs de championnat (8 victoires, 3 nuls), meilleure série en cours. En pleine confiance, ils auront donc des certitudes au moment de recevoir le PSG (samedi, 17h), eux qui ont battu Lille et Lyon sur la période et qui ont aussi fait match nul contre Marseille, Nice et Monaco. La fraîcheur et l’insouciance du jeune effectif strasbourgeois prennent donc pour le moment le pas sur son manque d’expérience. Il faudra que cela dure jusqu’au bout pour s’offrir un billet pour la Ligue des Champions.\r\n\r\nDerrière Strasbourg, le LOSC et l’OL se suivent dans un mouchoir de poche sur la phase retour. Chez les Dogues, c’est souvent tout blanc ou tout noir avec un dernier match nul qui remonte à la 17e journée. La dynamique est malgré tout très positive avec 27 points pris (9V, 5D) sur les matchs retour et 4 victoires empochées sur les cinq dernières journées. Actuellement à la troisième place, les Dogues peuvent réaliser un grand coup en cas de victoire face à l’OM dimanche. Leur parcours en Ligue des Champions, qui leur a permis de faire le plein d’expérience, peut leur servir dans le money time.\r\n\r\nLe parcours européen de l’Olympique Lyonnais, qui a manqué d’un cheveu un exploit retentissant à Old Trafford, a aussi confirmé aux Gones qu’ils étaient capables de grandes choses. Avec 6 victoires engrangées sur les huit dernières journées, les joueurs de Paulo Fonseca sont toujours bien placés dans la course, et ce malgré leur déconvenue dans le derby. Leur confrontation directe avec l’AS Monaco (J33) vaudra très chère, mais les Rhodaniens peuvent compter sur des individualités fortes, comme Rayan Cherki ou Corentin Tolisso pour ne citer qu’eux.\r\n\r\nPlus au sud, c’est dès ce week-end que l’Olympique de Marseille peut frapper un grand coup s’il repart de Lille avec un succès. Alors qu’il a occupé la deuxième place à 21 reprises en 31 journées cette saison, le club phocéen est toujours le mieux placé pour décrocher une place directe en C1. Après une période de creux – 4 défaites en 5 matchs entre début mars et mi-avril –, l’OM semble être reparti avec 2 grosses victoires et 9 buts inscrits face à Montpellier (5-1) et Brest (4-1). Le retour au premier plan de ses joueurs majeurs (Leonardo Balerdi, Amine Gouiri ou encore Mason Greenwood) et sa longue mise au vert en Italie pourraient porter leurs fruits dans l’emballement final.\r\n\r\nSur le Rocher, l’AS Monaco est la seule formation de ce « club des six » à ne pas avoir remporté sa dernière rencontre. Avec 2 matchs nuls de rang, les Asémistes sont dans l’obligation de réagir samedi, sur le terrain de l’AS Saint-Etienne, sous peine de voir le podium s’éloigner au plus mauvais moment. Mika Biereth, meilleur buteur du club avec 13 buts en 14 matchs de championnat, sera un atout fort de l’ASM dans ces trois derniers matchs.\r\n\r\nToujours sur la Côte d\'Azur, l’OGC Nice a fait parler de lui la semaine dernière, alors que le club avait connu un coup de moins bien entre début mars et mi-avril (2 nuls et 3 défaites). Après leur victoire face à Angers (2-1), les Aiglons ont surpris tout le monde en mettant fin à l’invincibilité du PSG cette saison, au Parc des Princes (1-3). Avec un calendrier qui paraît favorable, le Gym a une belle carte à jouer.\r\n\r\nLa 7e place qualificative pour l\'Europe ?\r\nEt si ces six clubs finissaient tous européens en fin de saison ? C’est une possibilité grâce à la présence du PSG, déjà champion et donc déjà qualifié pour la prochaine C1, en finale de la Coupe de France. Cinquième nation à l’indice UEFA, la France offre 6 places qualificatives pour une compétition européenne via le championnat, avec un billet en plus pour le vainqueur de la Coupe de France. Si ce dernier se trouve parmi les six premiers du classement, comme le PSG, alors la configuration change avec les 7 premières places qualificatives pour l’Europe.\r\n\r\n[...]\r\n\r\nClassement moyen des adversaires : 10,67'),
(18, 'Ousmane Dembélé souffre d\'un « étirement musculaire des ischio-jambiers de la cuisse droite », annonce le PSG', 'dembele-blessure.jpg', '2025-05-02', 2, 'Sorti à la 70e minute de la demi-finale aller de Ligue des champions face à Arsenal mardi (1-0), Ousmane Dembélé ne s\'est pas entraîné avec le groupe parisien jeudi. Ce vendredi, le PSG a précisé la nature de la blessure de son attaquant, un « étirement musculaire des ischio-jambiers de la cuisse droite ».', 'Sorti à la 70e minute de la demi-finale aller de Ligue des champions face à Arsenal mardi (1-0), Ousmane Dembélé ne s\'est pas entraîné avec le groupe parisien jeudi. Ce vendredi, le PSG a précisé la nature de la blessure de son attaquant, un « étirement musculaire des ischio-jambiers de la cuisse droite ».\r\n\r\nAlors qu\'Ousmane Dembélé n\'a pas participé à l\'entraînement collectif du PSG jeudi, le club de la capitale a annoncé ce vendredi que son attaquant souffrait d\'un « étirement musculaire des ischio-jambiers de la cuisse droite ». Le meilleur buteur parisien cette saison (33 buts en 45 matches, toutes compétitions confondues) avait dû sortir à la 70e minute sur le terrain d\'Arsenal (1-0), mardi en demi-finales aller de la Ligue des champions.\r\n\r\n« Sa situation évolue favorablement. Un nouveau point sera effectué prochainement », précise le PSG dans son point médical du jour, annonçant par ailleurs l\'absence de Presnel Kimpembe pour plusieurs semaines en raison d\'un oedème osseux au deuxième métatarsien du pied droit. Le défenseur central de 29 ans n\'a participé qu\'à cinq matches depuis le début de la saison, pour 81 minutes de jeu au total.\r\n\r\nC\'est donc sans ces deux éléments que le champion de France se déplacera à Strasbourg, ce samedi (17 heures, 32e journée de Ligue 1), à quatre jours du match retour face aux Gunners.'),
(20, 'Les arbitres de la 34e journée de Ligue 1 McDonald\'s', 'Arbitre_34_eme_journee.jpg', '2025-05-13', 8, 'OGC Nice - Stade Brestois 29 (samedi, 21h00)<br>\nArbitre principal : Hakim BEN EL HADJ<br>\nArbitres assistants : Alexis AUGER et Valentin EVRARD<br>\n4e arbitre : Mikaël LESAGE<br>\nArbitres assistants vidéo : Yohann ROUINSARD et Elisa DAUPEUX', 'RC Lens - AS Monaco (samedi, 21h00)<br>\r\nArbitre principal : François LETEXIER<br>\r\nArbitres assistants : Cyril MUGNIER et Mehdi RAHMOUNI<br>\r\n4e arbitre : Guillaume PARADIS<br>\r\nArbitres assistants vidéo : Cyril GRINGORE et Julian GRELOT\r\n<br><br>\r\nLOSC - Stade de Reims (samedi, 21h00)<br>\r\nArbitre principal : Willy DELAJOD<br>\r\nArbitres assistants : Erwan FINJEAN et Philippe JEANNE<br>\r\n4e arbitre : Romain LISSORGUE<br>\r\nArbitres assistants vidéo : Wilfried BIEN et Cédric DOS SANTOS\r\n<br><br>\r\nOlympique Lyonnais - Angers SCO (samedi, 21h00)<br>\r\nArbitre principal : Stéphanie FRAPPART<br>\r\nArbitres assistants : Mikaël BERCHEBRU et Steven TORREGROSSA<br>\r\n4e arbitre : Antoine VALNET<br>\r\nArbitres assistants vidéo : Eric WATTELLIER et Dominique JULIEN\r\n<br><br>\r\nOlympique de Marseille - Stade Rennais F.C. (samedi, 21h00)<br>\r\nArbitre principal : Jérémie PIGNARD<br>\r\nArbitres assistants : Aurélien DROUET et Julien HAULBERT<br>\r\n4e arbitre : Ruddy BUQUET<br>\r\nArbitres assistants vidéo : Bastien DECHEPY et Julien SCHMITT\r\n<br><br>\r\nFC Nantes - Montpellier Hérault SC (samedi, 21h00)<br>\r\nArbitre principal : Clément TURPIN<br>\r\nArbitres assistants : Nicolas DANOS et Benjamin PAGES<br>\r\n4e arbitre : Pierre GAILLOUSTE<br>\r\nArbitres assistants vidéo : Benoît MILLOT et Philippe LUCAS\r\n<br><br>\r\nOGC Nice - Stade Brestois 29 (samedi, 21h00)<br>\r\nArbitre principal : Hakim BEN EL HADJ<br>\r\nArbitres assistants : Alexis AUGER et Valentin EVRARD<br>\r\n4e arbitre : Mikaël LESAGE<br>\r\nArbitres assistants vidéo : Yohann ROUINSARD et Elisa DAUPEUX\r\n<br><br>\r\nParis Saint-Germain - AJ Auxerre (samedi, 21h00)<br>\r\nArbitre principal : Abdelatif KHERRADJI<br>\r\nArbitres assistants : Cédric FAVRE et Ludovic REYES<br>\r\n4e arbitre : Robin CHAPAPRIA<br>\r\nArbitres assistants vidéo : Bruno COUE et Ludovic ZMYSLONY\r\n<br><br>\r\nAS Saint-Etienne - Toulouse FC (samedi, 21h00)<br>\r\nArbitre principal : Thomas LEONARD<br>\r\nArbitres assistants : Gwenaël PASQUALOTTI et Laurent CONIGLIO<br>\r\n4e arbitre : Olivier THUAL<br>\r\nArbitres assistants vidéo : Hamid GUENAOUI et Stéphane BRE\r\n<br><br>\r\nRC Strasbourg Alsace - Havre AC (samedi, 21h00)<br>\r\nArbitre principal : Jérôme BRISARD<br>\r\nArbitres assistants : Brice PARINET LE TELLIER et Christophe MOUYSSET<br>\r\n4e arbitre : Jérémy STINAT<br>\r\nArbitres assistants vidéo : Nicolas RAINVILLE et William LAVIS<br>');

-- --------------------------------------------------------

--
-- Structure de la table `classement_champions_league`
--

CREATE TABLE `classement_champions_league` (
  `id_classement` int(11) NOT NULL,
  `id_equipe` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `joues` int(11) DEFAULT NULL,
  `victoires` int(11) DEFAULT NULL,
  `nuls` int(11) DEFAULT NULL,
  `defaites` int(11) DEFAULT NULL,
  `buts_pour` int(11) DEFAULT NULL,
  `buts_contre` int(11) DEFAULT NULL,
  `difference_buts` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `classement_champions_league`
--

INSERT INTO `classement_champions_league` (`id_classement`, `id_equipe`, `position`, `points`, `joues`, `victoires`, `nuls`, `defaites`, `buts_pour`, `buts_contre`, `difference_buts`) VALUES
(1, 21, 1, 21, 8, 7, 0, 1, 17, 5, 12),
(2, 24, 2, 19, 8, 6, 1, 1, 28, 13, 15),
(3, 19, 3, 19, 8, 6, 1, 1, 16, 3, 13),
(4, 34, 4, 19, 8, 6, 1, 1, 11, 1, 10),
(5, 23, 5, 18, 8, 6, 0, 2, 20, 12, 8),
(6, 30, 6, 16, 8, 5, 1, 2, 15, 7, 8),
(7, 4, 7, 16, 8, 5, 1, 2, 17, 10, 7),
(8, 20, 8, 16, 8, 5, 1, 2, 13, 6, 7),
(9, 32, 9, 15, 8, 4, 3, 1, 20, 6, 14),
(10, 28, 10, 15, 8, 5, 0, 3, 22, 12, 10),
(11, 26, 11, 15, 8, 5, 0, 3, 20, 12, 8),
(12, 27, 12, 15, 8, 5, 0, 3, 20, 12, 8),
(13, 36, 13, 15, 8, 5, 0, 3, 14, 11, 3),
(14, 38, 14, 14, 8, 4, 2, 2, 16, 12, 4),
(15, 1, 15, 13, 8, 4, 1, 3, 14, 9, 5),
(16, 39, 16, 13, 8, 4, 1, 3, 16, 12, 4),
(17, 2, 17, 13, 8, 4, 1, 3, 13, 13, 0),
(18, 3, 18, 13, 8, 4, 1, 3, 10, 11, -1),
(19, 37, 19, 13, 8, 4, 1, 3, 18, 21, -3),
(20, 35, 20, 12, 8, 3, 3, 2, 9, 7, 2),
(21, 43, 21, 12, 8, 3, 3, 2, 13, 14, -1),
(22, 22, 22, 1, 8, 3, 2, 3, 18, 14, 4),
(23, 40, 23, 11, 8, 3, 2, 3, 13, 12, 1),
(24, 41, 24, 11, 8, 3, 2, 3, 7, 11, -4),
(25, 42, 25, 11, 8, 3, 2, 3, 12, 19, -7),
(26, 31, 26, 10, 8, 3, 1, 4, 13, 17, -4),
(27, 50, 27, 7, 8, 2, 1, 5, 8, 16, -8),
(28, 33, 28, 6, 8, 1, 3, 4, 4, 9, -5),
(29, 46, 29, 6, 8, 2, 0, 6, 13, 22, -9),
(30, 45, 30, 6, 8, 2, 0, 6, 5, 14, -9),
(31, 49, 31, 4, 8, 1, 1, 6, 7, 21, -14),
(32, 29, 32, 3, 8, 1, 0, 7, 8, 15, -7),
(33, 25, 33, 3, 8, 1, 0, 7, 5, 13, -8),
(35, 47, 35, 0, 8, 0, 0, 8, 7, 27, -20),
(36, 48, 36, 0, 8, 0, 0, 8, 24, 21, -21);

-- --------------------------------------------------------

--
-- Structure de la table `classement_ligue1`
--

CREATE TABLE `classement_ligue1` (
  `id_classement` int(11) NOT NULL,
  `id_equipe` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `joues` int(11) DEFAULT NULL,
  `victoires` int(11) DEFAULT NULL,
  `nuls` int(11) DEFAULT NULL,
  `defaites` int(11) DEFAULT NULL,
  `buts_pour` int(11) DEFAULT NULL,
  `buts_contre` int(11) DEFAULT NULL,
  `difference_buts` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `classement_ligue1`
--

INSERT INTO `classement_ligue1` (`id_classement`, `id_equipe`, `position`, `points`, `joues`, `victoires`, `nuls`, `defaites`, `buts_pour`, `buts_contre`, `difference_buts`) VALUES
(1, 1, 1, 81, 33, 25, 6, 2, 89, 34, 55),
(2, 2, 3, 61, 33, 18, 7, 8, 63, 37, 26),
(3, 3, 8, 50, 33, 15, 5, 13, 52, 53, -1),
(4, 4, 5, 57, 33, 16, 9, 8, 50, 35, 15),
(5, 5, 2, 62, 33, 19, 5, 9, 70, 45, 25),
(6, 6, 7, 54, 33, 16, 6, 11, 63, 46, 17),
(7, 7, 9, 49, 33, 14, 7, 12, 38, 39, -1),
(8, 8, 11, 41, 33, 13, 2, 18, 49, 46, 3),
(9, 9, 4, 57, 33, 16, 9, 8, 60, 41, 19),
(10, 10, 15, 33, 33, 7, 12, 14, 36, 52, -16),
(11, 11, 18, 16, 33, 4, 4, 25, 23, 76, -53),
(12, 12, 6, 57, 33, 16, 9, 8, 54, 41, 13),
(13, 15, 12, 39, 33, 10, 9, 14, 41, 41, 0),
(14, 17, 16, 31, 33, 9, 4, 20, 37, 69, -32),
(15, 18, 13, 36, 33, 10, 6, 17, 32, 51, -19),
(16, 51, 14, 33, 33, 8, 9, 16, 32, 45, -13),
(17, 52, 10, 42, 33, 11, 9, 13, 47, 48, -1),
(18, 53, 17, 30, 33, 8, 6, 19, 37, 74, -37);

-- --------------------------------------------------------

--
-- Structure de la table `equipes`
--

CREATE TABLE `equipes` (
  `id_equipe` int(11) NOT NULL,
  `nom_equipe` varchar(100) NOT NULL,
  `pays` varchar(50) DEFAULT NULL,
  `ligue1` tinyint(1) DEFAULT 0,
  `champions_league` tinyint(1) DEFAULT 0,
  `url_logo` varchar(255) DEFAULT NULL,
  `stade` varchar(255) DEFAULT 'stade.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `equipes`
--

INSERT INTO `equipes` (`id_equipe`, `nom_equipe`, `pays`, `ligue1`, `champions_league`, `url_logo`, `stade`) VALUES
(1, 'Paris Saint-Germain', 'France', 1, 1, 'ParisSG.svg', 'Paris.jpg'),
(2, 'AS Monaco', 'France', 1, 1, 'Monaco.svg', 'Monaco.jpg'),
(3, 'Stade Brestois', 'France', 1, 1, 'Brest.svg', 'Brest.jpg'),
(4, 'Lille OSC', 'France', 1, 1, 'Lille.svg', 'Lille.jpg'),
(5, 'Olympique de Marseille', 'France', 1, 0, 'Marseille.svg', 'Marseille.jpg'),
(6, 'Olympique Lyonnais', 'France', 1, 0, 'Lyon.svg', 'Lyon.jpg'),
(7, 'RC Lens', 'France', 1, 0, 'Lens.svg', 'Lens.jpg'),
(8, 'Stade Rennais', 'France', 1, 0, 'Rennes.svg', 'Rennes.jpg'),
(9, 'OGC Nice', 'France', 1, 0, 'Nice.svg', 'Nice.jpg'),
(10, 'FC Nantes', 'France', 1, 0, 'Nantes.svg', 'Nantes.jpg'),
(11, 'Montpellier HSC', 'France', 1, 0, 'Montpellier.svg', 'montpellier.jpg'),
(12, 'RC Strasbourg', 'France', 1, 0, 'Strasbourg.svg', 'Strasbourg.jpg'),
(13, 'FC Lorient', 'France', 0, 0, 'Lorient.svg', NULL),
(14, 'Clermont Foot', 'France', 0, 0, 'Clermont.svg', NULL),
(15, 'Toulouse FC', 'France', 1, 0, 'Toulouse.svg', 'Toulouse.jpg'),
(16, 'FC Metz', 'France', 0, 0, 'Metz.svg', NULL),
(17, 'Le Havre AC', 'France', 1, 0, 'LeHavre.svg', 'LeHavre.jpg'),
(18, 'Angers SCO', 'France', 1, 0, 'Angers.svg', 'Angers.jpg'),
(19, 'Arsenal', 'Angleterre', 0, 1, 'Arsenal.svg', 'Arsenal.jpg'),
(20, 'Aston Villa', 'Angleterre', 0, 1, 'AstonVilla.svg', 'AstonVilla.jpg'),
(21, 'Liverpool', 'Angleterre', 0, 1, 'Liverpool.svg', 'Liverpool.jpg'),
(22, 'Manchester City', 'Angleterre', 0, 1, 'ManchesterCity.svg', 'ManCity.jpg'),
(23, 'Atlético de Madrid', '', 0, 1, 'AtleticoDeMadrid.svg', 'Atletico.jpg'),
(24, 'FC Barcelone', 'Espagne', 0, 1, 'Barcelone.svg', 'Barcelone.jpg'),
(25, 'Girona FC', 'Espagne', 0, 1, 'GironaFC.svg', 'Girona.jpg'),
(26, 'Real Madrid', 'Espagne', 0, 1, 'RealMadrid.svg', 'RealMadrid.jpg'),
(27, 'Bayern Munich', 'Allemagne', 0, 1, 'BayernMunich.svg', 'Bayern.jpg'),
(28, 'Borussia Dortmund', 'Allemagne', 0, 1, 'BorussiaDortmund.svg', 'Dortmund.jpg'),
(29, 'RB Leipzig', 'Allemagne', 0, 1, 'RbLeipzig.svg', 'Leipzig.jpg'),
(30, 'Bayer Leverkusen', 'Allemagne', 0, 1, 'BayerLeverkusen.svg', 'BayerLeverkussen.jpg'),
(31, 'VfB Stuttgart', 'Allemagne', 0, 1, 'VfB_Stuttgart.svg', 'Stuttgart.jpg'),
(32, 'Atalanta', 'Italie', 0, 1, 'AtalantaBergame.svg', 'Atalanta.jpg'),
(33, 'Bologne', 'Italie', 0, 1, 'BologneFC.svg', 'Bologne.jpg'),
(34, 'Inter Milan', 'Italie', 0, 1, 'InterMilan.svg', 'Inter.jpg'),
(35, 'Juventus', 'Italie', 0, 1, 'Juventus.svg', 'Juventus.jpg'),
(36, 'AC Milan', 'Italie', 0, 1, 'AcMilan.svg', 'AcMilan.jpg'),
(37, 'Feyenoord', 'Pays-Bas', 0, 1, 'Feyenoord.svg', 'Feyenoord.jpg'),
(38, 'PSV Eindhoven', 'Pays-Bas', 0, 1, 'PSV.svg', 'psv.jpg'),
(39, 'Benfica', 'Portugal', 0, 1, 'Benfica.svg', 'Benfica.jpg'),
(40, 'Sporting CP', 'Portugal', 0, 1, 'Sporting.svg', 'Sporting.jpg'),
(41, 'Club Brugge', 'Belgique', 0, 1, 'ClubBrugge.svg', 'Brugge.jpg'),
(42, 'GNK Dinamo', 'Croatie', 0, 1, 'DinamoZagreb.svg', 'DinamoZagreb.jpg'),
(43, 'Celtic', 'Écosse', 0, 1, 'Celtic.svg', 'Celtic.jpeg'),
(44, 'Salzbourg', 'Autriche', 0, 1, 'RbSalzburg.svg', 'Salzburg.jpg'),
(45, 'Sturm Graz', 'Autriche', 0, 1, 'SturmGraz.svg', 'SturmGraz.jpg'),
(46, 'Étoile Rouge de Belgrade', 'Serbie', 0, 1, 'EtoileRougeBelgrade.svg', 'EtoileRouge.jpg'),
(47, 'Slovan Bratislava', 'Slovaquie', 0, 1, 'SlovanBratislava.svg', 'SlovanBratislava.jpg'),
(48, 'Young Boys', 'Suisse', 0, 1, 'YoungBoys.svg', 'YoungBoys.jpg'),
(49, 'Sparta Praha', 'Tchéquie', 0, 1, 'SpartaPrague.svg', 'SpartaPrague.jpg'),
(50, 'Shakhtar Donetsk', 'Ukraine', 0, 1, 'ShakhtarDonetsk.svg', 'ShakhtarDonetsk.jpg'),
(51, 'Stade de Reims', 'France', 1, 0, 'Reims.svg', 'Reims.jpg'),
(52, 'AJ Auxerre', 'France', 1, 0, 'Auxerre.svg', 'Auxerre.jpg'),
(53, 'Saint Etienne', 'France', 1, 0, 'SaintEtienne.svg', 'Sainte.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `journalistes`
--

CREATE TABLE `journalistes` (
  `id_journaliste` int(10) NOT NULL,
  `Nom` varchar(20) DEFAULT NULL,
  `Prenom` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `journalistes`
--

INSERT INTO `journalistes` (`id_journaliste`, `Nom`, `Prenom`) VALUES
(1, 'Dupont', 'Lucas'),
(2, 'Martin', 'Sophie'),
(3, 'Nguyen', 'Thomas'),
(4, 'Lemoine', 'Claire'),
(5, 'Morel', 'Antoine'),
(6, 'Sacha', 'Nokovitch'),
(7, 'William', 'Humberset'),
(8, 'l1.fr', 'VL');

-- --------------------------------------------------------

--
-- Structure de la table `matchs`
--

CREATE TABLE `matchs` (
  `match_id` int(11) NOT NULL,
  `competition` enum('L1','CL') DEFAULT NULL,
  `EquipeDom` int(11) NOT NULL,
  `EquipeExt` int(11) NOT NULL,
  `Score1` tinyint(4) DEFAULT NULL,
  `Score2` tinyint(4) DEFAULT NULL,
  `Date_match` date NOT NULL,
  `Heure` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `matchs`
--

INSERT INTO `matchs` (`match_id`, `competition`, `EquipeDom`, `EquipeExt`, `Score1`, `Score2`, `Date_match`, `Heure`) VALUES
(1, 'L1', 1, 2, 4, 1, '2025-02-07', '21:05:00'),
(2, 'L1', 1, 3, 3, 1, '2024-09-14', '21:00:00'),
(3, 'L1', 1, 4, 4, 1, '2025-03-01', '21:05:00'),
(4, 'L1', 1, 5, 3, 1, '2025-03-16', '20:45:00'),
(5, 'L1', 1, 6, 3, 1, '2024-12-15', '20:45:00'),
(6, 'L1', 1, 7, 1, 0, '2024-11-02', '17:00:00'),
(7, 'L1', 1, 8, 3, 1, '2024-09-27', '21:00:00'),
(8, 'L1', 1, 9, 1, 3, '2025-04-25', '20:45:00'),
(9, 'L1', 1, 10, 1, 1, '2024-11-30', '21:00:00'),
(10, 'L1', 1, 11, 6, 0, '2024-08-23', '20:45:00'),
(11, 'L1', 1, 12, 4, 2, '2024-10-19', '21:00:00'),
(12, 'L1', 1, 15, 3, 0, '2024-11-22', '21:00:00'),
(13, 'L1', 1, 17, 2, 1, '2025-04-19', '17:00:00'),
(14, 'L1', 1, 18, 1, 0, '2025-04-05', '17:00:00'),
(15, 'L1', 1, 51, 1, 1, '2025-01-25', '21:05:00'),
(16, 'L1', 1, 52, NULL, NULL, '2025-05-17', '21:00:00'),
(17, 'L1', 1, 53, 2, 1, '2025-01-12', '20:45:00'),
(18, 'L1', 2, 1, 2, 4, '2024-12-18', '21:00:00'),
(19, 'L1', 2, 3, 3, 2, '2024-11-22', '19:00:00'),
(20, 'L1', 2, 4, 0, 0, '2024-10-18', '20:45:00'),
(21, 'L1', 2, 5, 3, 0, '2025-04-12', '17:00:00'),
(22, 'L1', 2, 6, 2, 0, '2025-05-10', '21:00:00'),
(23, 'L1', 2, 7, 1, 1, '2024-09-01', '15:00:00'),
(24, 'L1', 2, 8, 3, 2, '2025-01-25', '17:00:00'),
(25, 'L1', 2, 9, 2, 1, '2025-03-29', '21:05:00'),
(26, 'L1', 2, 10, 7, 1, '2025-02-15', '19:00:00'),
(27, 'L1', 2, 11, 2, 1, '2024-09-28', '21:00:00'),
(28, 'L1', 2, 12, 0, 0, '2025-04-19', '19:00:00'),
(29, 'L1', 2, 15, 2, 0, '2024-12-07', '17:00:00'),
(30, 'L1', 2, 17, 3, 1, '2024-09-22', '15:00:00'),
(31, 'L1', 2, 18, 0, 1, '2024-11-01', '19:00:00'),
(32, 'L1', 2, 51, 3, 0, '2025-02-28', '20:45:00'),
(33, 'L1', 2, 52, 4, 2, '2025-02-01', '19:00:00'),
(34, 'L1', 2, 53, 1, 0, '2024-08-17', '21:00:00'),
(35, 'L1', 3, 1, 2, 5, '2025-02-01', '17:00:00'),
(36, 'L1', 3, 2, 2, 1, '2025-04-05', '19:00:00'),
(37, 'L1', 3, 4, 2, 0, '2025-05-10', '21:00:00'),
(38, 'L1', 3, 5, 1, 5, '2024-08-17', '17:00:00'),
(39, 'L1', 3, 6, 2, 1, '2025-01-11', '17:00:00'),
(40, 'L1', 3, 7, 1, 3, '2025-04-20', '17:15:00'),
(41, 'L1', 3, 8, 1, 1, '2024-10-19', '17:00:00'),
(42, 'L1', 3, 9, 0, 1, '2024-11-02', '19:00:00'),
(43, 'L1', 3, 10, 4, 1, '2024-12-15', '17:00:00'),
(44, 'L1', 3, 11, 1, 0, '2025-05-04', '17:15:00'),
(45, 'L1', 3, 12, 3, 1, '2024-11-30', '19:00:00'),
(46, 'L1', 3, 15, 2, 0, '2024-09-22', '17:00:00'),
(47, 'L1', 3, 17, 2, 0, '2024-10-06', '17:00:00'),
(48, 'L1', 3, 18, 2, 0, '2025-03-09', '15:00:00'),
(49, 'L1', 3, 51, 0, 0, '2025-03-16', '17:15:00'),
(50, 'L1', 3, 52, 2, 2, '2025-02-14', '20:45:00'),
(51, 'L1', 3, 53, 4, 0, '2024-08-31', '17:00:00'),
(52, 'L1', 4, 1, 1, 3, '2024-09-01', '20:45:00'),
(53, 'L1', 4, 2, 2, 1, '2025-02-22', '17:00:00'),
(54, 'L1', 4, 3, 3, 1, '2024-12-06', '19:00:00'),
(55, 'L1', 4, 5, 1, 1, '2025-05-04', '20:45:00'),
(56, 'L1', 4, 6, 1, 1, '2024-11-01', '21:00:00'),
(57, 'L1', 4, 7, 1, 0, '2025-03-30', '20:45:00'),
(58, 'L1', 4, 8, 1, 0, '2024-11-24', '15:00:00'),
(59, 'L1', 4, 9, 2, 1, '2025-01-17', '21:05:00'),
(60, 'L1', 4, 10, 1, 1, '2025-01-04', '19:00:00'),
(61, 'L1', 4, 11, 1, 0, '2025-03-08', '19:00:00'),
(62, 'L1', 4, 12, 3, 3, '2024-09-21', '17:00:00'),
(63, 'L1', 4, 15, 2, 1, '2024-10-05', '19:00:00'),
(64, 'L1', 4, 17, 1, 2, '2025-02-08', '19:00:00'),
(65, 'L1', 4, 18, 2, 0, '2024-08-24', '19:00:00'),
(66, 'L1', 4, 51, NULL, NULL, '2025-05-17', '21:00:00'),
(67, 'L1', 4, 52, 3, 1, '2025-04-20', '15:00:00'),
(68, 'L1', 4, 53, 4, 1, '2025-02-01', '21:05:00'),
(69, 'L1', 5, 1, 0, 3, '2024-10-27', '20:45:00'),
(70, 'L1', 5, 2, 2, 1, '2024-12-01', '20:45:00'),
(71, 'L1', 5, 3, 4, 1, '2025-04-27', '20:45:00'),
(72, 'L1', 5, 4, 1, 1, '2024-12-14', '17:00:00'),
(73, 'L1', 5, 6, 3, 2, '2025-02-02', '20:45:00'),
(74, 'L1', 5, 7, 0, 1, '2025-03-08', '21:05:00'),
(75, 'L1', 5, 8, NULL, NULL, '2025-05-17', '21:00:00'),
(76, 'L1', 5, 9, 2, 0, '2024-09-14', '17:00:00'),
(77, 'L1', 5, 10, 2, 0, '2025-03-02', '20:45:00'),
(78, 'L1', 5, 11, 5, 1, '2025-04-19', '21:05:00'),
(79, 'L1', 5, 12, 1, 1, '2025-01-19', '20:45:00'),
(80, 'L1', 5, 15, 3, 2, '2025-04-06', '20:45:00'),
(81, 'L1', 5, 17, 5, 1, '2025-01-05', '20:45:00'),
(82, 'L1', 5, 18, 1, 1, '2024-10-04', '20:45:00'),
(83, 'L1', 5, 51, 2, 2, '2024-08-25', '20:45:00'),
(84, 'L1', 5, 52, 1, 3, '2024-11-08', '20:45:00'),
(85, 'L1', 5, 53, 5, 1, '2025-02-15', '17:00:00'),
(86, 'L1', 6, 1, 2, 3, '2025-02-23', '20:45:00'),
(87, 'L1', 6, 2, 0, 2, '2024-08-24', '17:00:00'),
(88, 'L1', 6, 3, 2, 1, '2025-03-02', '15:00:00'),
(89, 'L1', 6, 4, 2, 1, '2025-04-05', '21:05:00'),
(90, 'L1', 6, 5, 2, 3, '2024-09-22', '20:45:00'),
(91, 'L1', 6, 7, 1, 2, '2025-05-04', '17:15:00'),
(92, 'L1', 6, 8, 4, 1, '2025-04-26', '21:05:00'),
(93, 'L1', 6, 9, 4, 1, '2024-12-01', '17:00:00'),
(94, 'L1', 6, 10, 2, 0, '2024-10-06', '15:00:00'),
(95, 'L1', 6, 11, 1, 0, '2025-01-04', '21:00:00'),
(96, 'L1', 6, 12, 4, 3, '2024-08-30', '20:45:00'),
(97, 'L1', 6, 15, 0, 0, '2025-01-18', '21:05:00'),
(98, 'L1', 6, 17, 4, 2, '2025-03-16', '15:00:00'),
(99, 'L1', 6, 18, NULL, NULL, '2025-05-17', '21:00:00'),
(100, 'L1', 6, 51, 4, 0, '2025-02-09', '15:00:00'),
(101, 'L1', 6, 52, 2, 2, '2024-10-27', '15:00:00'),
(102, 'L1', 6, 53, 1, 0, '2024-11-10', '20:45:00'),
(103, 'L1', 7, 1, 1, 2, '2025-01-18', '17:00:00'),
(104, 'L1', 7, 2, NULL, NULL, '2025-05-17', '21:00:00'),
(105, 'L1', 7, 3, 2, 0, '2024-08-25', '15:00:00'),
(106, 'L1', 7, 4, 0, 2, '2024-10-26', '21:00:00'),
(107, 'L1', 7, 5, 1, 3, '2024-11-23', '17:00:00'),
(108, 'L1', 7, 6, 0, 0, '2024-09-15', '20:45:00'),
(109, 'L1', 7, 8, 1, 0, '2025-03-15', '21:05:00'),
(110, 'L1', 7, 9, 0, 0, '2024-09-28', '17:00:00'),
(111, 'L1', 7, 10, 3, 2, '2024-11-09', '19:00:00'),
(112, 'L1', 7, 11, 2, 0, '2024-12-08', '15:00:00'),
(113, 'L1', 7, 12, 0, 2, '2025-02-16', '17:15:00'),
(114, 'L1', 7, 15, 0, 1, '2025-01-05', '15:00:00'),
(115, 'L1', 7, 17, 3, 4, '2025-03-01', '19:00:00'),
(116, 'L1', 7, 18, 1, 0, '2025-01-26', '17:15:00'),
(117, 'L1', 7, 51, 0, 2, '2025-04-11', '20:45:00'),
(118, 'L1', 7, 52, 0, 4, '2025-04-27', '17:15:00'),
(119, 'L1', 7, 53, 1, 0, '2025-04-06', '15:00:00'),
(120, 'L1', 8, 1, 1, 4, '2025-03-08', '17:00:00'),
(121, 'L1', 8, 2, 1, 2, '2024-10-05', '21:00:00'),
(122, 'L1', 8, 3, 1, 2, '2025-01-18', '19:00:00'),
(123, 'L1', 8, 4, 0, 2, '2025-02-16', '20:45:00'),
(124, 'L1', 8, 5, 1, 2, '2025-01-11', '21:05:00'),
(125, 'L1', 8, 6, 3, 0, '2024-08-18', '20:45:00'),
(126, 'L1', 8, 7, 1, 1, '2024-09-21', '19:00:00'),
(127, 'L1', 8, 9, 2, 0, '2025-05-10', '21:00:00'),
(128, 'L1', 8, 10, 2, 1, '2025-04-18', '20:45:00'),
(129, 'L1', 8, 11, 3, 0, '2024-09-15', '15:00:00'),
(130, 'L1', 8, 12, 1, 0, '2025-02-02', '17:15:00'),
(131, 'L1', 8, 15, 0, 2, '2024-11-10', '17:00:00'),
(132, 'L1', 8, 17, 1, 0, '2024-10-25', '20:45:00'),
(133, 'L1', 8, 18, 2, 0, '2024-12-15', '17:00:00'),
(134, 'L1', 8, 51, 1, 0, '2025-02-21', '20:45:00'),
(135, 'L1', 8, 52, 0, 1, '2025-04-06', '17:15:00'),
(136, 'L1', 8, 53, 5, 0, '2024-11-30', '17:00:00'),
(137, 'L1', 9, 1, 1, 1, '2024-10-06', '20:45:00'),
(138, 'L1', 9, 2, 2, 1, '2024-10-27', '17:00:00'),
(139, 'L1', 9, 3, NULL, NULL, '2025-05-17', '21:00:00'),
(140, 'L1', 9, 4, 2, 2, '2024-11-10', '15:00:00'),
(141, 'L1', 9, 5, 2, 0, '2025-01-26', '20:45:00'),
(142, 'L1', 9, 6, 0, 2, '2025-03-09', '20:45:00'),
(143, 'L1', 9, 7, 2, 0, '2025-02-08', '17:00:00'),
(144, 'L1', 9, 8, 3, 2, '2025-01-03', '21:00:00'),
(145, 'L1', 9, 10, 1, 2, '2025-04-04', '20:45:00'),
(146, 'L1', 9, 11, 2, 0, '2025-02-23', '17:15:00'),
(147, 'L1', 9, 12, 2, 1, '2024-11-24', '20:45:00'),
(148, 'L1', 9, 15, 1, 1, '2024-08-25', '17:00:00'),
(149, 'L1', 9, 17, 2, 1, '2024-12-07', '19:00:00'),
(150, 'L1', 9, 18, 2, 1, '2025-04-20', '17:15:00'),
(151, 'L1', 9, 51, 1, 0, '2025-05-02', '20:45:00'),
(152, 'L1', 9, 52, 1, 1, '2025-03-14', '20:45:00'),
(153, 'L1', 9, 53, 8, 0, '2024-09-20', '20:45:00'),
(154, 'L1', 10, 1, 1, 1, '2025-04-22', '20:45:00'),
(155, 'L1', 10, 2, 2, 2, '2025-01-10', '19:00:00'),
(156, 'L1', 10, 3, 0, 2, '2025-02-07', '19:00:00'),
(157, 'L1', 10, 4, 1, 0, '2025-03-15', '17:00:00'),
(158, 'L1', 10, 5, 1, 2, '2024-11-03', '20:45:00'),
(159, 'L1', 10, 6, 1, 1, '2025-01-26', '17:15:00'),
(160, 'L1', 10, 7, 3, 1, '2025-02-23', '15:00:00'),
(161, 'L1', 10, 8, 1, 0, '2024-12-08', '17:00:00'),
(162, 'L1', 10, 9, 1, 1, '2024-10-20', '17:00:00'),
(163, 'L1', 10, 11, NULL, NULL, '2025-05-17', '21:00:00'),
(164, 'L1', 10, 12, 0, 1, '2025-03-09', '17:15:00'),
(165, 'L1', 10, 15, 0, 0, '2025-04-27', '17:15:00'),
(166, 'L1', 10, 17, 0, 2, '2024-11-24', '17:00:00'),
(167, 'L1', 10, 18, 0, 1, '2025-05-04', '15:00:00'),
(168, 'L1', 10, 51, 1, 2, '2024-09-15', '17:00:00'),
(169, 'L1', 10, 52, 2, 0, '2024-08-25', '17:00:00'),
(170, 'L1', 10, 53, 2, 2, '2024-09-29', '17:00:00'),
(171, 'L1', 11, 1, 1, 4, '2025-05-10', '21:00:00'),
(172, 'L1', 11, 2, 2, 1, '2025-01-17', '19:00:00'),
(173, 'L1', 11, 3, 3, 1, '2024-11-10', '17:00:00'),
(174, 'L1', 11, 4, 2, 2, '2024-12-01', '15:00:00'),
(175, 'L1', 11, 5, 0, 5, '2024-10-20', '20:45:00'),
(176, 'L1', 11, 6, 1, 4, '2025-02-16', '15:00:00'),
(177, 'L1', 11, 7, 0, 2, '2025-01-31', '20:45:00'),
(178, 'L1', 11, 8, 0, 4, '2025-03-02', '17:15:00'),
(179, 'L1', 11, 9, 2, 2, '2024-12-15', '15:00:00'),
(180, 'L1', 11, 10, 1, 3, '2024-08-31', '19:00:00'),
(181, 'L1', 11, 12, 1, 1, '2024-08-18', '17:00:00'),
(182, 'L1', 11, 15, 0, 3, '2024-10-27', '17:00:00'),
(183, 'L1', 11, 17, 0, 2, '2025-04-06', '17:15:00'),
(184, 'L1', 11, 18, 1, 3, '2025-01-12', '17:15:00'),
(185, 'L1', 11, 51, 0, 0, '2025-04-27', '17:15:00'),
(186, 'L1', 11, 52, 3, 2, '2024-09-22', '17:00:00'),
(187, 'L1', 11, 53, 0, 2, '2025-03-16', '17:15:00'),
(188, 'L1', 12, 1, 2, 1, '2025-05-03', '17:00:00'),
(189, 'L1', 12, 2, 1, 3, '2024-11-09', '17:00:00'),
(190, 'L1', 12, 3, 0, 0, '2025-02-23', '17:15:00'),
(191, 'L1', 12, 4, 2, 1, '2025-01-25', '19:00:00'),
(192, 'L1', 12, 5, 1, 0, '2024-09-29', '20:45:00'),
(193, 'L1', 12, 6, 4, 2, '2025-03-28', '20:45:00'),
(194, 'L1', 12, 7, 2, 2, '2024-10-06', '17:00:00'),
(195, 'L1', 12, 8, 3, 1, '2024-08-25', '17:00:00'),
(196, 'L1', 12, 9, 2, 2, '2025-04-12', '21:05:00'),
(197, 'L1', 12, 10, 3, 1, '2024-10-27', '17:00:00'),
(198, 'L1', 12, 11, 2, 0, '2025-02-09', '17:15:00'),
(199, 'L1', 12, 15, 2, 1, '2025-03-16', '17:15:00'),
(200, 'L1', 12, 17, NULL, NULL, '2025-05-17', '21:00:00'),
(201, 'L1', 12, 18, 1, 1, '2024-09-15', '17:00:00'),
(202, 'L1', 12, 51, 0, 0, '2024-12-08', '17:00:00'),
(203, 'L1', 12, 52, 3, 1, '2025-01-05', '15:00:00'),
(204, 'L1', 12, 53, 3, 1, '2025-04-26', '17:00:00'),
(205, 'L1', 15, 1, 0, 1, '2025-02-15', '21:05:00'),
(206, 'L1', 15, 2, 1, 1, '2025-03-07', '20:45:00'),
(207, 'L1', 15, 3, 2, 4, '2025-03-30', '15:00:00'),
(208, 'L1', 15, 4, 1, 2, '2025-04-12', '19:00:00'),
(209, 'L1', 15, 5, 1, 3, '2024-08-31', '21:00:00'),
(210, 'L1', 15, 6, 1, 2, '2024-09-29', '15:00:00'),
(211, 'L1', 15, 7, 1, 1, '2025-05-10', '21:00:00'),
(212, 'L1', 15, 8, 2, 1, '2025-05-03', '19:00:00'),
(213, 'L1', 15, 9, 1, 1, '2025-02-02', '15:00:00'),
(214, 'L1', 15, 10, 0, 0, '2024-08-18', '17:00:00'),
(215, 'L1', 15, 11, 1, 2, '2025-01-26', '17:15:00'),
(216, 'L1', 15, 12, 1, 2, '2025-01-12', '17:15:00'),
(217, 'L1', 15, 17, 2, 0, '2024-09-15', '17:00:00'),
(218, 'L1', 15, 18, 1, 1, '2024-10-20', '17:00:00'),
(219, 'L1', 15, 51, 1, 0, '2024-11-03', '15:00:00'),
(220, 'L1', 15, 52, 2, 0, '2024-12-01', '17:00:00'),
(221, 'L1', 15, 53, 2, 1, '2024-12-13', '20:45:00'),
(222, 'L1', 17, 1, 1, 4, '2024-08-16', '20:45:00'),
(223, 'L1', 17, 2, 1, 1, '2025-04-26', '19:00:00'),
(224, 'L1', 17, 3, 0, 1, '2025-01-26', '15:00:00'),
(225, 'L1', 17, 4, 0, 3, '2024-09-28', '19:00:00'),
(226, 'L1', 17, 5, 1, 3, '2025-05-10', '21:00:00'),
(227, 'L1', 17, 6, 0, 4, '2024-10-20', '15:00:00'),
(228, 'L1', 17, 7, 1, 2, '2025-01-12', '15:00:00'),
(229, 'L1', 17, 8, 1, 5, '2025-04-13', '17:15:00'),
(230, 'L1', 17, 9, 1, 3, '2025-02-16', '17:15:00'),
(231, 'L1', 17, 10, 3, 2, '2025-03-30', '17:15:00'),
(232, 'L1', 17, 11, 1, 0, '2024-11-03', '17:00:00'),
(233, 'L1', 17, 12, 0, 3, '2024-12-15', '17:00:00'),
(234, 'L1', 17, 15, 1, 4, '2025-02-23', '17:15:00'),
(235, 'L1', 17, 18, 0, 1, '2024-12-01', '17:00:00'),
(236, 'L1', 17, 51, 0, 3, '2024-11-10', '17:00:00'),
(237, 'L1', 17, 52, 3, 1, '2024-09-01', '17:00:00'),
(238, 'L1', 17, 53, 1, 1, '2025-03-09', '17:15:00'),
(239, 'L1', 18, 1, 2, 4, '2024-11-09', '21:00:00'),
(240, 'L1', 18, 2, 0, 2, '2025-03-15', '19:00:00'),
(241, 'L1', 18, 3, 2, 0, '2025-01-05', '15:00:00'),
(242, 'L1', 18, 4, 0, 2, '2025-04-27', '15:00:00'),
(243, 'L1', 18, 5, 0, 2, '2025-02-09', '20:45:00'),
(244, 'L1', 18, 6, 0, 3, '2024-12-07', '21:00:00'),
(245, 'L1', 18, 7, 0, 1, '2024-08-18', '17:00:00'),
(246, 'L1', 18, 8, 0, 3, '2025-03-30', '17:15:00'),
(247, 'L1', 18, 9, 1, 4, '2024-09-01', '17:00:00'),
(248, 'L1', 18, 10, 1, 1, '2024-09-22', '17:00:00'),
(249, 'L1', 18, 11, 2, 0, '2025-04-13', '17:15:00'),
(250, 'L1', 18, 12, 2, 1, '2025-05-10', '21:00:00'),
(251, 'L1', 18, 15, 0, 4, '2025-03-02', '17:15:00'),
(252, 'L1', 18, 17, 1, 1, '2025-02-02', '17:15:00'),
(253, 'L1', 18, 51, 1, 3, '2024-09-29', '17:00:00'),
(254, 'L1', 18, 52, 2, 0, '2025-01-19', '17:15:00'),
(255, 'L1', 18, 53, 4, 2, '2024-10-26', '17:00:00'),
(256, 'L1', 51, 1, 1, 1, '2024-09-21', '21:00:00'),
(257, 'L1', 51, 2, 0, 0, '2024-12-14', '21:00:00'),
(258, 'L1', 51, 3, 1, 2, '2024-10-26', '19:00:00'),
(259, 'L1', 51, 4, 0, 2, '2024-08-17', '19:00:00'),
(260, 'L1', 51, 5, 3, 1, '2025-03-29', '17:00:00'),
(261, 'L1', 51, 6, 1, 1, '2024-11-23', '21:00:00'),
(262, 'L1', 51, 7, 0, 2, '2024-11-29', '20:45:00'),
(263, 'L1', 51, 8, 2, 1, '2024-09-01', '17:00:00'),
(264, 'L1', 51, 9, 2, 4, '2025-01-11', '19:00:00'),
(265, 'L1', 51, 10, 1, 2, '2025-02-02', '17:15:00'),
(266, 'L1', 51, 11, 4, 2, '2024-10-06', '17:00:00'),
(267, 'L1', 51, 12, 0, 1, '2025-04-06', '17:15:00'),
(268, 'L1', 51, 15, 1, 0, '2025-04-20', '17:15:00'),
(269, 'L1', 51, 17, 1, 1, '2025-01-19', '17:15:00'),
(270, 'L1', 51, 18, 0, 1, '2025-02-16', '17:15:00'),
(271, 'L1', 51, 52, 0, 2, '2025-03-09', '17:15:00'),
(272, 'L1', 51, 53, 0, 2, '2025-05-10', '21:00:00'),
(273, 'L1', 52, 1, 0, 0, '2024-12-06', '21:00:00'),
(274, 'L1', 52, 2, 0, 3, '2024-09-14', '19:00:00'),
(275, 'L1', 52, 3, 3, 0, '2024-09-27', '19:00:00'),
(276, 'L1', 52, 4, 0, 0, '2025-01-10', '21:05:00'),
(277, 'L1', 52, 5, 3, 0, '2025-02-22', '21:05:00'),
(278, 'L1', 52, 6, 1, 3, '2025-04-13', '20:45:00'),
(279, 'L1', 52, 7, 2, 2, '2024-12-14', '19:00:00'),
(280, 'L1', 52, 8, 4, 0, '2024-11-03', '17:00:00'),
(281, 'L1', 52, 9, 2, 1, '2024-08-18', '13:00:00'),
(282, 'L1', 52, 10, 1, 1, '2025-05-10', '21:00:00'),
(283, 'L1', 52, 11, 1, 0, '2025-03-30', '17:15:00'),
(284, 'L1', 52, 12, 0, 1, '2025-03-02', '17:15:00'),
(285, 'L1', 52, 15, 2, 2, '2025-02-09', '17:15:00'),
(286, 'L1', 52, 17, 1, 2, '2025-05-04', '17:15:00'),
(287, 'L1', 52, 18, 1, 0, '2024-11-24', '17:00:00'),
(288, 'L1', 52, 51, 2, 1, '2024-10-20', '17:00:00'),
(289, 'L1', 52, 53, 1, 1, '2025-01-24', '20:45:00'),
(290, 'L1', 53, 1, 1, 6, '2025-03-29', '19:00:00'),
(291, 'L1', 53, 2, 1, 3, '2025-05-03', '21:05:00'),
(292, 'L1', 53, 3, 3, 3, '2025-04-13', '15:00:00'),
(293, 'L1', 53, 4, 1, 0, '2024-09-13', '20:45:00'),
(294, 'L1', 53, 5, 0, 2, '2024-12-08', '20:45:00'),
(295, 'L1', 53, 6, 2, 1, '2025-04-20', '20:45:00'),
(296, 'L1', 53, 7, 0, 2, '2024-10-19', '19:00:00'),
(297, 'L1', 53, 8, 0, 2, '2025-02-08', '21:05:00'),
(298, 'L1', 53, 9, 1, 3, '2025-03-01', '17:00:00'),
(299, 'L1', 53, 10, 1, 1, '2025-01-19', '15:00:00'),
(300, 'L1', 53, 11, 1, 0, '2024-11-23', '19:00:00'),
(301, 'L1', 53, 12, 2, 0, '2024-11-02', '21:00:00'),
(302, 'L1', 53, 15, NULL, NULL, '2025-05-17', '21:00:00'),
(303, 'L1', 53, 17, 0, 2, '2024-08-24', '21:00:00'),
(304, 'L1', 53, 18, 3, 3, '2025-02-22', '19:00:00'),
(305, 'L1', 53, 51, 3, 1, '2025-01-04', '17:00:00'),
(306, 'L1', 53, 52, 3, 1, '2024-10-05', '17:00:00'),
(512, 'CL', 1, 3, 7, 0, '2025-02-19', '21:00:00'),
(513, 'CL', 1, 19, 2, 1, '2025-05-07', '21:00:00'),
(514, 'CL', 1, 20, 3, 1, '2025-04-09', '21:00:00'),
(515, 'CL', 1, 21, 0, 1, '2025-03-05', '21:00:00'),
(516, 'CL', 1, 22, 4, 2, '2025-01-22', '21:00:00'),
(517, 'CL', 1, 23, 1, 2, '2024-11-06', '21:00:00'),
(518, 'CL', 1, 25, 1, 0, '2024-09-18', '21:00:00'),
(519, 'CL', 1, 34, NULL, NULL, '2025-05-31', '21:00:00'),
(520, 'CL', 1, 38, 1, 1, '2024-10-22', '21:00:00'),
(521, 'CL', 2, 20, 1, 0, '2025-01-21', '18:45:00'),
(522, 'CL', 2, 24, 2, 1, '2024-09-19', '21:00:00'),
(523, 'CL', 2, 39, 2, 3, '2024-11-27', '21:00:00'),
(524, 'CL', 2, 39, 0, 1, '2025-02-12', '21:00:00'),
(525, 'CL', 2, 46, 5, 1, '2024-10-22', '18:45:00'),
(526, 'CL', 3, 1, 0, 3, '2025-02-11', '18:45:00'),
(527, 'CL', 3, 26, 0, 3, '2025-01-29', '21:00:00'),
(528, 'CL', 3, 30, 1, 1, '2024-10-23', '18:45:00'),
(529, 'CL', 3, 38, 1, 0, '2024-12-10', '21:00:00'),
(530, 'CL', 3, 45, 2, 1, '2024-09-19', '21:00:00'),
(531, 'CL', 4, 26, 1, 0, '2024-10-02', '21:00:00'),
(532, 'CL', 4, 28, 1, 2, '2025-03-12', '18:45:00'),
(533, 'CL', 4, 35, 1, 1, '2024-11-05', '21:00:00'),
(534, 'CL', 4, 37, 6, 1, '2025-01-29', '21:00:00'),
(535, 'CL', 4, 45, 3, 2, '2024-12-11', '18:45:00'),
(536, 'CL', 19, 1, 2, 0, '2024-10-01', '21:00:00'),
(537, 'CL', 19, 1, 0, 1, '2025-04-29', '21:00:00'),
(538, 'CL', 19, 2, 3, 0, '2024-12-11', '21:00:00'),
(539, 'CL', 19, 26, 3, 0, '2025-04-08', '21:00:00'),
(540, 'CL', 19, 38, 2, 2, '2025-03-12', '21:00:00'),
(541, 'CL', 19, 42, 3, 0, '2025-01-22', '21:00:00'),
(542, 'CL', 19, 50, 1, 0, '2024-10-22', '21:00:00'),
(543, 'CL', 20, 1, 3, 2, '2025-04-15', '21:00:00'),
(544, 'CL', 20, 27, 1, 0, '2024-10-02', '21:00:00'),
(545, 'CL', 20, 33, 2, 0, '2024-10-22', '21:00:00'),
(546, 'CL', 20, 35, 0, 0, '2024-11-27', '21:00:00'),
(547, 'CL', 20, 41, 3, 0, '2025-03-12', '21:00:00'),
(548, 'CL', 20, 43, 4, 2, '2025-01-29', '21:00:00'),
(549, 'CL', 21, 1, 0, 1, '2025-03-11', '21:00:00'),
(550, 'CL', 21, 4, 2, 1, '2025-01-21', '21:00:00'),
(551, 'CL', 21, 26, 2, 0, '2024-11-27', '21:00:00'),
(552, 'CL', 21, 30, 4, 0, '2024-11-05', '21:00:00'),
(553, 'CL', 21, 33, 2, 0, '2024-10-02', '21:00:00'),
(554, 'CL', 22, 26, 2, 3, '2025-02-11', '21:00:00'),
(555, 'CL', 22, 34, 0, 0, '2024-09-18', '21:00:00'),
(556, 'CL', 22, 37, 3, 3, '2024-11-26', '21:00:00'),
(557, 'CL', 22, 41, 3, 1, '2025-01-29', '21:00:00'),
(558, 'CL', 22, 49, 5, 0, '2024-10-23', '21:00:00'),
(559, 'CL', 23, 4, 1, 3, '2024-10-23', '21:00:00'),
(560, 'CL', 23, 26, 1, 0, '2025-03-12', '21:00:00'),
(561, 'CL', 23, 29, 2, 1, '2024-09-19', '21:00:00'),
(562, 'CL', 23, 30, 2, 1, '2025-01-21', '21:00:00'),
(563, 'CL', 23, 47, 3, 1, '2024-12-11', '18:45:00'),
(564, 'CL', 24, 3, 3, 0, '2024-11-26', '21:00:00'),
(565, 'CL', 24, 27, 4, 1, '2024-10-23', '21:00:00'),
(566, 'CL', 24, 28, 4, 0, '2025-04-09', '21:00:00'),
(567, 'CL', 24, 32, 2, 2, '2025-01-29', '21:00:00'),
(568, 'CL', 24, 34, 3, 3, '2025-04-30', '21:00:00'),
(569, 'CL', 24, 39, 3, 1, '2025-03-11', '18:45:00'),
(570, 'CL', 24, 48, 5, 0, '2024-10-01', '21:00:00'),
(571, 'CL', 25, 19, 1, 2, '2025-01-29', '21:00:00'),
(572, 'CL', 25, 21, 0, 1, '2024-12-10', '18:45:00'),
(573, 'CL', 25, 37, 2, 3, '2024-10-02', '18:45:00'),
(574, 'CL', 25, 47, 2, 0, '2024-10-22', '21:00:00'),
(575, 'CL', 26, 19, 1, 2, '2025-04-16', '21:00:00'),
(576, 'CL', 26, 22, 3, 1, '2025-02-19', '21:00:00'),
(577, 'CL', 26, 23, 2, 1, '2025-03-04', '21:00:00'),
(578, 'CL', 26, 28, 5, 2, '2024-10-22', '21:00:00'),
(579, 'CL', 26, 31, 3, 1, '2024-09-17', '21:00:00'),
(580, 'CL', 26, 36, 1, 3, '2024-11-05', '21:00:00'),
(581, 'CL', 26, 44, 5, 1, '2025-01-22', '21:00:00'),
(582, 'CL', 27, 1, 1, 0, '2024-11-26', '21:00:00'),
(583, 'CL', 27, 30, 3, 0, '2025-03-05', '21:00:00'),
(584, 'CL', 27, 34, 1, 2, '2025-04-08', '21:00:00'),
(585, 'CL', 27, 39, 1, 0, '2024-11-06', '21:15:00'),
(586, 'CL', 27, 42, 9, 2, '2024-09-17', '21:00:00'),
(587, 'CL', 27, 43, 1, 1, '2025-02-18', '21:00:00'),
(588, 'CL', 27, 47, 3, 1, '2025-01-29', '21:00:00'),
(589, 'CL', 28, 4, 1, 1, '2025-03-04', '21:00:00'),
(590, 'CL', 28, 24, 2, 3, '2024-12-11', '21:00:00'),
(591, 'CL', 28, 24, 3, 1, '2025-04-15', '21:00:00'),
(592, 'CL', 28, 40, 0, 0, '2025-02-19', '18:45:00'),
(593, 'CL', 28, 43, 7, 1, '2024-10-01', '21:00:00'),
(594, 'CL', 28, 45, 1, 0, '2024-11-05', '21:00:00'),
(595, 'CL', 28, 50, 3, 1, '2025-01-29', '21:00:00'),
(596, 'CL', 29, 20, 2, 3, '2024-12-10', '21:00:00'),
(597, 'CL', 29, 21, 0, 1, '2024-10-23', '21:00:00'),
(598, 'CL', 29, 35, 2, 3, '2024-10-02', '21:00:00'),
(599, 'CL', 29, 40, 2, 1, '2025-01-22', '18:45:00'),
(600, 'CL', 30, 27, 0, 2, '2025-03-11', '21:00:00'),
(601, 'CL', 30, 34, 1, 0, '2024-12-10', '21:00:00'),
(602, 'CL', 30, 36, 1, 0, '2024-10-01', '21:00:00'),
(603, 'CL', 30, 44, 5, 0, '2024-11-26', '21:00:00'),
(604, 'CL', 30, 49, 2, 0, '2025-01-29', '21:00:00'),
(605, 'CL', 31, 1, 1, 4, '2025-01-29', '21:00:00'),
(606, 'CL', 31, 32, 0, 2, '2024-11-06', '21:00:00'),
(607, 'CL', 31, 48, 5, 1, '2024-12-11', '21:00:00'),
(608, 'CL', 31, 49, 1, 1, '2024-10-01', '18:45:00'),
(609, 'CL', 32, 19, 0, 0, '2024-09-19', '21:00:00'),
(610, 'CL', 32, 26, 2, 3, '2024-12-10', '21:00:00'),
(611, 'CL', 32, 41, 1, 3, '2025-02-18', '21:00:00'),
(612, 'CL', 32, 43, 0, 0, '2024-10-23', '18:45:00'),
(613, 'CL', 32, 45, 5, 0, '2025-01-21', '18:45:00'),
(614, 'CL', 33, 2, 0, 1, '2024-11-05', '21:00:00'),
(615, 'CL', 33, 4, 1, 2, '2024-11-27', '21:00:00'),
(616, 'CL', 33, 28, 2, 1, '2025-01-21', '21:00:00'),
(617, 'CL', 33, 50, 0, 0, '2024-09-18', '18:45:00'),
(618, 'CL', 34, 2, 3, 0, '2025-01-29', '21:00:00'),
(619, 'CL', 34, 19, 1, 0, '2024-11-06', '21:00:00'),
(620, 'CL', 34, 24, 4, 3, '2025-05-06', '21:00:00'),
(621, 'CL', 34, 27, 2, 2, '2025-04-16', '21:00:00'),
(622, 'CL', 34, 29, 1, 0, '2024-11-26', '21:00:00'),
(623, 'CL', 34, 37, 2, 1, '2025-03-11', '21:00:00'),
(624, 'CL', 34, 46, 4, 0, '2024-10-01', '21:00:00'),
(625, 'CL', 35, 22, 2, 0, '2024-12-11', '21:00:00'),
(626, 'CL', 35, 31, 0, 1, '2024-10-22', '21:00:00'),
(627, 'CL', 35, 38, 3, 1, '2024-09-17', '18:45:00'),
(628, 'CL', 35, 38, 2, 1, '2025-02-11', '21:00:00'),
(629, 'CL', 35, 39, 0, 2, '2025-01-29', '21:00:00'),
(630, 'CL', 36, 21, 1, 3, '2024-09-17', '21:00:00'),
(631, 'CL', 36, 25, 1, 0, '2025-01-22', '21:00:00'),
(632, 'CL', 36, 37, 1, 1, '2025-02-18', '18:45:00'),
(633, 'CL', 36, 41, 3, 1, '2024-10-22', '18:45:00'),
(634, 'CL', 36, 46, 2, 1, '2024-12-11', '21:00:00'),
(635, 'CL', 37, 27, 3, 0, '2025-01-22', '21:00:00'),
(636, 'CL', 37, 30, 0, 4, '2024-09-19', '18:45:00'),
(637, 'CL', 37, 34, 0, 2, '2025-03-05', '18:45:00'),
(638, 'CL', 37, 36, 1, 0, '2025-02-12', '21:00:00'),
(639, 'CL', 37, 44, 1, 3, '2024-11-06', '21:00:00'),
(640, 'CL', 37, 49, 4, 2, '2024-12-11', '21:00:00'),
(641, 'CL', 38, 19, 1, 7, '2025-03-04', '21:00:00'),
(642, 'CL', 38, 21, 3, 2, '2025-01-29', '21:00:00'),
(643, 'CL', 38, 25, 4, 0, '2024-11-05', '18:45:00'),
(644, 'CL', 38, 35, 3, 1, '2025-02-19', '21:00:00'),
(645, 'CL', 38, 40, 1, 1, '2024-10-01', '21:00:00'),
(646, 'CL', 38, 50, 3, 2, '2024-11-27', '21:00:00'),
(647, 'CL', 39, 2, 3, 3, '2025-02-18', '21:00:00'),
(648, 'CL', 39, 23, 4, 0, '2024-10-02', '21:00:00'),
(649, 'CL', 39, 24, 4, 5, '2025-01-21', '21:00:00'),
(650, 'CL', 39, 24, 0, 1, '2025-03-05', '21:00:00'),
(651, 'CL', 39, 33, 0, 0, '2024-12-11', '21:00:00'),
(652, 'CL', 39, 37, 1, 3, '2024-10-23', '21:00:00'),
(653, 'CL', 40, 4, 2, 0, '2024-09-17', '21:00:00'),
(654, 'CL', 40, 19, 1, 5, '2024-11-26', '21:00:00'),
(655, 'CL', 40, 22, 4, 1, '2024-11-05', '21:00:00'),
(656, 'CL', 40, 28, 0, 3, '2025-02-11', '21:00:00'),
(657, 'CL', 40, 33, 1, 1, '2025-01-29', '21:00:00'),
(658, 'CL', 41, 20, 1, 0, '2024-11-06', '18:45:00'),
(659, 'CL', 41, 20, 1, 3, '2025-03-04', '18:45:00'),
(660, 'CL', 41, 28, 0, 3, '2024-09-18', '21:00:00'),
(661, 'CL', 41, 32, 2, 1, '2025-02-12', '18:45:00'),
(662, 'CL', 41, 35, 0, 0, '2025-01-21', '21:00:00'),
(663, 'CL', 41, 40, 2, 1, '2024-12-10', '21:00:00'),
(664, 'CL', 42, 2, 2, 2, '2024-10-02', '21:00:00'),
(665, 'CL', 42, 28, 0, 3, '2024-11-27', '21:00:00'),
(666, 'CL', 42, 36, 2, 1, '2025-01-29', '21:00:00'),
(667, 'CL', 42, 43, 0, 0, '2024-12-10', '18:45:00'),
(668, 'CL', 43, 27, 1, 2, '2025-02-12', '21:00:00'),
(669, 'CL', 43, 29, 3, 1, '2024-11-05', '21:00:00'),
(670, 'CL', 43, 41, 1, 1, '2024-11-27', '21:00:00'),
(671, 'CL', 43, 47, 5, 1, '2024-09-18', '21:00:00'),
(672, 'CL', 43, 48, 1, 0, '2025-01-22', '21:00:00'),
(673, 'CL', 44, 1, 0, 3, '2024-12-10', '21:00:00'),
(674, 'CL', 44, 3, 0, 4, '2024-10-01', '18:45:00'),
(675, 'CL', 44, 23, 1, 4, '2025-01-29', '21:00:00'),
(676, 'CL', 44, 42, 0, 2, '2024-10-23', '21:00:00'),
(677, 'CL', 45, 25, 1, 0, '2024-11-27', '18:45:00'),
(678, 'CL', 45, 29, 1, 0, '2025-01-29', '21:00:00'),
(679, 'CL', 45, 40, 0, 2, '2024-10-22', '21:00:00'),
(680, 'CL', 45, 41, 0, 1, '2024-10-02', '21:00:00'),
(681, 'CL', 46, 24, 2, 5, '2024-11-06', '21:00:00'),
(682, 'CL', 46, 31, 5, 1, '2024-11-27', '18:45:00'),
(683, 'CL', 46, 38, 2, 3, '2025-01-21', '21:00:00'),
(684, 'CL', 46, 39, 1, 2, '2024-09-19', '18:45:00'),
(685, 'CL', 47, 22, 0, 4, '2024-10-01', '21:00:00'),
(686, 'CL', 47, 31, 1, 3, '2025-01-21', '21:00:00'),
(687, 'CL', 47, 36, 2, 3, '2024-11-26', '18:45:00'),
(688, 'CL', 47, 42, 1, 4, '2024-11-05', '18:45:00'),
(689, 'CL', 48, 20, 0, 3, '2024-09-17', '18:45:00'),
(690, 'CL', 48, 32, 1, 6, '2024-11-26', '21:00:00'),
(691, 'CL', 48, 34, 0, 1, '2024-10-23', '21:00:00'),
(692, 'CL', 48, 46, 0, 1, '2025-01-29', '21:00:00'),
(693, 'CL', 49, 3, 1, 2, '2024-11-06', '21:00:00'),
(694, 'CL', 49, 23, 0, 6, '2024-11-26', '18:45:00'),
(695, 'CL', 49, 34, 0, 1, '2025-01-22', '21:00:00'),
(696, 'CL', 49, 44, 3, 0, '2024-09-18', '18:45:00'),
(697, 'CL', 50, 3, 2, 0, '2025-01-22', '18:45:00'),
(698, 'CL', 50, 27, 1, 5, '2024-12-10', '21:00:00'),
(699, 'CL', 50, 32, 0, 3, '2024-10-02', '18:45:00'),
(700, 'CL', 50, 48, 2, 1, '2024-11-06', '18:45:00');

-- --------------------------------------------------------

--
-- Structure de la table `matchs-cl`
--

CREATE TABLE `matchs-cl` (
  `EquipeDom` int(11) NOT NULL,
  `EquipeExt` int(11) NOT NULL,
  `Score1` tinyint(4) DEFAULT NULL,
  `Score2` tinyint(4) DEFAULT NULL,
  `Date_match` date NOT NULL,
  `Heure` time DEFAULT NULL,
  `Round` varchar(255) NOT NULL,
  `Journee` tinyint(4) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `matchs-cl`
--

INSERT INTO `matchs-cl` (`EquipeDom`, `EquipeExt`, `Score1`, `Score2`, `Date_match`, `Heure`, `Round`, `Journee`) VALUES
(1, 3, 7, 0, '2025-02-19', '21:00:00', 'Barrage Retour', 10),
(1, 19, 2, 1, '2025-05-07', '21:00:00', 'Demi Finale Retour', 16),
(1, 20, 3, 1, '2025-04-09', '21:00:00', 'Quart de Finale Aller', 13),
(1, 21, 0, 1, '2025-03-05', '21:00:00', 'Huitième de Finale Aller', 11),
(1, 22, 4, 2, '2025-01-22', '21:00:00', '7', 7),
(1, 23, 1, 2, '2024-11-06', '21:00:00', '4', 4),
(1, 25, 1, 0, '2024-09-18', '21:00:00', '1', 1),
(1, 34, NULL, NULL, '2025-05-31', '21:00:00', 'Finale', 17),
(1, 38, 1, 1, '2024-10-22', '21:00:00', '3', 3),
(2, 20, 1, 0, '2025-01-21', '18:45:00', '7', 7),
(2, 24, 2, 1, '2024-09-19', '21:00:00', '1', 1),
(2, 39, 2, 3, '2024-11-27', '21:00:00', '5', 5),
(2, 39, 0, 1, '2025-02-12', '21:00:00', 'Barrage Aller', 9),
(2, 46, 5, 1, '2024-10-22', '18:45:00', '3', 3),
(3, 1, 0, 3, '2025-02-11', '18:45:00', 'Barrage Aller', 9),
(3, 26, 0, 3, '2025-01-29', '21:00:00', '8', 8),
(3, 30, 1, 1, '2024-10-23', '18:45:00', '3', 3),
(3, 38, 1, 0, '2024-12-10', '21:00:00', '6', 6),
(3, 45, 2, 1, '2024-09-19', '21:00:00', '1', 1),
(4, 26, 1, 0, '2024-10-02', '21:00:00', '2', 2),
(4, 28, 1, 2, '2025-03-12', '18:45:00', 'Huitième de Finale Retour', 12),
(4, 35, 1, 1, '2024-11-05', '21:00:00', '4', 4),
(4, 37, 6, 1, '2025-01-29', '21:00:00', '8', 8),
(4, 45, 3, 2, '2024-12-11', '18:45:00', '6', 6),
(19, 1, 2, 0, '2024-10-01', '21:00:00', '2', 2),
(19, 1, 0, 1, '2025-04-29', '21:00:00', 'Demi Finale Aller', 15),
(19, 2, 3, 0, '2024-12-11', '21:00:00', '6', 6),
(19, 26, 3, 0, '2025-04-08', '21:00:00', 'Quart de Finale Aller', 13),
(19, 38, 2, 2, '2025-03-12', '21:00:00', 'Huitième de Finale Retour', 12),
(19, 42, 3, 0, '2025-01-22', '21:00:00', '7', 7),
(19, 50, 1, 0, '2024-10-22', '21:00:00', '3', 3),
(20, 1, 3, 2, '2025-04-15', '21:00:00', 'Quart de Finale Retour', 14),
(20, 27, 1, 0, '2024-10-02', '21:00:00', '2', 2),
(20, 33, 2, 0, '2024-10-22', '21:00:00', '3', 3),
(20, 35, 0, 0, '2024-11-27', '21:00:00', '5', 5),
(20, 41, 3, 0, '2025-03-12', '21:00:00', 'Huitième de Finale Retour', 12),
(20, 43, 4, 2, '2025-01-29', '21:00:00', '8', 8),
(21, 1, 0, 1, '2025-03-11', '21:00:00', 'Huitième de Finale Retour', 12),
(21, 4, 2, 1, '2025-01-21', '21:00:00', '7', 7),
(21, 26, 2, 0, '2024-11-27', '21:00:00', '5', 5),
(21, 30, 4, 0, '2024-11-05', '21:00:00', '4', 4),
(21, 33, 2, 0, '2024-10-02', '21:00:00', '2', 2),
(22, 26, 2, 3, '2025-02-11', '21:00:00', 'Barrage Aller', 9),
(22, 34, 0, 0, '2024-09-18', '21:00:00', '1', 1),
(22, 37, 3, 3, '2024-11-26', '21:00:00', '5', 5),
(22, 41, 3, 1, '2025-01-29', '21:00:00', '8', 8),
(22, 49, 5, 0, '2024-10-23', '21:00:00', '3', 3),
(23, 4, 1, 3, '2024-10-23', '21:00:00', '3', 3),
(23, 26, 1, 0, '2025-03-12', '21:00:00', 'Huitième de Finale Retour', 12),
(23, 29, 2, 1, '2024-09-19', '21:00:00', '1', 1),
(23, 30, 2, 1, '2025-01-21', '21:00:00', '7', 7),
(23, 47, 3, 1, '2024-12-11', '18:45:00', '6', 6),
(24, 3, 3, 0, '2024-11-26', '21:00:00', '5', 5),
(24, 27, 4, 1, '2024-10-23', '21:00:00', '3', 3),
(24, 28, 4, 0, '2025-04-09', '21:00:00', 'Quart de Finale Aller', 13),
(24, 32, 2, 2, '2025-01-29', '21:00:00', '8', 8),
(24, 34, 3, 3, '2025-04-30', '21:00:00', 'Demi Finale Aller', 15),
(24, 39, 3, 1, '2025-03-11', '18:45:00', 'Huitième de Finale Retour', 12),
(24, 48, 5, 0, '2024-10-01', '21:00:00', '2', 2),
(25, 19, 1, 2, '2025-01-29', '21:00:00', '8', 8),
(25, 21, 0, 1, '2024-12-10', '18:45:00', '6', 6),
(25, 37, 2, 3, '2024-10-02', '18:45:00', '2', 2),
(25, 47, 2, 0, '2024-10-22', '21:00:00', '3', 3),
(26, 19, 1, 2, '2025-04-16', '21:00:00', 'Quart de Finale Retour', 14),
(26, 22, 3, 1, '2025-02-19', '21:00:00', 'Barrage Retour', 10),
(26, 23, 2, 1, '2025-03-04', '21:00:00', 'Huitième de Finale Aller', 11),
(26, 28, 5, 2, '2024-10-22', '21:00:00', '3', 3),
(26, 31, 3, 1, '2024-09-17', '21:00:00', '1', 1),
(26, 36, 1, 3, '2024-11-05', '21:00:00', '4', 4),
(26, 44, 5, 1, '2025-01-22', '21:00:00', '7', 7),
(27, 1, 1, 0, '2024-11-26', '21:00:00', '5', 5),
(27, 30, 3, 0, '2025-03-05', '21:00:00', 'Huitième de Finale Aller', 11),
(27, 34, 1, 2, '2025-04-08', '21:00:00', 'Quart de Finale Aller', 13),
(27, 39, 1, 0, '2024-11-06', '21:15:00', '4', 4),
(27, 42, 9, 2, '2024-09-17', '21:00:00', '1', 1),
(27, 43, 1, 1, '2025-02-18', '21:00:00', 'Barrage Retour', 10),
(27, 47, 3, 1, '2025-01-29', '21:00:00', '8', 8),
(28, 4, 1, 1, '2025-03-04', '21:00:00', 'Huitième de Finale Aller', 11),
(28, 24, 2, 3, '2024-12-11', '21:00:00', '6', 6),
(28, 24, 3, 1, '2025-04-15', '21:00:00', 'Quart de Finale Retour', 14),
(28, 40, 0, 0, '2025-02-19', '18:45:00', 'Barrage Retour', 10),
(28, 43, 7, 1, '2024-10-01', '21:00:00', '2', 2),
(28, 45, 1, 0, '2024-11-05', '21:00:00', '4', 4),
(28, 50, 3, 1, '2025-01-29', '21:00:00', '8', 8),
(29, 20, 2, 3, '2024-12-10', '21:00:00', '6', 6),
(29, 21, 0, 1, '2024-10-23', '21:00:00', '3', 3),
(29, 35, 2, 3, '2024-10-02', '21:00:00', '2', 2),
(29, 40, 2, 1, '2025-01-22', '18:45:00', '7', 7),
(30, 27, 0, 2, '2025-03-11', '21:00:00', 'Huitième de Finale Retour', 12),
(30, 34, 1, 0, '2024-12-10', '21:00:00', '6', 6),
(30, 36, 1, 0, '2024-10-01', '21:00:00', '2', 2),
(30, 44, 5, 0, '2024-11-26', '21:00:00', '5', 5),
(30, 49, 2, 0, '2025-01-29', '21:00:00', '8', 8),
(31, 1, 1, 4, '2025-01-29', '21:00:00', '8', 8),
(31, 32, 0, 2, '2024-11-06', '21:00:00', '4', 4),
(31, 48, 5, 1, '2024-12-11', '21:00:00', '6', 6),
(31, 49, 1, 1, '2024-10-01', '18:45:00', '2', 2),
(32, 19, 0, 0, '2024-09-19', '21:00:00', '1', 1),
(32, 26, 2, 3, '2024-12-10', '21:00:00', '6', 6),
(32, 41, 1, 3, '2025-02-18', '21:00:00', 'Barrage Retour', 10),
(32, 43, 0, 0, '2024-10-23', '18:45:00', '3', 3),
(32, 45, 5, 0, '2025-01-21', '18:45:00', '7', 7),
(33, 2, 0, 1, '2024-11-05', '21:00:00', '4', 4),
(33, 4, 1, 2, '2024-11-27', '21:00:00', '5', 5),
(33, 28, 2, 1, '2025-01-21', '21:00:00', '7', 7),
(33, 50, 0, 0, '2024-09-18', '18:45:00', '1', 1),
(34, 2, 3, 0, '2025-01-29', '21:00:00', '8', 8),
(34, 19, 1, 0, '2024-11-06', '21:00:00', '4', 4),
(34, 24, 4, 3, '2025-05-06', '21:00:00', 'Demi Finale Retour', 16),
(34, 27, 2, 2, '2025-04-16', '21:00:00', 'Quart de Finale Retour', 14),
(34, 29, 1, 0, '2024-11-26', '21:00:00', '5', 5),
(34, 37, 2, 1, '2025-03-11', '21:00:00', 'Huitième de Finale Retour', 12),
(34, 46, 4, 0, '2024-10-01', '21:00:00', '2', 2),
(35, 22, 2, 0, '2024-12-11', '21:00:00', '6', 6),
(35, 31, 0, 1, '2024-10-22', '21:00:00', '3', 3),
(35, 38, 3, 1, '2024-09-17', '18:45:00', '1', 1),
(35, 38, 2, 1, '2025-02-11', '21:00:00', 'Barrage Aller', 9),
(35, 39, 0, 2, '2025-01-29', '21:00:00', '8', 8),
(36, 21, 1, 3, '2024-09-17', '21:00:00', '1', 1),
(36, 25, 1, 0, '2025-01-22', '21:00:00', '7', 7),
(36, 37, 1, 1, '2025-02-18', '18:45:00', 'Barrage Retour', 10),
(36, 41, 3, 1, '2024-10-22', '18:45:00', '3', 3),
(36, 46, 2, 1, '2024-12-11', '21:00:00', '6', 6),
(37, 27, 3, 0, '2025-01-22', '21:00:00', '7', 7),
(37, 30, 0, 4, '2024-09-19', '18:45:00', '1', 1),
(37, 34, 0, 2, '2025-03-05', '18:45:00', 'Huitième de Finale Aller', 11),
(37, 36, 1, 0, '2025-02-12', '21:00:00', 'Barrage Aller', 9),
(37, 44, 1, 3, '2024-11-06', '21:00:00', '4', 4),
(37, 49, 4, 2, '2024-12-11', '21:00:00', '6', 6),
(38, 19, 1, 7, '2025-03-04', '21:00:00', 'Huitième de Finale Aller', 11),
(38, 21, 3, 2, '2025-01-29', '21:00:00', '8', 8),
(38, 25, 4, 0, '2024-11-05', '18:45:00', '4', 4),
(38, 35, 3, 1, '2025-02-19', '21:00:00', 'Barrage Retour', 10),
(38, 40, 1, 1, '2024-10-01', '21:00:00', '2', 2),
(38, 50, 3, 2, '2024-11-27', '21:00:00', '5', 5),
(39, 2, 3, 3, '2025-02-18', '21:00:00', 'Barrage Retour', 10),
(39, 23, 4, 0, '2024-10-02', '21:00:00', '2', 2),
(39, 24, 4, 5, '2025-01-21', '21:00:00', '7', 7),
(39, 24, 0, 1, '2025-03-05', '21:00:00', 'Huitième de Finale Aller', 11),
(39, 33, 0, 0, '2024-12-11', '21:00:00', '6', 6),
(39, 37, 1, 3, '2024-10-23', '21:00:00', '3', 3),
(40, 4, 2, 0, '2024-09-17', '21:00:00', '1', 1),
(40, 19, 1, 5, '2024-11-26', '21:00:00', '5', 5),
(40, 22, 4, 1, '2024-11-05', '21:00:00', '4', 4),
(40, 28, 0, 3, '2025-02-11', '21:00:00', 'Barrage Aller', 9),
(40, 33, 1, 1, '2025-01-29', '21:00:00', '8', 8),
(41, 20, 1, 0, '2024-11-06', '18:45:00', '4', 4),
(41, 20, 1, 3, '2025-03-04', '18:45:00', 'Huitième de Finale Aller', 11),
(41, 28, 0, 3, '2024-09-18', '21:00:00', '1', 1),
(41, 32, 2, 1, '2025-02-12', '18:45:00', 'Barrage Aller', 9),
(41, 35, 0, 0, '2025-01-21', '21:00:00', '7', 7),
(41, 40, 2, 1, '2024-12-10', '21:00:00', '6', 6),
(42, 2, 2, 2, '2024-10-02', '21:00:00', '2', 2),
(42, 28, 0, 3, '2024-11-27', '21:00:00', '5', 5),
(42, 36, 2, 1, '2025-01-29', '21:00:00', '8', 8),
(42, 43, 0, 0, '2024-12-10', '18:45:00', '6', 6),
(43, 27, 1, 2, '2025-02-12', '21:00:00', 'Barrage Aller', 9),
(43, 29, 3, 1, '2024-11-05', '21:00:00', '4', 4),
(43, 41, 1, 1, '2024-11-27', '21:00:00', '5', 5),
(43, 47, 5, 1, '2024-09-18', '21:00:00', '1', 1),
(43, 48, 1, 0, '2025-01-22', '21:00:00', '7', 7),
(44, 1, 0, 3, '2024-12-10', '21:00:00', '6', 6),
(44, 3, 0, 4, '2024-10-01', '18:45:00', '2', 2),
(44, 23, 1, 4, '2025-01-29', '21:00:00', '8', 8),
(44, 42, 0, 2, '2024-10-23', '21:00:00', '3', 3),
(45, 25, 1, 0, '2024-11-27', '18:45:00', '5', 5),
(45, 29, 1, 0, '2025-01-29', '21:00:00', '8', 8),
(45, 40, 0, 2, '2024-10-22', '21:00:00', '3', 3),
(45, 41, 0, 1, '2024-10-02', '21:00:00', '2', 2),
(46, 24, 2, 5, '2024-11-06', '21:00:00', '4', 4),
(46, 31, 5, 1, '2024-11-27', '18:45:00', '5', 5),
(46, 38, 2, 3, '2025-01-21', '21:00:00', '7', 7),
(46, 39, 1, 2, '2024-09-19', '18:45:00', '1', 1),
(47, 22, 0, 4, '2024-10-01', '21:00:00', '2', 2),
(47, 31, 1, 3, '2025-01-21', '21:00:00', '7', 7),
(47, 36, 2, 3, '2024-11-26', '18:45:00', '5', 5),
(47, 42, 1, 4, '2024-11-05', '18:45:00', '4', 4),
(48, 20, 0, 3, '2024-09-17', '18:45:00', '1', 1),
(48, 32, 1, 6, '2024-11-26', '21:00:00', '5', 5),
(48, 34, 0, 1, '2024-10-23', '21:00:00', '3', 3),
(48, 46, 0, 1, '2025-01-29', '21:00:00', '8', 8),
(49, 3, 1, 2, '2024-11-06', '21:00:00', '4', 4),
(49, 23, 0, 6, '2024-11-26', '18:45:00', '5', 5),
(49, 34, 0, 1, '2025-01-22', '21:00:00', '7', 7),
(49, 44, 3, 0, '2024-09-18', '18:45:00', '1', 1),
(50, 3, 2, 0, '2025-01-22', '18:45:00', '7', 7),
(50, 27, 1, 5, '2024-12-10', '21:00:00', '6', 6),
(50, 32, 0, 3, '2024-10-02', '18:45:00', '2', 2),
(50, 48, 2, 1, '2024-11-06', '18:45:00', '4', 4);

-- --------------------------------------------------------

--
-- Structure de la table `matchs-l1`
--

CREATE TABLE `matchs-l1` (
  `EquipeDom` int(11) NOT NULL,
  `EquipeExt` int(11) NOT NULL,
  `Score1` tinyint(4) DEFAULT NULL,
  `Score2` tinyint(4) DEFAULT NULL,
  `Date_match` date NOT NULL,
  `Heure` time DEFAULT NULL,
  `Journee` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `matchs-l1`
--

INSERT INTO `matchs-l1` (`EquipeDom`, `EquipeExt`, `Score1`, `Score2`, `Date_match`, `Heure`, `Journee`) VALUES
(1, 2, 4, 1, '2025-02-07', '21:05:00', 21),
(1, 3, 3, 1, '2024-09-14', '21:00:00', 4),
(1, 4, 4, 1, '2025-03-01', '21:05:00', 24),
(1, 5, 3, 1, '2025-03-16', '20:45:00', 26),
(1, 6, 3, 1, '2024-12-15', '20:45:00', 15),
(1, 7, 1, 0, '2024-11-02', '17:00:00', 10),
(1, 8, 3, 1, '2024-09-27', '21:00:00', 6),
(1, 9, 1, 3, '2025-04-25', '20:45:00', 31),
(1, 10, 1, 1, '2024-11-30', '21:00:00', 13),
(1, 11, 6, 0, '2024-08-23', '20:45:00', 2),
(1, 12, 4, 2, '2024-10-19', '21:00:00', 8),
(1, 15, 3, 0, '2024-11-22', '21:00:00', 12),
(1, 17, 2, 1, '2025-04-19', '17:00:00', 30),
(1, 18, 1, 0, '2025-04-05', '17:00:00', 28),
(1, 51, 1, 1, '2025-01-25', '21:05:00', 19),
(1, 52, NULL, NULL, '2025-05-17', '21:00:00', 34),
(1, 53, 2, 1, '2025-01-12', '20:45:00', 17),
(2, 1, 2, 4, '2024-12-18', '21:00:00', 16),
(2, 3, 3, 2, '2024-11-22', '19:00:00', 12),
(2, 4, 0, 0, '2024-10-18', '20:45:00', 8),
(2, 5, 3, 0, '2025-04-12', '17:00:00', 29),
(2, 6, 2, 0, '2025-05-10', '21:00:00', 33),
(2, 7, 1, 1, '2024-09-01', '15:00:00', 3),
(2, 8, 3, 2, '2025-01-25', '17:00:00', 19),
(2, 9, 2, 1, '2025-03-29', '21:05:00', 27),
(2, 10, 7, 1, '2025-02-15', '19:00:00', 22),
(2, 11, 2, 1, '2024-09-28', '21:00:00', 6),
(2, 12, 0, 0, '2025-04-19', '19:00:00', 30),
(2, 15, 2, 0, '2024-12-07', '17:00:00', 14),
(2, 17, 3, 1, '2024-09-22', '15:00:00', 5),
(2, 18, 0, 1, '2024-11-01', '19:00:00', 10),
(2, 51, 3, 0, '2025-02-28', '20:45:00', 24),
(2, 52, 4, 2, '2025-02-01', '19:00:00', 20),
(2, 53, 1, 0, '2024-08-17', '21:00:00', 1),
(3, 1, 2, 5, '2025-02-01', '17:00:00', 20),
(3, 2, 2, 1, '2025-04-05', '19:00:00', 28),
(3, 4, 2, 0, '2025-05-10', '21:00:00', 33),
(3, 5, 1, 5, '2024-08-17', '17:00:00', 1),
(3, 6, 2, 1, '2025-01-11', '17:00:00', 17),
(3, 7, 1, 3, '2025-04-20', '17:15:00', 30),
(3, 8, 1, 1, '2024-10-19', '17:00:00', 8),
(3, 9, 0, 1, '2024-11-02', '19:00:00', 10),
(3, 10, 4, 1, '2024-12-15', '17:00:00', 15),
(3, 11, 1, 0, '2025-05-04', '17:15:00', 32),
(3, 12, 3, 1, '2024-11-30', '19:00:00', 13),
(3, 15, 2, 0, '2024-09-22', '17:00:00', 5),
(3, 17, 2, 0, '2024-10-06', '17:00:00', 7),
(3, 18, 2, 0, '2025-03-09', '15:00:00', 25),
(3, 51, 0, 0, '2025-03-16', '17:15:00', 26),
(3, 52, 2, 2, '2025-02-14', '20:45:00', 22),
(3, 53, 4, 0, '2024-08-31', '17:00:00', 3),
(4, 1, 1, 3, '2024-09-01', '20:45:00', 3),
(4, 2, 2, 1, '2025-02-22', '17:00:00', 23),
(4, 3, 3, 1, '2024-12-06', '19:00:00', 14),
(4, 5, 1, 1, '2025-05-04', '20:45:00', 32),
(4, 6, 1, 1, '2024-11-01', '21:00:00', 10),
(4, 7, 1, 0, '2025-03-30', '20:45:00', 27),
(4, 8, 1, 0, '2024-11-24', '15:00:00', 12),
(4, 9, 2, 1, '2025-01-17', '21:05:00', 18),
(4, 10, 1, 1, '2025-01-04', '19:00:00', 16),
(4, 11, 1, 0, '2025-03-08', '19:00:00', 25),
(4, 12, 3, 3, '2024-09-21', '17:00:00', 5),
(4, 15, 2, 1, '2024-10-05', '19:00:00', 7),
(4, 17, 1, 2, '2025-02-08', '19:00:00', 21),
(4, 18, 2, 0, '2024-08-24', '19:00:00', 2),
(4, 51, NULL, NULL, '2025-05-17', '21:00:00', 34),
(4, 52, 3, 1, '2025-04-20', '15:00:00', 30),
(4, 53, 4, 1, '2025-02-01', '21:05:00', 20),
(5, 1, 0, 3, '2024-10-27', '20:45:00', 9),
(5, 2, 2, 1, '2024-12-01', '20:45:00', 13),
(5, 3, 4, 1, '2025-04-27', '20:45:00', 31),
(5, 4, 1, 1, '2024-12-14', '17:00:00', 15),
(5, 6, 3, 2, '2025-02-02', '20:45:00', 20),
(5, 7, 0, 1, '2025-03-08', '21:05:00', 25),
(5, 8, NULL, NULL, '2025-05-17', '21:00:00', 34),
(5, 9, 2, 0, '2024-09-14', '17:00:00', 4),
(5, 10, 2, 0, '2025-03-02', '20:45:00', 24),
(5, 11, 5, 1, '2025-04-19', '21:05:00', 30),
(5, 12, 1, 1, '2025-01-19', '20:45:00', 18),
(5, 15, 3, 2, '2025-04-06', '20:45:00', 28),
(5, 17, 5, 1, '2025-01-05', '20:45:00', 16),
(5, 18, 1, 1, '2024-10-04', '20:45:00', 7),
(5, 51, 2, 2, '2024-08-25', '20:45:00', 2),
(5, 52, 1, 3, '2024-11-08', '20:45:00', 11),
(5, 53, 5, 1, '2025-02-15', '17:00:00', 22),
(6, 1, 2, 3, '2025-02-23', '20:45:00', 23),
(6, 2, 0, 2, '2024-08-24', '17:00:00', 2),
(6, 3, 2, 1, '2025-03-02', '15:00:00', 24),
(6, 4, 2, 1, '2025-04-05', '21:05:00', 28),
(6, 5, 2, 3, '2024-09-22', '20:45:00', 5),
(6, 7, 1, 2, '2025-05-04', '17:15:00', 32),
(6, 8, 4, 1, '2025-04-26', '21:05:00', 31),
(6, 9, 4, 1, '2024-12-01', '17:00:00', 13),
(6, 10, 2, 0, '2024-10-06', '15:00:00', 7),
(6, 11, 1, 0, '2025-01-04', '21:00:00', 16),
(6, 12, 4, 3, '2024-08-30', '20:45:00', 3),
(6, 15, 0, 0, '2025-01-18', '21:05:00', 18),
(6, 17, 4, 2, '2025-03-16', '15:00:00', 26),
(6, 18, NULL, NULL, '2025-05-17', '21:00:00', 34),
(6, 51, 4, 0, '2025-02-09', '15:00:00', 21),
(6, 52, 2, 2, '2024-10-27', '15:00:00', 9),
(6, 53, 1, 0, '2024-11-10', '20:45:00', 11),
(7, 1, 1, 2, '2025-01-18', '17:00:00', 18),
(7, 2, NULL, NULL, '2025-05-17', '21:00:00', 34),
(7, 3, 2, 0, '2024-08-25', '15:00:00', 2),
(7, 4, 0, 2, '2024-10-26', '21:00:00', 9),
(7, 5, 1, 3, '2024-11-23', '17:00:00', 12),
(7, 6, 0, 0, '2024-09-15', '20:45:00', 4),
(7, 8, 1, 0, '2025-03-15', '21:05:00', 26),
(7, 9, 0, 0, '2024-09-28', '17:00:00', 6),
(7, 10, 3, 2, '2024-11-09', '19:00:00', 11),
(7, 11, 2, 0, '2024-12-08', '15:00:00', 14),
(7, 12, 0, 2, '2025-02-16', '17:15:00', 22),
(7, 15, 0, 1, '2025-01-05', '15:00:00', 16),
(7, 17, 3, 4, '2025-03-01', '19:00:00', 24),
(7, 18, 1, 0, '2025-01-26', '17:15:00', 19),
(7, 51, 0, 2, '2025-04-11', '20:45:00', 29),
(7, 52, 0, 4, '2025-04-27', '17:15:00', 31),
(7, 53, 1, 0, '2025-04-06', '15:00:00', 28),
(8, 1, 1, 4, '2025-03-08', '17:00:00', 25),
(8, 2, 1, 2, '2024-10-05', '21:00:00', 7),
(8, 3, 1, 2, '2025-01-18', '19:00:00', 18),
(8, 4, 0, 2, '2025-02-16', '20:45:00', 22),
(8, 5, 1, 2, '2025-01-11', '21:05:00', 17),
(8, 6, 3, 0, '2024-08-18', '20:45:00', 1),
(8, 7, 1, 1, '2024-09-21', '19:00:00', 5),
(8, 9, 2, 0, '2025-05-10', '21:00:00', 33),
(8, 10, 2, 1, '2025-04-18', '20:45:00', 30),
(8, 11, 3, 0, '2024-09-15', '15:00:00', 4),
(8, 12, 1, 0, '2025-02-02', '17:15:00', 20),
(8, 15, 0, 2, '2024-11-10', '17:00:00', 11),
(8, 17, 1, 0, '2024-10-25', '20:45:00', 9),
(8, 18, 2, 0, '2024-12-15', '17:00:00', 15),
(8, 51, 1, 0, '2025-02-21', '20:45:00', 23),
(8, 52, 0, 1, '2025-04-06', '17:15:00', 28),
(8, 53, 5, 0, '2024-11-30', '17:00:00', 13),
(9, 1, 1, 1, '2024-10-06', '20:45:00', 7),
(9, 2, 2, 1, '2024-10-27', '17:00:00', 9),
(9, 3, NULL, NULL, '2025-05-17', '21:00:00', 34),
(9, 4, 2, 2, '2024-11-10', '15:00:00', 11),
(9, 5, 2, 0, '2025-01-26', '20:45:00', 19),
(9, 6, 0, 2, '2025-03-09', '20:45:00', 25),
(9, 7, 2, 0, '2025-02-08', '17:00:00', 21),
(9, 8, 3, 2, '2025-01-03', '21:00:00', 16),
(9, 10, 1, 2, '2025-04-04', '20:45:00', 28),
(9, 11, 2, 0, '2025-02-23', '17:15:00', 23),
(9, 12, 2, 1, '2024-11-24', '20:45:00', 12),
(9, 15, 1, 1, '2024-08-25', '17:00:00', 2),
(9, 17, 2, 1, '2024-12-07', '19:00:00', 14),
(9, 18, 2, 1, '2025-04-20', '17:15:00', 30),
(9, 51, 1, 0, '2025-05-02', '20:45:00', 32),
(9, 52, 1, 1, '2025-03-14', '20:45:00', 26),
(9, 53, 8, 0, '2024-09-20', '20:45:00', 5),
(10, 1, 1, 1, '2025-04-22', '20:45:00', 29),
(10, 2, 2, 2, '2025-01-10', '19:00:00', 17),
(10, 3, 0, 2, '2025-02-07', '19:00:00', 21),
(10, 4, 1, 0, '2025-03-15', '17:00:00', 26),
(10, 5, 1, 2, '2024-11-03', '20:45:00', 10),
(10, 6, 1, 1, '2025-01-26', '17:15:00', 19),
(10, 7, 3, 1, '2025-02-23', '15:00:00', 23),
(10, 8, 1, 0, '2024-12-08', '17:00:00', 14),
(10, 9, 1, 1, '2024-10-20', '17:00:00', 8),
(10, 11, NULL, NULL, '2025-05-17', '21:00:00', 34),
(10, 12, 0, 1, '2025-03-09', '17:15:00', 25),
(10, 15, 0, 0, '2025-04-27', '17:15:00', 31),
(10, 17, 0, 2, '2024-11-24', '17:00:00', 12),
(10, 18, 0, 1, '2025-05-04', '15:00:00', 32),
(10, 51, 1, 2, '2024-09-15', '17:00:00', 4),
(10, 52, 2, 0, '2024-08-25', '17:00:00', 2),
(10, 53, 2, 2, '2024-09-29', '17:00:00', 6),
(11, 1, 1, 4, '2025-05-10', '21:00:00', 33),
(11, 2, 2, 1, '2025-01-17', '19:00:00', 18),
(11, 3, 3, 1, '2024-11-10', '17:00:00', 11),
(11, 4, 2, 2, '2024-12-01', '15:00:00', 13),
(11, 5, 0, 5, '2024-10-20', '20:45:00', 8),
(11, 6, 1, 4, '2025-02-16', '15:00:00', 22),
(11, 7, 0, 2, '2025-01-31', '20:45:00', 20),
(11, 8, 0, 4, '2025-03-02', '17:15:00', 24),
(11, 9, 2, 2, '2024-12-15', '15:00:00', 15),
(11, 10, 1, 3, '2024-08-31', '19:00:00', 3),
(11, 12, 1, 1, '2024-08-18', '17:00:00', 1),
(11, 15, 0, 3, '2024-10-27', '17:00:00', 9),
(11, 17, 0, 2, '2025-04-06', '17:15:00', 28),
(11, 18, 1, 3, '2025-01-12', '17:15:00', 17),
(11, 51, 0, 0, '2025-04-27', '17:15:00', 31),
(11, 52, 3, 2, '2024-09-22', '17:00:00', 5),
(11, 53, 0, 2, '2025-03-16', '17:15:00', 26),
(12, 1, 2, 1, '2025-05-03', '17:00:00', 32),
(12, 2, 1, 3, '2024-11-09', '17:00:00', 11),
(12, 3, 0, 0, '2025-02-23', '17:15:00', 23),
(12, 4, 2, 1, '2025-01-25', '19:00:00', 19),
(12, 5, 1, 0, '2024-09-29', '20:45:00', 6),
(12, 6, 4, 2, '2025-03-28', '20:45:00', 27),
(12, 7, 2, 2, '2024-10-06', '17:00:00', 7),
(12, 8, 3, 1, '2024-08-25', '17:00:00', 2),
(12, 9, 2, 2, '2025-04-12', '21:05:00', 29),
(12, 10, 3, 1, '2024-10-27', '17:00:00', 9),
(12, 11, 2, 0, '2025-02-09', '17:15:00', 21),
(12, 15, 2, 1, '2025-03-16', '17:15:00', 26),
(12, 17, NULL, NULL, '2025-05-17', '21:00:00', 34),
(12, 18, 1, 1, '2024-09-15', '17:00:00', 4),
(12, 51, 0, 0, '2024-12-08', '17:00:00', 14),
(12, 52, 3, 1, '2025-01-05', '15:00:00', 16),
(12, 53, 3, 1, '2025-04-26', '17:00:00', 31),
(15, 1, 0, 1, '2025-02-15', '21:05:00', 22),
(15, 2, 1, 1, '2025-03-07', '20:45:00', 25),
(15, 3, 2, 4, '2025-03-30', '15:00:00', 27),
(15, 4, 1, 2, '2025-04-12', '19:00:00', 29),
(15, 5, 1, 3, '2024-08-31', '21:00:00', 3),
(15, 6, 1, 2, '2024-09-29', '15:00:00', 6),
(15, 7, 1, 1, '2025-05-10', '21:00:00', 33),
(15, 8, 2, 1, '2025-05-03', '19:00:00', 32),
(15, 9, 1, 1, '2025-02-02', '15:00:00', 20),
(15, 10, 0, 0, '2024-08-18', '17:00:00', 1),
(15, 11, 1, 2, '2025-01-26', '17:15:00', 19),
(15, 12, 1, 2, '2025-01-12', '17:15:00', 17),
(15, 17, 2, 0, '2024-09-15', '17:00:00', 4),
(15, 18, 1, 1, '2024-10-20', '17:00:00', 8),
(15, 51, 1, 0, '2024-11-03', '15:00:00', 10),
(15, 52, 2, 0, '2024-12-01', '17:00:00', 13),
(15, 53, 2, 1, '2024-12-13', '20:45:00', 15),
(17, 1, 1, 4, '2024-08-16', '20:45:00', 1),
(17, 2, 1, 1, '2025-04-26', '19:00:00', 31),
(17, 3, 0, 1, '2025-01-26', '15:00:00', 19),
(17, 4, 0, 3, '2024-09-28', '19:00:00', 6),
(17, 5, 1, 3, '2025-05-10', '21:00:00', 33),
(17, 6, 0, 4, '2024-10-20', '15:00:00', 8),
(17, 7, 1, 2, '2025-01-12', '15:00:00', 17),
(17, 8, 1, 5, '2025-04-13', '17:15:00', 29),
(17, 9, 1, 3, '2025-02-16', '17:15:00', 22),
(17, 10, 3, 2, '2025-03-30', '17:15:00', 27),
(17, 11, 1, 0, '2024-11-03', '17:00:00', 10),
(17, 12, 0, 3, '2024-12-15', '17:00:00', 15),
(17, 15, 1, 4, '2025-02-23', '17:15:00', 23),
(17, 18, 0, 1, '2024-12-01', '17:00:00', 13),
(17, 51, 0, 3, '2024-11-10', '17:00:00', 11),
(17, 52, 3, 1, '2024-09-01', '17:00:00', 3),
(17, 53, 1, 1, '2025-03-09', '17:15:00', 25),
(18, 1, 2, 4, '2024-11-09', '21:00:00', 11),
(18, 2, 0, 2, '2025-03-15', '19:00:00', 26),
(18, 3, 2, 0, '2025-01-05', '15:00:00', 16),
(18, 4, 0, 2, '2025-04-27', '15:00:00', 31),
(18, 5, 0, 2, '2025-02-09', '20:45:00', 21),
(18, 6, 0, 3, '2024-12-07', '21:00:00', 14),
(18, 7, 0, 1, '2024-08-18', '17:00:00', 1),
(18, 8, 0, 3, '2025-03-30', '17:15:00', 27),
(18, 9, 1, 4, '2024-09-01', '17:00:00', 3),
(18, 10, 1, 1, '2024-09-22', '17:00:00', 5),
(18, 11, 2, 0, '2025-04-13', '17:15:00', 29),
(18, 12, 2, 1, '2025-05-10', '21:00:00', 33),
(18, 15, 0, 4, '2025-03-02', '17:15:00', 24),
(18, 17, 1, 1, '2025-02-02', '17:15:00', 20),
(18, 51, 1, 3, '2024-09-29', '17:00:00', 6),
(18, 52, 2, 0, '2025-01-19', '17:15:00', 18),
(18, 53, 4, 2, '2024-10-26', '17:00:00', 9),
(51, 1, 1, 1, '2024-09-21', '21:00:00', 5),
(51, 2, 0, 0, '2024-12-14', '21:00:00', 15),
(51, 3, 1, 2, '2024-10-26', '19:00:00', 9),
(51, 4, 0, 2, '2024-08-17', '19:00:00', 1),
(51, 5, 3, 1, '2025-03-29', '17:00:00', 27),
(51, 6, 1, 1, '2024-11-23', '21:00:00', 12),
(51, 7, 0, 2, '2024-11-29', '20:45:00', 13),
(51, 8, 2, 1, '2024-09-01', '17:00:00', 3),
(51, 9, 2, 4, '2025-01-11', '19:00:00', 17),
(51, 10, 1, 2, '2025-02-02', '17:15:00', 20),
(51, 11, 4, 2, '2024-10-06', '17:00:00', 7),
(51, 12, 0, 1, '2025-04-06', '17:15:00', 28),
(51, 15, 1, 0, '2025-04-20', '17:15:00', 30),
(51, 17, 1, 1, '2025-01-19', '17:15:00', 18),
(51, 18, 0, 1, '2025-02-16', '17:15:00', 22),
(51, 52, 0, 2, '2025-03-09', '17:15:00', 25),
(51, 53, 0, 2, '2025-05-10', '21:00:00', 33),
(52, 1, 0, 0, '2024-12-06', '21:00:00', 14),
(52, 2, 0, 3, '2024-09-14', '19:00:00', 4),
(52, 3, 3, 0, '2024-09-27', '19:00:00', 6),
(52, 4, 0, 0, '2025-01-10', '21:05:00', 17),
(52, 5, 3, 0, '2025-02-22', '21:05:00', 23),
(52, 6, 1, 3, '2025-04-13', '20:45:00', 29),
(52, 7, 2, 2, '2024-12-14', '19:00:00', 15),
(52, 8, 4, 0, '2024-11-03', '17:00:00', 10),
(52, 9, 2, 1, '2024-08-18', '13:00:00', 1),
(52, 10, 1, 1, '2025-05-10', '21:00:00', 33),
(52, 11, 1, 0, '2025-03-30', '17:15:00', 27),
(52, 12, 0, 1, '2025-03-02', '17:15:00', 24),
(52, 15, 2, 2, '2025-02-09', '17:15:00', 21),
(52, 17, 1, 2, '2025-05-04', '17:15:00', 32),
(52, 18, 1, 0, '2024-11-24', '17:00:00', 12),
(52, 51, 2, 1, '2024-10-20', '17:00:00', 8),
(52, 53, 1, 1, '2025-01-24', '20:45:00', 19),
(53, 1, 1, 6, '2025-03-29', '19:00:00', 27),
(53, 2, 1, 3, '2025-05-03', '21:05:00', 32),
(53, 3, 3, 3, '2025-04-13', '15:00:00', 29),
(53, 4, 1, 0, '2024-09-13', '20:45:00', 4),
(53, 5, 0, 2, '2024-12-08', '20:45:00', 14),
(53, 6, 2, 1, '2025-04-20', '20:45:00', 30),
(53, 7, 0, 2, '2024-10-19', '19:00:00', 8),
(53, 8, 0, 2, '2025-02-08', '21:05:00', 21),
(53, 9, 1, 3, '2025-03-01', '17:00:00', 24),
(53, 10, 1, 1, '2025-01-19', '15:00:00', 18),
(53, 11, 1, 0, '2024-11-23', '19:00:00', 12),
(53, 12, 2, 0, '2024-11-02', '21:00:00', 10),
(53, 15, NULL, NULL, '2025-05-17', '21:00:00', 34),
(53, 17, 0, 2, '2024-08-24', '21:00:00', 2),
(53, 18, 3, 3, '2025-02-22', '19:00:00', 23),
(53, 51, 3, 1, '2025-01-04', '17:00:00', 16),
(53, 52, 3, 1, '2024-10-05', '17:00:00', 7);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `username` varchar(50) NOT NULL,
  `email` tinytext NOT NULL,
  `password` text NOT NULL,
  `credits` int(11) NOT NULL DEFAULT 0,
  `token_de_session` varchar(64) NOT NULL,
  `expiration_token` datetime DEFAULT NULL,
  `terms` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`username`, `email`, `password`, `credits`, `token_de_session`, `expiration_token`, `terms`) VALUES
('azerty', 'a.b@gmail.com', '$2y$10$JOcA3uzaTFQ/Vt4vyuXSCOYr3wZcOjR.R3Ff5n1o/3HMAgqDPV4Nq', 0, 'NULL', '0000-00-00 00:00:00', 0),
('BarcaForever', 'barca@example.com', 'test1234', 100, '', NULL, 0),
('Buteur97', 'buteur97@example.com', 'test1234', 100, '', NULL, 0),
('CaptainTactique', 'tactique@example.com', 'test1234', 100, '', NULL, 0),
('CrazyCoach', 'coach@example.com', 'test1234', 100, '', NULL, 0),
('FanFoot', 'fanfoot@example.com', 'test1234', 100, '', NULL, 0),
('GoalAddict', 'goal@example.com', 'test1234', 100, '', NULL, 0),
('IssaNissa06', 'ogcnice@nice.fr', '$2y$10$HHYJ5x59RzcOs5unD/4lmeLZZKd3MvRQG24gvQC6nMNsgaSHZN8U6', 0, 'NULL', '0000-00-00 00:00:00', 0),
('JoueurPro', 'pro@example.com', 'test1234', 100, '', NULL, 0),
('LaVar', 'lavar@example.com', 'test1234', 100, '', NULL, 0),
('Leo06', 'leo06@example.com', 'test1234', 100, '', NULL, 0),
('Mbappinator', 'mbappe@example.com', 'test1234', 100, '', NULL, 0),
('OMSeulContreTous', 'omfan@example.com', 'test1234', 100, '', NULL, 0),
('ParisienVrai', 'psgfan@example.com', 'test1234', 100, '', NULL, 0),
('PenaltyKing', 'peno@example.com', 'test1234', 100, '', NULL, 0),
('PoteauRentrant', 'poteau@example.com', 'test1234', 100, '', NULL, 0),
('Reese', 'dode.reese@gmail.com', '$2y$10$sgkD2hn1zJoFDreyLcPp/eWx5KQYl0iRmU2r4DoBQy9t1Jm4/cHlO', 0, '18efaafefef1089e7f8a4d531923a76627f8613a34f6cee51f8a00d63f752914', '2025-06-13 12:38:19', 0),
('ReneLCoach', 'rene@example.com', 'test1234', 100, '', NULL, 0),
('root', 'root@lose1max.fr', '$2y$10$1kad0qBHzOD.kUqkco5VNe5MFVa19W8zTmLr60eANbBeMDan3sVfO', 0, 'NULL', '0000-00-00 00:00:00', 0),
('SambaFoot', 'samba@example.com', 'test1234', 100, '', NULL, 0),
('TacleurFou', 'tacle@example.com', 'test1234', 100, '', NULL, 0),
('TifoUltra', 'ultra@example.com', 'test1234', 100, '', NULL, 0),
('VARmaster', 'var@example.com', 'test1234', 100, '', NULL, 0),
('ZidaneFan', 'zizou@example.com', 'test1234', 100, '', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `votes`
--

CREATE TABLE `votes` (
  `username` varchar(50) NOT NULL,
  `match_id` int(11) NOT NULL,
  `vote` enum('1','N','2') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `votes`
--

INSERT INTO `votes` (`username`, `match_id`, `vote`) VALUES
('azerty', 16, '2'),
('azerty', 66, '2'),
('azerty', 75, '1'),
('azerty', 99, 'N'),
('azerty', 104, 'N'),
('azerty', 139, 'N'),
('azerty', 163, '1'),
('azerty', 200, '1'),
('azerty', 302, '1'),
('azerty', 519, 'N'),
('BarcaForever', 16, '1'),
('BarcaForever', 66, '1'),
('BarcaForever', 139, 'N'),
('BarcaForever', 163, '1'),
('BarcaForever', 519, '1'),
('Buteur97', 16, '2'),
('Buteur97', 66, '1'),
('Buteur97', 139, '1'),
('Buteur97', 163, '2'),
('Buteur97', 519, 'N'),
('CaptainTactique', 16, '1'),
('CaptainTactique', 66, '2'),
('CaptainTactique', 139, '2'),
('CaptainTactique', 163, 'N'),
('CaptainTactique', 519, 'N'),
('CrazyCoach', 16, 'N'),
('CrazyCoach', 66, 'N'),
('CrazyCoach', 139, '2'),
('CrazyCoach', 163, '1'),
('CrazyCoach', 519, '2'),
('FanFoot', 16, '1'),
('FanFoot', 66, '2'),
('FanFoot', 139, '1'),
('FanFoot', 163, '1'),
('FanFoot', 519, 'N'),
('GoalAddict', 16, '1'),
('GoalAddict', 66, 'N'),
('GoalAddict', 139, '2'),
('GoalAddict', 163, 'N'),
('GoalAddict', 519, '2'),
('IssaNissa06', 16, '1'),
('IssaNissa06', 66, '2'),
('IssaNissa06', 75, '2'),
('IssaNissa06', 99, 'N'),
('IssaNissa06', 104, 'N'),
('IssaNissa06', 139, '1'),
('IssaNissa06', 163, '1'),
('IssaNissa06', 200, '2'),
('IssaNissa06', 302, '1'),
('IssaNissa06', 519, '1'),
('JoueurPro', 16, '2'),
('JoueurPro', 66, '1'),
('JoueurPro', 139, 'N'),
('JoueurPro', 163, '1'),
('JoueurPro', 519, '1'),
('LaVar', 16, '2'),
('LaVar', 66, '2'),
('LaVar', 139, 'N'),
('LaVar', 163, '1'),
('LaVar', 519, '2'),
('Leo06', 16, '1'),
('Leo06', 66, '2'),
('Leo06', 139, '2'),
('Leo06', 163, 'N'),
('Leo06', 519, '1'),
('Mbappinator', 16, '2'),
('Mbappinator', 66, 'N'),
('Mbappinator', 139, 'N'),
('Mbappinator', 163, '2'),
('Mbappinator', 519, '1'),
('OMSeulContreTous', 16, 'N'),
('OMSeulContreTous', 66, '1'),
('OMSeulContreTous', 139, '2'),
('OMSeulContreTous', 163, 'N'),
('OMSeulContreTous', 519, '2'),
('ParisienVrai', 16, '1'),
('ParisienVrai', 66, '2'),
('ParisienVrai', 139, '1'),
('ParisienVrai', 163, '2'),
('ParisienVrai', 519, '1'),
('PenaltyKing', 16, '2'),
('PenaltyKing', 66, 'N'),
('PenaltyKing', 139, 'N'),
('PenaltyKing', 163, '2'),
('PenaltyKing', 519, '1'),
('PoteauRentrant', 16, '1'),
('PoteauRentrant', 66, 'N'),
('PoteauRentrant', 139, '2'),
('PoteauRentrant', 163, 'N'),
('PoteauRentrant', 519, '1'),
('Reese', 16, '1'),
('Reese', 66, '1'),
('Reese', 75, 'N'),
('Reese', 99, '1'),
('Reese', 104, '2'),
('Reese', 139, '1'),
('Reese', 163, '1'),
('Reese', 200, '1'),
('Reese', 302, '1'),
('Reese', 519, '1'),
('ReneLCoach', 16, '2'),
('ReneLCoach', 66, '1'),
('ReneLCoach', 139, '1'),
('ReneLCoach', 163, '2'),
('ReneLCoach', 519, 'N'),
('root', 16, '2'),
('root', 66, '1'),
('root', 75, 'N'),
('root', 99, '2'),
('root', 104, '2'),
('root', 139, 'N'),
('root', 163, '2'),
('root', 200, '1'),
('root', 302, '1'),
('root', 519, '1'),
('SambaFoot', 16, '2'),
('SambaFoot', 66, 'N'),
('SambaFoot', 139, '2'),
('SambaFoot', 163, '2'),
('SambaFoot', 519, '1'),
('TacleurFou', 16, '1'),
('TacleurFou', 66, '2'),
('TacleurFou', 139, '1'),
('TacleurFou', 163, '1'),
('TacleurFou', 519, 'N'),
('TifoUltra', 16, 'N'),
('TifoUltra', 66, '2'),
('TifoUltra', 139, '1'),
('TifoUltra', 163, '1'),
('TifoUltra', 519, '2'),
('VARmaster', 16, 'N'),
('VARmaster', 66, '1'),
('VARmaster', 139, '1'),
('VARmaster', 163, '1'),
('VARmaster', 519, '2'),
('ZidaneFan', 16, '2'),
('ZidaneFan', 66, '1'),
('ZidaneFan', 139, 'N'),
('ZidaneFan', 163, '2'),
('ZidaneFan', 519, '2');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id_article`),
  ADD KEY `id_journaliste` (`id_journaliste`);

--
-- Index pour la table `classement_champions_league`
--
ALTER TABLE `classement_champions_league`
  ADD PRIMARY KEY (`id_classement`),
  ADD KEY `id_equipe` (`id_equipe`);

--
-- Index pour la table `classement_ligue1`
--
ALTER TABLE `classement_ligue1`
  ADD PRIMARY KEY (`id_classement`),
  ADD KEY `id_equipe` (`id_equipe`);

--
-- Index pour la table `equipes`
--
ALTER TABLE `equipes`
  ADD PRIMARY KEY (`id_equipe`);

--
-- Index pour la table `journalistes`
--
ALTER TABLE `journalistes`
  ADD PRIMARY KEY (`id_journaliste`);

--
-- Index pour la table `matchs`
--
ALTER TABLE `matchs`
  ADD PRIMARY KEY (`match_id`),
  ADD KEY `EquipeDom` (`EquipeDom`),
  ADD KEY `EquipeExt` (`EquipeExt`);

--
-- Index pour la table `matchs-cl`
--
ALTER TABLE `matchs-cl`
  ADD PRIMARY KEY (`EquipeDom`,`EquipeExt`,`Date_match`),
  ADD KEY `EquipeDom` (`EquipeDom`,`EquipeExt`);

--
-- Index pour la table `matchs-l1`
--
ALTER TABLE `matchs-l1`
  ADD KEY `EquipeDom` (`EquipeDom`),
  ADD KEY `EquipeExt` (`EquipeExt`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `email` (`email`) USING HASH;

--
-- Index pour la table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`username`,`match_id`),
  ADD UNIQUE KEY `username` (`username`,`match_id`),
  ADD KEY `votes_ibfk_1` (`match_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id_article` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `classement_champions_league`
--
ALTER TABLE `classement_champions_league`
  MODIFY `id_classement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `classement_ligue1`
--
ALTER TABLE `classement_ligue1`
  MODIFY `id_classement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `equipes`
--
ALTER TABLE `equipes`
  MODIFY `id_equipe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT pour la table `journalistes`
--
ALTER TABLE `journalistes`
  MODIFY `id_journaliste` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `matchs`
--
ALTER TABLE `matchs`
  MODIFY `match_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=701;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`id_journaliste`) REFERENCES `journalistes` (`id_journaliste`);

--
-- Contraintes pour la table `classement_champions_league`
--
ALTER TABLE `classement_champions_league`
  ADD CONSTRAINT `classement_champions_league_ibfk_1` FOREIGN KEY (`id_equipe`) REFERENCES `equipes` (`id_equipe`);

--
-- Contraintes pour la table `classement_ligue1`
--
ALTER TABLE `classement_ligue1`
  ADD CONSTRAINT `classement_ligue1_ibfk_1` FOREIGN KEY (`id_equipe`) REFERENCES `equipes` (`id_equipe`);

--
-- Contraintes pour la table `matchs`
--
ALTER TABLE `matchs`
  ADD CONSTRAINT `matchs_ibfk_1` FOREIGN KEY (`EquipeDom`) REFERENCES `equipes` (`id_equipe`),
  ADD CONSTRAINT `matchs_ibfk_2` FOREIGN KEY (`EquipeExt`) REFERENCES `equipes` (`id_equipe`);

--
-- Contraintes pour la table `matchs-l1`
--
ALTER TABLE `matchs-l1`
  ADD CONSTRAINT `matchs-l1_ibfk_1` FOREIGN KEY (`EquipeDom`) REFERENCES `equipes` (`id_equipe`),
  ADD CONSTRAINT `matchs-l1_ibfk_2` FOREIGN KEY (`EquipeExt`) REFERENCES `equipes` (`id_equipe`);

--
-- Contraintes pour la table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_ibfk_1` FOREIGN KEY (`match_id`) REFERENCES `matchs` (`match_id`),
  ADD CONSTRAINT `votes_ibfk_2` FOREIGN KEY (`username`) REFERENCES `utilisateurs` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
