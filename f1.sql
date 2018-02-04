-- phpMyAdmin SQL Dump
-- version 4.2.7
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Mer 27 Avril 2016 à 10:40
-- Version du serveur :  5.5.41-log
-- Version de PHP :  7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `f1`
--

-- --------------------------------------------------------

--
-- Structure de la table `driver`
--

CREATE TABLE IF NOT EXISTS `driver` (
`id` int(10) unsigned NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `team` varchar(100) NOT NULL,
  `win` int(10) NOT NULL,
  `podium` int(10) NOT NULL,
  `worldchamp` int(10) NOT NULL,
  `imgTeam` varchar(100) NOT NULL,
  `imgNumCar` varchar(100) NOT NULL,
  `imgCountry` varchar(100) NOT NULL,
  `imgDriver` varchar(100) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `driver`
--

INSERT INTO `driver` (`id`, `firstname`, `lastname`, `team`, `win`, `podium`,`worldchamp`,`imgTeam`,`imgNumCar`,`imgCountry`, `imgDriver` ) VALUES
(1, 'Lewis', 'Hamilton','MERCEDES',62,117,4,'mercedes.png','44.png','uk.png','ham.jpg'),
(2, 'Sebastian','Vettel','FERRARI',47,99,4,'ferrari.png','5.jpg','all.png','vet.jpg'),
(3, 'Max', 'Verstappen','RED BULL RACING',3,11,0,'rbr.jpg','33.png','ned.png','ver.jpg'),
(4, 'Kimi', 'Räikkönen','FERRARI',20,91,1,'ferrari.png','7.jpg','fin.png','rai.jpg'),
(5, 'Valtteri','Bottas','MERCEDES',3,22,0,'mercedes.png','77.jpg','fin.png','bot.jpg'),
(6, 'Daniel','Ricciardo','RED BULL RACING',5,27,0,'rbr.jpg','3.jpg','aus.png','ric.jpg'),
(7, 'Esteban','Ocon','FORCE INDIA',0,0,0,'ind.png','31.jpg','fra.png','oco.jpg'),
(8, 'Sergio','Perez','FORCE INDIA',0,7,0,'ind.png','11.jpg','mex.png','per.jpg'),
(9, 'Lance','Stroll','WILLIAMS',0,1,0,'williams.jpg','18.png','can.png','str.jpg'),
(10, 'Nicolas','Hülkenberg','RENAULT',0,0,0,'renault.png','27.jpg','all.png','hul.jpg'),
(11, 'Carlos','Sainz','RENAULT',0,0,0,'renault.png','55.png','esp.png','sai.jpg'),
(12, 'Pierre','Gasly','TORO ROSSO',0,0,0,'tororosso.png','10.png','fra.png','gas.jpg'),
(13, 'Brendon','Hartley','TORO ROSSO',0,0,0,'tororosso.png','39.png','usa.png','har.jpg'),
(14, 'Romain','Grosjean','HAAS',0,10,0,'haas.png','8.jpg','fra.png','gro.jpg'),
(15, 'Kevin','Magnussen','HAAS',0,1,0,'haas.png','20.png','dan.png','mag.jpg'),
(16, 'Fernando','Alonso','MCLAREN',32,97,2,'mclaren.jpg','14.jpg','esp.png','alo.jpg'),
(17, 'Stoffel','Vandoorne','MCLAREN',0,0,0,'mclaren.jpg','2.jpg','bel.png','van.jpg'),
(18, 'Marcus','Ericsson','SAUBER',0,0,0,'sauber.png','9.png','sue.png','eri.jpg'),
(19, 'Charles','Leclerc','SAUBER',0,0,0,'sauber.png','16.png','mon.png','lec.jpg');





--
-- Index pour les tables exportées
--

--
-- Index pour la table `driver`
--
ALTER TABLE `driver`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `driver`
--
ALTER TABLE `driver`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
