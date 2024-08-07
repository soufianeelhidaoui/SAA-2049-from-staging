-- MySQL dump 10.13  Distrib 5.7.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: main
-- ------------------------------------------------------
-- Server version	5.5.5-10.2.44-MariaDB-10.2.44+maria~stretch-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mbiz_settings_setting`
--
CREATE DATABASE IF NOT EXISTS `cupra`;
USE `cupra`;

DROP TABLE IF EXISTS `mbiz_settings_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbiz_settings_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) DEFAULT NULL,
  `vendor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plugin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale_code` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` double DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json)',
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_404A67E772F5A1AA` (`channel_id`),
  CONSTRAINT `FK_404A67E772F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbiz_settings_setting`
--

LOCK TABLES `mbiz_settings_setting` WRITE;
/*!40000 ALTER TABLE `mbiz_settings_setting` DISABLE KEYS */;
INSERT INTO `mbiz_settings_setting` (`id`, `channel_id`, `vendor`, `plugin`, `path`, `locale_code`, `storage_type`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `created_at`, `updated_at`) VALUES (1,NULL,'app','theme','theme',NULL,'text','cupra',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-15 18:00:28','2023-03-13 21:25:53'),(2,NULL,'app','theme','brand',NULL,'text','cupra',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-15 18:00:28','2023-03-09 22:01:46'),(3,NULL,'app','theme','mentions',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-15 18:00:28','2022-03-15 18:00:28'),(4,1,'app','theme','theme',NULL,'text','cupra',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-15 18:00:28','2023-03-09 22:12:35'),(5,1,'app','theme','brand',NULL,'text','CUPRA',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-15 18:00:28','2023-03-09 22:01:46'),(6,1,'app','theme','mentions',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-15 18:00:28','2022-05-12 08:41:09'),(7,NULL,'app','theme','cover_height',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-04 11:06:50','2022-04-04 11:06:50'),(8,NULL,'app','theme','legals_title',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-04 11:06:50','2022-04-04 11:06:50'),(9,NULL,'app','theme','legals_text',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-04 11:06:50','2022-04-04 11:06:50'),(10,1,'app','theme','cover_height',NULL,'float',NULL,NULL,NULL,500,NULL,NULL,NULL,'2022-04-04 11:06:50','2022-04-04 11:06:50'),(11,1,'app','theme','legals_title',NULL,'text','CUPRA est une division de Volkswagen Group France, responsable de traitement des données que vous avez renseignées. Ces données personnelles font l\'objet d\'une transmission au partenaire sélectionné qui est nécessaire afin que vous puissiez recevoir votre commande.',NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-04 11:06:50','2023-05-31 08:23:53'),(12,1,'app','theme','legals_text',NULL,'text','Vos données sont conservées pendant une durée limitée qui ne saurait excéder la durée de conservation fixées par la réglementation. Conformément au Règlement n° 2016/679 dit Règlement général sur la protection des données (RGPD), vous disposez  d\'un droit d\'information et d\'accès, de rectification, de limitation et de portabilité des informations vous concernant. Vous pouvez exercer ces droits en écrivant au Délégué à la protection des données de Volkswagen Group France à l\'adresse email suivante : donneespersonnelles@volkswagengroup.fr, ou à l\'adresse postale suivante : Volkswagen Group France Relation Client, 11 avenue de Boursonne, 02600 Villers-Cotterêts, accompagné de tout titre permettant de justifier de votre identité. En cas de litige, vous disposez également du droit d\'introduire une réclamation auprès de l\'autorité administrative indépendante, la CNIL en France. Pour en savoir davantage sur la façon dont nous traitons vos données vous pouvez consulter la politique de confidentialité du site en lien dans le pied de page.',NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-04 11:06:50','2022-04-04 11:06:50'),(13,NULL,'app','tools','gmap_api',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-04 11:07:11','2022-04-04 11:07:11'),(14,1,'app','tools','gmap_api',NULL,'text','AIzaSyCk-Utd-HdvTQHiyuEWRnMaOSXAzcq2',NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-04 11:07:11','2022-07-12 12:10:59'),(15,NULL,'app','theme','default_family',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-15 16:24:25','2022-04-15 16:24:25'),(16,NULL,'app','theme','default_id',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-15 16:24:25','2022-04-15 16:24:25'),(17,NULL,'app','theme','social_twitter_link',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-15 16:24:25','2022-04-15 16:24:25'),(18,NULL,'app','theme','social_google_link',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-15 16:24:25','2022-04-15 16:24:25'),(19,NULL,'app','theme','social_instagram_link',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-15 16:24:25','2022-04-15 16:24:25'),(20,NULL,'app','theme','social_linkedin_link',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-15 16:24:25','2022-04-15 16:24:25'),(21,NULL,'app','theme','social_facebook_link',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-15 16:24:25','2022-04-15 16:24:25'),(22,1,'app','theme','default_family',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-15 16:24:25','2022-04-15 16:24:25'),(23,1,'app','theme','default_id',NULL,'text','501',NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-15 16:24:25','2022-04-15 16:24:25'),(24,1,'app','theme','social_twitter_link',NULL,'text','http://www.twitter.fr',NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-15 16:24:25','2022-04-15 16:24:25'),(25,1,'app','theme','social_google_link',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-15 16:24:25','2022-04-15 16:24:25'),(26,1,'app','theme','social_instagram_link',NULL,'text','http://www.instagram.fr',NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-15 16:24:25','2022-04-15 16:24:25'),(27,1,'app','theme','social_linkedin_link',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-15 16:24:25','2022-04-15 16:24:25'),(28,1,'app','theme','social_facebook_link',NULL,'text','http://www.facebook.fr',NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-15 16:24:25','2022-04-15 16:24:25'),(29,NULL,'app','theme','email_logo_width',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-29 10:04:54','2022-04-29 10:04:54'),(30,1,'app','theme','email_logo_width',NULL,'float',NULL,NULL,NULL,179,NULL,NULL,NULL,'2022-04-29 10:04:54','2022-04-29 10:06:01'),(31,NULL,'app','theme','short_brand',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-05-13 15:42:08','2022-05-13 15:42:08'),(32,NULL,'app','theme','official_logo',NULL,'boolean',NULL,0,NULL,NULL,NULL,NULL,NULL,'2022-05-13 15:42:08','2022-05-13 15:42:08'),(33,1,'app','theme','short_brand',NULL,'text','CUPRA',NULL,NULL,NULL,NULL,NULL,NULL,'2022-05-13 15:42:08','2023-03-09 22:01:46'),(34,1,'app','theme','official_logo',NULL,'boolean',NULL,1,NULL,NULL,NULL,NULL,NULL,'2022-05-13 15:42:08','2022-05-13 15:42:34'),(35,NULL,'app','tools','ga4',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-07-11 14:23:16','2022-07-11 14:23:16'),(36,NULL,'app','tools','ga',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-07-11 14:23:16','2022-07-11 14:23:16'),(37,NULL,'app','tools','gtm',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-07-11 14:23:16','2022-07-11 14:23:16'),(38,NULL,'app','tools','cookiebot',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-07-11 14:23:16','2022-07-11 14:23:16'),(39,NULL,'app','tools','bugherd',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-07-11 14:23:16','2022-07-11 14:23:16'),(40,NULL,'app','tools','hotjar',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-07-11 14:23:16','2022-07-11 14:23:16'),(41,NULL,'app','tools','datalayer',NULL,'boolean',NULL,0,NULL,NULL,NULL,NULL,NULL,'2022-07-11 14:23:16','2022-07-11 14:23:16'),(42,1,'app','tools','ga4',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-07-11 14:23:16','2022-07-11 14:23:16'),(43,1,'app','tools','ga',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-07-11 14:23:16','2022-07-11 14:23:16'),(44,1,'app','tools','gtm',NULL,'text','GTM-5NKVXQ',NULL,NULL,NULL,NULL,NULL,NULL,'2022-07-11 14:23:16','2022-10-12 14:54:50'),(45,1,'app','tools','cookiebot',NULL,'text','4f81a623-4e74-4cea-a26a-f0552a104184',NULL,NULL,NULL,NULL,NULL,NULL,'2022-07-11 14:23:16','2022-07-11 14:23:16'),(46,1,'app','tools','bugherd',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-07-11 14:23:16','2022-07-11 14:23:16'),(47,1,'app','tools','hotjar',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-07-11 14:23:16','2022-07-11 14:23:16'),(48,1,'app','tools','datalayer',NULL,'boolean',NULL,0,NULL,NULL,NULL,NULL,NULL,'2022-07-11 14:23:16','2022-07-11 14:23:16'),(49,NULL,'app','tools','external_scripts',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-03-14 13:28:36','2023-03-14 13:28:36'),(50,1,'app','tools','external_scripts',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-03-14 13:28:36','2023-03-14 13:28:36');
/*!40000 ALTER TABLE `mbiz_settings_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monsieurbiz_cms_page`
--

DROP TABLE IF EXISTS `monsieurbiz_cms_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monsieurbiz_cms_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monsieurbiz_cms_page`
--

LOCK TABLES `monsieurbiz_cms_page` WRITE;
/*!40000 ALTER TABLE `monsieurbiz_cms_page` DISABLE KEYS */;
INSERT INTO `monsieurbiz_cms_page` (`id`, `code`, `enabled`, `created_at`, `updated_at`) VALUES (1,'sample',0,'2022-03-07 17:35:07','2023-05-31 08:20:57'),(2,'cgu',0,'2022-04-14 16:32:37','2023-05-31 08:20:41'),(3,'condition-generales-utilisation',0,'2022-05-11 10:22:45','2023-05-31 08:20:30'),(5,'reinsurance',0,'2023-03-16 09:37:38','2023-03-17 10:58:33');
/*!40000 ALTER TABLE `monsieurbiz_cms_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monsieurbiz_cms_page_channels`
--

DROP TABLE IF EXISTS `monsieurbiz_cms_page_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monsieurbiz_cms_page_channels` (
  `page_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`page_id`,`channel_id`),
  KEY `IDX_C7095B0AC4663E4` (`page_id`),
  KEY `IDX_C7095B0A72F5A1AA` (`channel_id`),
  CONSTRAINT `FK_C7095B0A72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`),
  CONSTRAINT `FK_C7095B0AC4663E4` FOREIGN KEY (`page_id`) REFERENCES `monsieurbiz_cms_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monsieurbiz_cms_page_channels`
--

LOCK TABLES `monsieurbiz_cms_page_channels` WRITE;
/*!40000 ALTER TABLE `monsieurbiz_cms_page_channels` DISABLE KEYS */;
/*!40000 ALTER TABLE `monsieurbiz_cms_page_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monsieurbiz_cms_page_translation`
--

DROP TABLE IF EXISTS `monsieurbiz_cms_page_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monsieurbiz_cms_page_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `metaTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `metaKeywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `metaDescription` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `monsieurbiz_cms_page_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_2E2C3B072C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_2E2C3B072C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `monsieurbiz_cms_page` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monsieurbiz_cms_page_translation`
--

LOCK TABLES `monsieurbiz_cms_page_translation` WRITE;
/*!40000 ALTER TABLE `monsieurbiz_cms_page_translation` DISABLE KEYS */;
INSERT INTO `monsieurbiz_cms_page_translation` (`id`, `translatable_id`, `title`, `content`, `slug`, `metaTitle`, `metaKeywords`, `metaDescription`, `locale`) VALUES (1,1,'Accessoires d\'Origine','[{\"code\":\"sections.cover\",\"data\":{\"image\":\"/media/rich-editor/x_larg_error404_1_1920x660_crop_center-62987db292586.jpg\",\"alt\":null}},{\"code\":\"sections.section_wysiwyg\",\"data\":{\"title\":\"Votre SEAT ne mérite que le meilleur\",\"wysiwyg\":\"<b>Les Accessoires d’Origine SEAT sont développés pour s’adapter parfaitement à votre véhicule.&nbsp; </b>Il sont soumis à un cahier des charges strict pour vous garantir une sécurité optimale. Eléments de protection ou de personnalisation, solutions de chargement, équipements multimédia, quelques clics suffiront pour trouver votre bonheur dans la vaste gamme des accessoires SEAT.\"}},{\"code\":\"sections.section_text_image\",\"data\":{\"images\":[{\"image\":\"/media/rich-editor/seat_attelage_720x500_ce51400d032b4bc4ac3d30c9a7911b1e-62987e0d0ecbc.jpg\",\"alt\":null}],\"title\":\"Une gamme d\'accessoires pour répondre <b>à tous vos besoins</b>\",\"text\":\"<p>Besoin de personnaliser votre véhicule à votre image ou de l\'équiper d\'accessoires parfaitement adaptés à votre quotidien ? Découvrez l\'ensemble de notre gamme d\'accessoires qui rendront votre SEAT unique et vos voyages toujours plus agréables.</p><p>Que ce soit pour gagner de l\'espace pour transporter vos bagages, protéger votre véhicule contre les défis du quotidien ou rouler en toute sérénité lors de vos voyages en famille, Volkswagen met à votre disposition une gamme d\'accessoires complète pour les modèles Ibiza, Arona, Leon, Leon Sportstourer, Ateca, Tarraco.<br></p>\",\"cta_link\":null,\"cta_label\":null,\"mod\":\"image-left\"}},{\"code\":\"sections.section_text_image\",\"data\":{\"images\":[{\"image\":\"/media/rich-editor/seat_barres_720x500_8580256bd48349a4852ce1fd6209dbb7-62987e8d6f53a.jpg\",\"alt\":null}],\"title\":\"Les engagements SEAT <b>au service de vos exigences</b>\",\"text\":\"<p>Attelage, barre de toit, tapis de protection, coffres de toit, support de téléphone portable ou système de navigation… SEAT a mis tout son savoir-faire pour concevoir des accessoires certifiés pour votre véhicule et ainsi bénéficier de produits faciles à installer et à utiliser au quotidien.</p><p><b>Commander vos accessoires en ligne sur notre site, c\'est l\'assurance de bénéficier d\'un niveau de qualité et de sécurité optimal.</b></p>\",\"cta_link\":null,\"cta_label\":null,\"mod\":\"image-right\"}},{\"code\":\"sections.section_text_image\",\"data\":{\"images\":[{\"image\":\"/media/rich-editor/coffre_toit_371x250_e37954e3b9ef460f8d67e8fdf7923b32-62987ee5f326c.jpg\",\"alt\":null},{\"image\":\"/media/rich-editor/porte_velo_371x250_8871d61417424a1e842781e4e8ae8ba6-62987ee5f37f8.jpg\",\"alt\":null},{\"image\":\"/media/rich-editor/porte_ski_371x250_0826a870d5764749ba76d8d3e6d13db3-62987ee5f3e01.jpg\",\"alt\":null}],\"title\":\"Des accessoires conçus<br/><b>pour votre SEAT</b>\",\"text\":null,\"cta_link\":null,\"cta_label\":null,\"mod\":\"image-left\"}}]','accessoires-d-origine','Accessoires d\'Origine',NULL,'Votre SEAT ne mérite que le meilleur Les accessoires d’Origine SEAT sont développés pour s’adapter parfaitement à votre véhicule. Il sont soumis à un cahier des charges strict pour vous garantir une sécurité optimale. Eléments de protection ou de personnalisation, solutions de chargement, équipements multimédia, quelqu','fr_FR'),(2,2,'Condition Générales d\'Utilisation','[{\"code\":\"sections.section_wysiwyg\",\"data\":{\"title\":null,\"wysiwyg\":\"<div class=\\\"page-title-wrapper\\\">\\r\\n<h1><b>CONDITIONS GÉNÉRALES D’UTILISATION PLATEFORME DE PRÉSENTATION DES ACCESSOIRES SKODA</b></h1>\\r\\n<h1><br /><br /></h1>\\r\\n<p><i><span style=\\\"font-weight: 400;\\\">Dernière mise à jour le :</span></i> <b><i>17/05/2018</i></b></p>\\r\\n<p><b>PREAMBULE</b></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">Skoda France division de Volkswagen Group France, Société anonyme au capital de 198 502 510 euros, 11 avenue de Boursonne, 02600 Villers-Cotterêts Cedex France, immatriculée au RCS de Soissons sous le numéro 832 277 370 (ci-après « </span><a href=\\\"http://www.skoda.fr/informations/mentions-legales\\\"><b>Skoda France </b></a><span style=\\\"font-weight: 400;\\\">»), propose de multiples accessoires destinés aux véhicules qu’elle commercialise par l’intermédiaire son réseau de distribution agréé et fournit, via une plateforme dédiée et accessible en ligne par le réseau Internet à l’adresse suivante : http://accessoires.skoda.fr  (ci-après la «</span><b> Plateforme</b><span style=\\\"font-weight: 400;\\\"> »), la possibilité pour le Client de consulter l’ensemble des accessoires SKODA et d’être mis en relation avec un distributeur agréé Skoda France pour éventuellement acquérir un ou plusieurs accessoires présentés sur la Plateforme.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\"> </span></p>\\r\\n<ol>\\r\\n<li><b> ACCEPTATION DES CGU</b></li>\\r\\n</ol>\\r\\n<p><span style=\\\"font-weight: 400;\\\">Par l’utilisation de la Plateforme, l’Utilisateur reconnaît avoir pris connaissance des présentes CGU et les accepter sans réserve, ainsi que tous documents s’y référant tels que </span><a href=\\\"http://www.skoda.fr/informations/mentions-legales\\\"><span style=\\\"font-weight: 400;\\\">la politique de protection de la vie privée et des données personnelles</span></a><span style=\\\"font-weight: 400;\\\">  et </span><a href=\\\"http://www.skoda.fr/informations/cookies\\\"><span style=\\\"font-weight: 400;\\\">la politique d’utilisation des cookies.</span></a></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\"> </span></p>\\r\\n<ol start=\\\"2\\\">\\r\\n<li><b> DÉFINITIONS</b></li>\\r\\n</ol>\\r\\n<p><span style=\\\"font-weight: 400;\\\">Les termes définis ci-dessous commençant par des majuscules et utilisés au singulier ou au pluriel auront la signification suivante :</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">« </span><b>Données</b><span style=\\\"font-weight: 400;\\\"> » : désignent les informations concernant l’Utilisateur, y compris ses Données à caractère personnel, fournies directement ou indirectement par cet Utilisateur, lorsqu’il utilise la Plateforme. L’Utilisateur garantit à Skoda France fournir des informations exactes et à jour en particulier son adresse mail.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">« </span><b>Données à Caractère Personnel</b><span style=\\\"font-weight: 400;\\\"> » désignent au regard de l\'article 2 de la Loi Informatique et Libertés «</span><i><span style=\\\"font-weight: 400;\\\"> toute information relative à une personne physique identifiée ou qui peut être identifiée, directement ou indirectement, par référence à un numéro d\'identification ou à un ou plusieurs éléments qui lui sont propres</span></i><span style=\\\"font-weight: 400;\\\">» et l’article 4 du Règlement Européen sur la protection des données à caractère personnel « </span><i><span style=\\\"font-weight: 400;\\\">toute information se rapportant à une personne physique identifiée ou identifiable (ci-après dénommée «personne concernée»); est réputée être une «personne physique identifiable» une personne physique qui peut être identifiée, directement ou indirectement, notamment par référence à un identifiant, tel qu\'un nom, un numéro d\'identification, des données de localisation, un identifiant en ligne, ou à un ou plusieurs éléments spécifiques propres à son identité physique, physiologique, génétique, psychique, économique, culturelle ou sociale ». </span></i><span style=\\\"font-weight: 400;\\\">Sont notamment comprises dans les Données à Caractère personnel, les données relatives aux Utilisateurs de la Plateforme permettant leur identification</span><i><span style=\\\"font-weight: 400;\\\">.</span></i></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\"> « </span><b>Services</b><span style=\\\"font-weight: 400;\\\"> » : désignent l’ensemble des actions proposées par la Plateforme qui sont accessibles aux Utilisateurs. </span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">« </span><b>Utilisateur</b><span style=\\\"font-weight: 400;\\\"> » : désigne toute personne physique accédant à la Plateforme, pour son compte ou pour le compte d’une personne morale, qu’elle soit simple visiteur ou client.</span></p>\\r\\n<h1></h1>\\r\\n<ol start=\\\"3\\\">\\r\\n<li><b> OBJET</b></li>\\r\\n</ol>\\r\\n<p><span style=\\\"font-weight: 400;\\\"> Les présentes Conditions Générales d’Utilisation, ainsi que les documents auxquels elles font références, ont pour objet de définir les conditions, droits, obligations, responsabilités et limites applicables à toute utilisation de la Plateforme, par tout Utilisateur (ci-avant et ci-après les « </span><b>CGU</b><span style=\\\"font-weight: 400;\\\"> »). </span></p>\\r\\n<h1></h1>\\r\\n<ol start=\\\"4\\\">\\r\\n<li><b> DESCRIPTION DES SERVICES</b></li>\\r\\n</ol>\\r\\n<p><span style=\\\"font-weight: 400;\\\"> La Plateforme permet aux Utilisateurs de consulter en ligne l’ensemble des accessoires commercialisés par SKODA, d’en faire une sélection, que l’Utilisateur peut ensuite recevoir à l’adresse mail qu’il renseigne, et d’être mis en relation avec un distributeur agréé SKODA pour réaliser l’achat d’un ou plusieurs accessoires.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\"> </span></p>\\r\\n<ol start=\\\"5\\\">\\r\\n<li><b> DISPONIBILITÉ DE LA PLATEFORME</b></li>\\r\\n</ol>\\r\\n<p><span style=\\\"font-weight: 400;\\\"> </span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">L’Utilisateur reconnaît et accepte qu’en l’état actuel de la technique, Skoda France ne puisse pas garantir une disponibilité continue de la Plateforme ni des Services.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">Skoda France fera ses meilleurs efforts afin de rendre la Plateforme disponible de manière continue, sauf en cas d’opérations de maintenance, de mise à jour ou par suite d’évènements échappant à son contrôle pouvant créer des interruptions de services, en tout ou partie, des perturbations plus ou moins importantes. Dans de tels cas, Skoda France prendra les mesures raisonnables dont elle dispose pour traiter ces interruptions ou perturbations. </span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\"> </span></p>\\r\\n<ol start=\\\"6\\\">\\r\\n<li><b> COMPORTEMENT</b></li>\\r\\n</ol>\\r\\n<p><span style=\\\"font-weight: 400;\\\"> Chaque Utilisateur se doit d’utiliser la Plateforme de manière responsable, avec respect et courtoisie à l’égard des droits de Skoda France et de tout tiers.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">En accédant à la Plateforme, l’Utilisateur s’engage et garantit notamment :</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">-      </span> <span style=\\\"font-weight: 400;\\\">disposer des qualités et compétences requises pour utiliser la Plateforme ;</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">-      </span> <span style=\\\"font-weight: 400;\\\">avoir un comportement conforme à l’ensemble des dispositions des présentes CGU et à respecter ces CGU ;</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">-      </span> <span style=\\\"font-weight: 400;\\\">communiquer des données exactes, exhaustives et à jour ;</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">-      </span> <span style=\\\"font-weight: 400;\\\">respecter les droits de propriété intellectuelle de Skoda France et des éventuels tiers ;</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">-      </span> <span style=\\\"font-weight: 400;\\\">respecter toutes les lois en vigueur y compris celles du pays d’où il accède à la Plateforme ;</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">-      </span> <span style=\\\"font-weight: 400;\\\">à utiliser la Plateforme dans la limite de ses fonctionnalités et de sa destination.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">En outre, l’Utilisateur s’interdit, notamment :</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">-      </span> <span style=\\\"font-weight: 400;\\\">d’utiliser les fonctionnalités de la Plateforme à des fins non prévues dans les CGU ou contraire à la destination de la Plateforme et/ou qui porteraient atteinte aux droits de Skoda France, d’un de ses partenaires ou de tout tiers ;</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">-      </span> <span style=\\\"font-weight: 400;\\\">d’utiliser une fausse identité ou de tromper autrement qui que ce soit ;</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">-      </span> <span style=\\\"font-weight: 400;\\\">de communiquer à Skoda France des coordonnées et informations fausses, usurpées ou erronées ;</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">-      </span> <span style=\\\"font-weight: 400;\\\">de télécharger vers la Plateforme, afficher, rendre accessible ou transmettre par tout moyen et notamment par courrier électronique :</span></p>\\r\\n<ul>\\r\\n<li style=\\\"font-weight: 400;\\\"><span style=\\\"font-weight: 400;\\\">des contenus qu’il n’aurait pas le droit de télécharger,</span></li>\\r\\n<li style=\\\"font-weight: 400;\\\"><span style=\\\"font-weight: 400;\\\">un contenu illégal, préjudiciable, menaçant, injurieux, harcelant, délictuel, diffamatoire, vulgaire, obscène, contraire aux bonnes mœurs, portant atteinte à la vie privée d\'une personne, odieux ou désobligeant ou choquant d\'un point de vue notamment racial, ethnique ou autre,</span></li>\\r\\n<li style=\\\"font-weight: 400;\\\"><span style=\\\"font-weight: 400;\\\">tout élément contenant des virus logiciels ou autres codes, fichiers ou programmes informatiques conçus pour interrompre, détruire ou limiter la fonctionnalité de tout logiciel ou matériel informatique ou de tout équipement de télécommunication ;</span></li>\\r\\n</ul>\\r\\n<p><span style=\\\"font-weight: 400;\\\">-      </span> <span style=\\\"font-weight: 400;\\\">perturber ou interrompre le fonctionnement de la Plateforme ou des serveurs ou réseaux connectés à la Plateforme, ou enfreindre les exigences, procédures, règles ou réglementations ;</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">-      </span> <span style=\\\"font-weight: 400;\\\">accéder à des Données à caractère personnel qui ne lui sont pas destinées ou entrer dans un serveur ou une partie de la Plateforme auquel l’Utilisateur n’est pas autorisé à avoir accès ;</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">-      </span> <span style=\\\"font-weight: 400;\\\">tenter de sonder, de scruter ou de tester la vulnérabilité d\'un système et notamment de la Plateforme, ou encore d’enfreindre les mesures de sécurité ou d\'authentification sans en avoir reçu l’autorisation ;</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">-      </span> <span style=\\\"font-weight: 400;\\\">usurper ou tenter d’usurper l’identité d’un autre Utilisateur ou de tout tiers ;</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">-      </span> <span style=\\\"font-weight: 400;\\\">nuire à une personne physique ou morale par le biais de la Plateforme ;</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">-      </span> <span style=\\\"font-weight: 400;\\\">porter atteinte à la réputation de Skoda France, de la Plateforme, d’un ou plusieurs autres Utilisateurs ou de tout tiers.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">L’Utilisateur s’engage également à ne pas divulguer des informations personnelles, professionnelles ou confidentielles diffusées au travers de la Plateforme ou dont il aurait connaissance de par l’utilisation de la Plateforme ou provenant de tiers. A fortiori, l’Utilisateur s’abstient de tout traitement de Données à caractère personnel obtenues sur la Plateforme ou par son biais et notamment de toute collecte ou de toute utilisation non autorisée ou détournée et de tout acte susceptible de porter atteinte à la vie privée et aux Données à caractère personnel ou à la réputation d’un ou plusieurs autre(s) Utilisateur(s) ou toute autre personne physique ou morale.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">Les Utilisateurs sont invités à signaler à Skoda France toute utilisation frauduleuse de la Plateforme dont ils auraient connaissance et notamment tout contenu qui contreviendrait aux interdictions énoncées dans les CGU ou plus généralement aux lois et dispositions règlementaires en vigueur.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\"> </span></p>\\r\\n<ol start=\\\"7\\\">\\r\\n<li><b> DROITS DE PROPRIÉTÉ INTELLECTUELLE</b></li>\\r\\n</ol>\\r\\n<p><span style=\\\"font-weight: 400;\\\">La Plateforme, en ce compris l’ensemble des éléments qui la compose, notamment les graphismes, images, photographies, animations, clips, textes, logos, logiciels et interfaces (ci-après le « </span><b>Contenu</b><span style=\\\"font-weight: 400;\\\"> ») sont protégés par des droits de propriété intellectuelle et propriété exclusive de Skoda France, à l’exception des marques, logos, images, photos et signes distinctifs appartenant à des sociétés tierces ou à des tiers.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">Toutes utilisations, y compris toute reproduction, distribution, modification, retransmission ou publication du Contenu sont strictement interdites sans accord préalable écrit de Skoda France.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">Il est en particulier interdit de (i) copier, modifier, créer une œuvre dérivée, assembler, décompiler (à l\'exception des cas prévus par la loi), vendre, attribuer, sous-licencier ou transférer de quelque manière que ce soit tout droit afférant au Contenu et de (ii) modifier tout ou partie du Contenu en vue notamment d\'obtenir un accès non autorisé à la Plateforme.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">En conséquence, toute reproduction et/ou représentation, totale ou partielle, du Contenu, sans l’autorisation préalable et écrite de Skoda France, sont interdites et constitueraient une contrefaçon sanctionnée notamment par les dispositions du Code de la propriété intellectuelle.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">Skoda France, ou tout autre titulaire de ces droits, pourra mettre en œuvre toute mesure ou action, y compris judiciaire, pour faire cesser une atteinte à ses droits, en particulier de propriété intellectuelle et se réserve le droit de demander des dommages et intérêts en cas d’une telle atteinte.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\"> </span></p>\\r\\n<ol start=\\\"8\\\">\\r\\n<li><b> COOKIES</b></li>\\r\\n</ol>\\r\\n<p><span style=\\\"font-weight: 400;\\\">Les cookies sont des données stockées dans l’équipement terminal d’un internaute et utilisées par la Plateforme pour envoyer des informations au navigateur de l’internaute, permettant à ce navigateur de renvoyer des informations au site d’origine.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">Skoda France utilise des cookies ; </span><a href=\\\"http://www.skoda.fr/informations/cookies\\\"><span style=\\\"font-weight: 400;\\\">la politique d’utilisation des cookies</span></a><span style=\\\"font-weight: 400;\\\"> informe les internautes sur cette utilisation.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">L’Utilisateur dispose d’un droit d’accès, de rectification et d\'opposition sur ses Données à caractère personnel communiquées par le biais des cookies.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">Le paramétrage du logiciel de navigation permet d’informer de la présence de cookies et de la refuser.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">Cependant, certaines fonctionnalités de la Plateforme ne pourront plus être utilisées si l’Utilisateur refuse cette installation des cookies.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\"> </span></p>\\r\\n<ol start=\\\"9\\\">\\r\\n<li><b> LIENS HYPERTEXTES</b></li>\\r\\n</ol>\\r\\n<p><span style=\\\"font-weight: 400;\\\">Toute création de liens vers la Plateforme, tout encadrement (framing) de la Plateforme et plus généralement toute utilisation d\'un élément composant la Plateforme sont soumis à l\'autorisation préalable et écrite de Skoda France, qui pourra être révoquée à tout moment à sa seule discrétion.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">Skoda France n’est aucunement responsable du contenu des sites vers lesquels les liens hypertextes redirigent l’Utilisateur.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\"> </span></p>\\r\\n<ol start=\\\"10\\\">\\r\\n<li><b> PROTECTION DE VOS DONNEES A CARACTERE PERSONNEL</b></li>\\r\\n</ol>\\r\\n<p><span style=\\\"font-weight: 400;\\\">Skoda France collecte des Données à caractère personnel des Utilisateurs, principalement l’adresse mail.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">Skoda France s’engage à faire tous ses efforts pour que les Données des Utilisateurs, et en particulier les Données à caractère personnel, restent confidentielles. Skoda France s’autorise à les communiquer uniquement à ses partenaires et sous-traitants dans le respect de la règlementation applicable. Skoda France leur demande à ce titre de conserver confidentielles ces Données.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">Pour plus d’informations concernant la protection de ses Données à caractère personnel, l’Utilisateur est invité à consulter </span><a href=\\\"http://www.skoda.fr/informations/mentions-legales\\\"><span style=\\\"font-weight: 400;\\\">la politique de protection de la vie privée et des données personnelles</span></a><span style=\\\"font-weight: 400;\\\"> qui fait partie intégrante des présentes CGU.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\"> </span></p>\\r\\n<ol start=\\\"11\\\">\\r\\n<li><b> RESPONSABILITÉ</b></li>\\r\\n</ol>\\r\\n<p><span style=\\\"font-weight: 400;\\\">L’Utilisateur reconnaît utiliser la Plateforme sous sa seule responsabilité. Il appartient notamment à l’Utilisateur de se prémunir contre les dangers de l’Internet et de prendre toutes les mesures nécessaires afin de protéger ses propres données (en ce y compris ses Données à caractère personnel) et/ou logiciels de la contamination par d\'éventuels virus qui </span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">pourraient affecter son ordinateur ou tout autre matériel informatique qu’il utilise ou qui est sous sa garde.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">L’Utilisateur est seul responsable des moyens d’accès à Internet et à la Plateforme.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">A l’exclusion des Données, Skoda France essaye de s’assurer au mieux de l’exactitude des informations accessibles sur la Plateforme, mais ne garantit pas que les informations fournies par tout tiers soient exactes, complètes ou à jour.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">En outre, Skoda France décline toute responsabilité en cas d\'interruption de la Plateforme, de survenance de dysfonctionnement ou de tout dommage résultant d’acte frauduleux de tiers ou d’Utilisateur(s).</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">Par ailleurs, en aucun cas Skoda France ne peut être tenue pour responsable d\'un quelconque dommage, quelles qu\'en soient la cause, origine, nature et conséquence, découlant notamment de l’utilisation non conforme des présentes CGU par l’Utilisateur et de la consultation ou de l\'utilisation de la Plateforme par un tiers.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">LA RESPONSABILITE DE SKODA FRANCE NE POURRA ETRE ENGAGEE POUR UNE CAUSE DONT LE FAIT GENERATEUR A POUR ORIGINE UN CAS DE FORCE MAJEURE, Y COMPRIS SI UN TEL CAS DE FORCE MAJEURE TOUCHE UN DE SES SOUS TRAITANTS, AINSI QUE TOUT EVENEMENT HORS DE SON CONTROLE EXCLUSIF.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">De plus, Skoda France informe l’Utilisateur qu’il se réserve le droit, à tout moment et pour quelque raison que ce soit, de mettre en œuvre tout moyen permettant de suspendre ou supprimer, et ce, sans préavis, l’accès à tout ou partie de la Plateforme et, notamment, pour toute conduite, constatée ou présumée, comme étant en violation de tout ou partie des CGU (en ce y compris la politique de protection de la vie privée et des données personnelles) explicitement ou implicitement, sans préjudice de tout dommage et intérêt que Skoda France se réserve le droit de réclamer à l’Utilisateur en réparation du préjudice subi.</span></p>\\r\\n<h1></h1>\\r\\n<ol start=\\\"12\\\">\\r\\n<li><b> MODIFICATION DES CGU</b></li>\\r\\n</ol>\\r\\n<p><span style=\\\"font-weight: 400;\\\">Les CGU sont susceptibles de faire l’objet de mises à jour de la part de Skoda France. Les CGU précédentes sont alors résiliées de plein droit et remplacées par la nouvelle version qui est immédiatement opposable à l’Utilisateur et mentionnant la date de la dernière mise à jour indiquée en haut des présentes CGU. Pour être informé de ces éventuelles modifications et mises à jour, il est recommandé à l’Utilisateur de consulter les CGU régulièrement.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\"> </span></p>\\r\\n<ol start=\\\"13\\\">\\r\\n<li><b> SURVIVANCE</b></li>\\r\\n</ol>\\r\\n<p><span style=\\\"font-weight: 400;\\\">Les stipulations des CGU qui par leur nature ou leur rédaction ont vocation à continuer à s’appliquer après la cessation de l’utilisation de la Plateforme pour quelque cause que ce soit, ainsi que les stipulations des articles 11 « Responsabilité », 10 « Protection de vos données à caractère personnel » et 7 « Droits propriété intellectuelle » resteront en vigueur pour la durée nécessaire à l’exécution de leur objet.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\"> </span></p>\\r\\n<ol start=\\\"14\\\">\\r\\n<li><b> NULLITÉ – TITRE</b></li>\\r\\n</ol>\\r\\n<p><span style=\\\"font-weight: 400;\\\">Si une ou plusieurs stipulations des CGU sont tenues pour non valides ou déclarées telles en application d\'une loi, d\'un règlement ou à la suite d\'une décision définitive d\'une juridiction compétente, les autres stipulations garderont toute leur force et portée.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">En cas de difficultés d’interprétation entre l’un quelconque des titres figurant en tête des clauses et l’une quelconque des clauses, les titres seront écartés et le contenu de la clause concernée prévaudra.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\"> </span></p>\\r\\n<ol start=\\\"15\\\">\\r\\n<li><b> DROIT APPLICABLE - ATTRIBUTION DE COMPETENCE</b></li>\\r\\n</ol>\\r\\n<p><span style=\\\"font-weight: 400;\\\">Les présentes CGU et les documents auxquels elles font référence sont régis par le droit français. En cas de litige, l’Utilisateur s’engage à contacter en priorité Skoda France afin de tenter de résoudre à l’amiable tout différend susceptible d’intervenir concernant les CGU.</span></p>\\r\\n<p><span style=\\\"font-weight: 400;\\\">A DÉFAUT D’UN ACCORD AMIABLE DANS UN DÉLAI DE 30 JOURS SUIVANT LA LETTRE INITIANT UNE TELLE DÉMARCHE DE RÈGLEMENT AMIABLE, TOUT LITIGE RELATIF A L\'EXISTENCE, L\'INTERPRETATION, L\'EXECUTION OU LA RUPTURE DES CGU, MEME EN CAS DE PLURALITE DE DEFENDEURS, SERA SOUMIS (SAUF COMPÉTENCE EXCLUSIVE RECONNUE À UNE JURIDICTION DIFFÉRENTE, NOTAMMENT LE TRIBUNAL DE GRANDE INSTANCE DE ParIS EN MATIÈRE DE DROIT DE LA PROPRIÉTÉ INTELLECTUELLE) : (i) EN CAS DE LITIGE AVEC UN COMMERÇANT, AU TRIBUNAL DE COMMERCE DE PARIS ; (ii) EN CAS DE LITIGE AVEC UN NON COMMERÇANT, AU TRIBUNAL FRANÇAIS TERRITORIALEMENT COMPÉTENT.</span></p>\\r\\n<h1><br /><br /></h1>\\r\\n</div>\\r\\n<div class=\\\"columns\\\">\\r\\n<div class=\\\"column main\\\">\\r\\n<div></div>\\r\\n</div>\\r\\n</div>\"}}]','condition-generales-d-utilisation','Condition Générales d\'Utilisation',NULL,NULL,'fr_FR'),(3,3,'Condition Générales d\'Utilisation','[{\"code\":\"sections.section_wysiwyg\",\"data\":{\"title\":null,\"wysiwyg\":\"<h2><b>CONDITIONS GÉNÉRALES D’UTILISATION PLATEFORME DE PRÉSENTATION DES ACCESSOIRES SKODA</b></h2><p>Dernière mise à jour le : <b>17/05/2018</b></p><h3>PREAMBULE</h3><p>Skoda France division de Volkswagen Group France, Société anonyme au capital de 198 502 510 euros, 11 avenue de Boursonne, 02600 Villers-Cotterêts Cedex France, immatriculée au RCS de Soissons sous le numéro 832 277 370 (ci-après « <a href=\\\"https://www.skoda.fr/informations/mentions-legales\\\">Skoda France</a> »), propose de multiples accessoires destinés aux véhicules qu’elle commercialise par l’intermédiaire son réseau de distribution agréé et fournit, via une plateforme dédiée et accessible en ligne par le réseau Internet à l’adresse suivante : http://accessoires.skoda.fr  (ci-après la « <b>Plateforme</b> »), la possibilité pour le Client de consulter l’ensemble des accessoires SKODA et d’être mis en relation avec un distributeur agréé Skoda France pour éventuellement acquérir un ou plusieurs accessoires présentés sur la Plateforme.</p><p><br></p><h3>1. ACCEPTATION DES CGU</h3><p>Par l’utilisation de la Plateforme, l’Utilisateur reconnaît avoir pris connaissance des présentes CGU et les accepter sans réserve, ainsi que tous documents s’y référant tels que la politique de protection de la vie privée et des données personnelles  et la politique d’utilisation des cookies.</p><p><br></p><h3>2. DÉFINITIONS</h3><p>Les termes définis ci-dessous commençant par des majuscules et utilisés au singulier ou au pluriel auront la signification suivante :</p><p><b>« Données » </b>: désignent les informations concernant l’Utilisateur, y compris ses Données à caractère personnel, fournies directement ou indirectement par cet Utilisateur, lorsqu’il utilise la Plateforme. L’Utilisateur garantit à Skoda France fournir des informations exactes et à jour en particulier son adresse mail.</p><p><b>« Données à Caractère Personnel »</b> désignent au regard de l\'article 2 de la Loi Informatique et Libertés « toute information relative à une personne physique identifiée ou qui peut être identifiée, directement ou indirectement, par référence à un numéro d\'identification ou à un ou plusieurs éléments qui lui sont propres» et l’article 4 du Règlement Européen sur la protection des données à caractère personnel « toute information se rapportant à une personne physique identifiée ou identifiable (ci-après dénommée «personne concernée»); est réputée être une «personne physique identifiable» une personne physique qui peut être identifiée, directement ou indirectement, notamment par référence à un identifiant, tel qu\'un nom, un numéro d\'identification, des données de localisation, un identifiant en ligne, ou à un ou plusieurs éléments spécifiques propres à son identité physique, physiologique, génétique, psychique, économique, culturelle ou sociale ». Sont notamment comprises dans les Données à Caractère personnel, les données relatives aux Utilisateurs de la Plateforme permettant leur identification.</p><p><b>&nbsp;« Services »</b> : désignent l’ensemble des actions proposées par la Plateforme qui sont accessibles aux Utilisateurs.&nbsp;</p><p><b>« Utilisateur » </b>: désigne toute personne physique accédant à la Plateforme, pour son compte ou pour le compte d’une personne morale, qu’elle soit simple visiteur ou client.</p><p><br></p><h3>3. OBJET</h3><p>&nbsp;Les présentes Conditions Générales d’Utilisation, ainsi que les documents auxquels elles font références, ont pour objet de définir les conditions, droits, obligations, responsabilités et limites applicables à toute utilisation de la Plateforme, par tout Utilisateur (ci-avant et ci-après les « <b>CGU</b> »).&nbsp;</p><p><br></p><h3>4. DESCRIPTION DES SERVICES</h3><p>&nbsp;La Plateforme permet aux Utilisateurs de consulter en ligne l’ensemble des accessoires commercialisés par SKODA, d’en faire une sélection, que l’Utilisateur peut ensuite recevoir à l’adresse mail qu’il renseigne, et d’être mis en relation avec un distributeur agréé SKODA pour réaliser l’achat d’un ou plusieurs accessoires.</p><p><br></p><h3>5. DISPONIBILITÉ DE LA PLATEFORME</h3><p>L’Utilisateur reconnaît et accepte qu’en l’état actuel de la technique, Skoda France ne puisse pas garantir une disponibilité continue de la Plateforme ni des Services.</p><p>Skoda France fera ses meilleurs efforts afin de rendre la Plateforme disponible de manière continue, sauf en cas d’opérations de maintenance, de mise à jour ou par suite d’évènements échappant à son contrôle pouvant créer des interruptions de services, en tout ou partie, des perturbations plus ou moins importantes. Dans de tels cas, Skoda France prendra les mesures raisonnables dont elle dispose pour traiter ces interruptions ou perturbations.&nbsp;</p><p><br></p><h3>6. COMPORTEMENT</h3><p>&nbsp;Chaque Utilisateur se doit d’utiliser la Plateforme de manière responsable, avec respect et courtoisie à l’égard des droits de Skoda France et de tout tiers.</p><p>En accédant à la Plateforme, l’Utilisateur s’engage et garantit notamment :</p><p>-      disposer des qualités et compétences requises pour utiliser la Plateforme ;</p><p>-      avoir un comportement conforme à l’ensemble des dispositions des présentes CGU et à respecter ces CGU ;</p><p>-      communiquer des données exactes, exhaustives et à jour ;</p><p>-      respecter les droits de propriété intellectuelle de Skoda France et des éventuels tiers ;</p><p>-      respecter toutes les lois en vigueur y compris celles du pays d’où il accède à la Plateforme ;</p><p>-      à utiliser la Plateforme dans la limite de ses fonctionnalités et de sa destination.</p><p><br></p><p>En outre, l’Utilisateur s’interdit, notamment :</p><p>-      d’utiliser les fonctionnalités de la Plateforme à des fins non prévues dans les CGU ou contraire à la destination de la Plateforme et/ou qui porteraient atteinte aux droits de Skoda France, d’un de ses partenaires ou de tout tiers ;</p><p>-      d’utiliser une fausse identité ou de tromper autrement qui que ce soit ;</p><p>-      de communiquer à Skoda France des coordonnées et informations fausses, usurpées ou erronées ;</p><p>-      de télécharger vers la Plateforme, afficher, rendre accessible ou transmettre par tout moyen et notamment par courrier électronique :</p><p><ul><li>des contenus qu’il n’aurait pas le droit de télécharger,</li><li>un contenu illégal, préjudiciable, menaçant, injurieux, harcelant, délictuel, diffamatoire, vulgaire, obscène, contraire aux bonnes mœurs, portant atteinte à la vie privée d\'une personne, odieux ou désobligeant ou choquant d\'un point de vue notamment racial, ethnique ou autre,</li><li>tout élément contenant des virus logiciels ou autres codes, fichiers ou programmes informatiques conçus pour interrompre, détruire ou limiter la fonctionnalité de tout logiciel ou matériel informatique ou de tout équipement de télécommunication ;</li></ul></p><p>-      perturber ou interrompre le fonctionnement de la Plateforme ou des serveurs ou réseaux connectés à la Plateforme, ou enfreindre les exigences, procédures, règles ou réglementations ;</p><p>-      accéder à des Données à caractère personnel qui ne lui sont pas destinées ou entrer dans un serveur ou une partie de la Plateforme auquel l’Utilisateur n’est pas autorisé à avoir accès ;</p><p>-      tenter de sonder, de scruter ou de tester la vulnérabilité d\'un système et notamment de la Plateforme, ou encore d’enfreindre les mesures de sécurité ou d\'authentification sans en avoir reçu l’autorisation ;</p><p>-      usurper ou tenter d’usurper l’identité d’un autre Utilisateur ou de tout tiers ;</p><p>-      nuire à une personne physique ou morale par le biais de la Plateforme ;</p><p>-      porter atteinte à la réputation de Skoda France, de la Plateforme, d’un ou plusieurs autres Utilisateurs ou de tout tiers.</p><p>L’Utilisateur s’engage également à ne pas divulguer des informations personnelles, professionnelles ou confidentielles diffusées au travers de la Plateforme ou dont il aurait connaissance de par l’utilisation de la Plateforme ou provenant de tiers. A fortiori, l’Utilisateur s’abstient de tout traitement de Données à caractère personnel obtenues sur la Plateforme ou par son biais et notamment de toute collecte ou de toute utilisation non autorisée ou détournée et de tout acte susceptible de porter atteinte à la vie privée et aux Données à caractère personnel ou à la réputation d’un ou plusieurs autre(s) Utilisateur(s) ou toute autre personne physique ou morale.</p><p>Les Utilisateurs sont invités à signaler à Skoda France toute utilisation frauduleuse de la Plateforme dont ils auraient connaissance et notamment tout contenu qui contreviendrait aux interdictions énoncées dans les CGU ou plus généralement aux lois et dispositions règlementaires en vigueur.</p><p><br></p><h3>7. DROITS DE PROPRIÉTÉ INTELLECTUELLE</h3><p>La Plateforme, en ce compris l’ensemble des éléments qui la compose, notamment les graphismes, images, photographies, animations, clips, textes, logos, logiciels et interfaces (ci-après le « <b>Contenu</b> ») sont protégés par des droits de propriété intellectuelle et propriété exclusive de Skoda France, à l’exception des marques, logos, images, photos et signes distinctifs appartenant à des sociétés tierces ou à des tiers.</p><p>Toutes utilisations, y compris toute reproduction, distribution, modification, retransmission ou publication du Contenu sont strictement interdites sans accord préalable écrit de Skoda France.</p><p>Il est en particulier interdit de (i) copier, modifier, créer une œuvre dérivée, assembler, décompiler (à l\'exception des cas prévus par la loi), vendre, attribuer, sous-licencier ou transférer de quelque manière que ce soit tout droit afférant au Contenu et de (ii) modifier tout ou partie du Contenu en vue notamment d\'obtenir un accès non autorisé à la Plateforme.</p><p>En conséquence, toute reproduction et/ou représentation, totale ou partielle, du Contenu, sans l’autorisation préalable et écrite de Skoda France, sont interdites et constitueraient une contrefaçon sanctionnée notamment par les dispositions du Code de la propriété intellectuelle.</p><p>Skoda France, ou tout autre titulaire de ces droits, pourra mettre en œuvre toute mesure ou action, y compris judiciaire, pour faire cesser une atteinte à ses droits, en particulier de propriété intellectuelle et se réserve le droit de demander des dommages et intérêts en cas d’une telle atteinte.</p><h3><b>8. COOKIES</b></h3><p>Les cookies sont des données stockées dans l’équipement terminal d’un internaute et utilisées par la Plateforme pour envoyer des informations au navigateur de l’internaute, permettant à ce navigateur de renvoyer des informations au site d’origine.</p><p>Skoda France utilise des cookies ; <a href=\\\"https://www.skoda.fr/informations/cookies\\\">la politique d’utilisation des cookies</a> informe les internautes sur cette utilisation.</p><p>L’Utilisateur dispose d’un droit d’accès, de rectification et d\'opposition sur ses Données à caractère personnel communiquées par le biais des cookies.</p><p>Le paramétrage du logiciel de navigation permet d’informer de la présence de cookies et de la refuser.</p><p>Cependant, certaines fonctionnalités de la Plateforme ne pourront plus être utilisées si l’Utilisateur refuse cette installation des cookies.</p><p><br></p><h3>9. LIENS HYPERTEXTES</h3><p>Toute création de liens vers la Plateforme, tout encadrement (framing) de la Plateforme et plus généralement toute utilisation d\'un élément composant la Plateforme sont soumis à l\'autorisation préalable et écrite de Skoda France, qui pourra être révoquée à tout moment à sa seule discrétion.</p><p>Skoda France n’est aucunement responsable du contenu des sites vers lesquels les liens hypertextes redirigent l’Utilisateur.&nbsp;</p><p><br></p><h3>10. PROTECTION DE VOS DONNEES A CARACTERE PERSONNEL</h3><p>Skoda France collecte des Données à caractère personnel des Utilisateurs, principalement l’adresse mail.</p><p>Skoda France s’engage à faire tous ses efforts pour que les Données des Utilisateurs, et en particulier les Données à caractère personnel, restent confidentielles. Skoda France s’autorise à les communiquer uniquement à ses partenaires et sous-traitants dans le respect de la règlementation applicable. Skoda France leur demande à ce titre de conserver confidentielles ces Données.</p><p>Pour plus d’informations concernant la protection de ses Données à caractère personnel, l’Utilisateur est invité à consulter la politique de protection de la vie privée et des données personnelles qui fait partie intégrante des présentes CGU.</p><p><br></p><h3>11.RESPONSABILITÉ</h3><p>L’Utilisateur reconnaît utiliser la Plateforme sous sa seule responsabilité. Il appartient notamment à l’Utilisateur de se prémunir contre les dangers de l’Internet et de prendre toutes les mesures nécessaires afin de protéger ses propres données (en ce y compris ses Données à caractère personnel) et/ou logiciels de la contamination par d\'éventuels virus qui pourraient affecter son ordinateur ou tout autre matériel informatique qu’il utilise ou qui est sous sa garde.</p><p>L’Utilisateur est seul responsable des moyens d’accès à Internet et à la Plateforme.</p><p>A l’exclusion des Données, Skoda France essaye de s’assurer au mieux de l’exactitude des informations accessibles sur la Plateforme, mais ne garantit pas que les informations fournies par tout tiers soient exactes, complètes ou à jour.</p><p>En outre, Skoda France décline toute responsabilité en cas d\'interruption de la Plateforme, de survenance de dysfonctionnement ou de tout dommage résultant d’acte frauduleux de tiers ou d’Utilisateur(s).</p><p>Par ailleurs, en aucun cas Skoda France ne peut être tenue pour responsable d\'un quelconque dommage, quelles qu\'en soient la cause, origine, nature et conséquence, découlant notamment de l’utilisation non conforme des présentes CGU par l’Utilisateur et de la consultation ou de l\'utilisation de la Plateforme par un tiers.</p><p>LA RESPONSABILITE DE SKODA FRANCE NE POURRA ETRE ENGAGEE POUR UNE CAUSE DONT LE FAIT GENERATEUR A POUR ORIGINE UN CAS DE FORCE MAJEURE, Y COMPRIS SI UN TEL CAS DE FORCE MAJEURE TOUCHE UN DE SES SOUS TRAITANTS, AINSI QUE TOUT EVENEMENT HORS DE SON CONTROLE EXCLUSIF.</p><p>De plus, Skoda France informe l’Utilisateur qu’il se réserve le droit, à tout moment et pour quelque raison que ce soit, de mettre en œuvre tout moyen permettant de suspendre ou supprimer, et ce, sans préavis, l’accès à tout ou partie de la Plateforme et, notamment, pour toute conduite, constatée ou présumée, comme étant en violation de tout ou partie des CGU (en ce y compris la politique de protection de la vie privée et des données personnelles) explicitement ou implicitement, sans préjudice de tout dommage et intérêt que Skoda France se réserve le droit de réclamer à l’Utilisateur en réparation du préjudice subi.</p><p><br></p><h3>12. MODIFICATION DES CGU</h3><p>Les CGU sont susceptibles de faire l’objet de mises à jour de la part de Skoda France. Les CGU précédentes sont alors résiliées de plein droit et remplacées par la nouvelle version qui est immédiatement opposable à l’Utilisateur et mentionnant la date de la dernière mise à jour indiquée en haut des présentes CGU. Pour être informé de ces éventuelles modifications et mises à jour, il est recommandé à l’Utilisateur de consulter les CGU régulièrement.</p><h3><br></h3><h3>13. SURVIVANCE</h3><p>Les stipulations des CGU qui par leur nature ou leur rédaction ont vocation à continuer à s’appliquer après la cessation de l’utilisation de la Plateforme pour quelque cause que ce soit, ainsi que les stipulations des articles 11 « Responsabilité », 10 « Protection de vos données à caractère personnel » et 7 « Droits propriété intellectuelle » resteront en vigueur pour la durée nécessaire à l’exécution de leur objet.</p><p><br></p><h3>14. NULLITÉ – TITRE</h3><p>Si une ou plusieurs stipulations des CGU sont tenues pour non valides ou déclarées telles en application d\'une loi, d\'un règlement ou à la suite d\'une décision définitive d\'une juridiction compétente, les autres stipulations garderont toute leur force et portée.</p><p>En cas de difficultés d’interprétation entre l’un quelconque des titres figurant en tête des clauses et l’une quelconque des clauses, les titres seront écartés et le contenu de la clause concernée prévaudra.</p><p><br></p><h3>15. DROIT APPLICABLE - ATTRIBUTION DE COMPETENCE</h3><p>Les présentes CGU et les documents auxquels elles font référence sont régis par le droit français. En cas de litige, l’Utilisateur s’engage à contacter en priorité Skoda France afin de tenter de résoudre à l’amiable tout différend susceptible d’intervenir concernant les CGU.</p><p>A DÉFAUT D’UN ACCORD AMIABLE DANS UN DÉLAI DE 30 JOURS SUIVANT LA LETTRE INITIANT UNE TELLE DÉMARCHE DE RÈGLEMENT AMIABLE, TOUT LITIGE RELATIF A L\'EXISTENCE, L\'INTERPRETATION, L\'EXECUTION OU LA RUPTURE DES CGU, MEME EN CAS DE PLURALITE DE DEFENDEURS, SERA SOUMIS (SAUF COMPÉTENCE EXCLUSIVE RECONNUE À UNE JURIDICTION DIFFÉRENTE, NOTAMMENT LE TRIBUNAL DE GRANDE INSTANCE DE ParIS EN MATIÈRE DE DROIT DE LA PROPRIÉTÉ INTELLECTUELLE) : (i) EN CAS DE LITIGE AVEC UN COMMERÇANT, AU TRIBUNAL DE COMMERCE DE PARIS ; (ii) EN CAS DE LITIGE AVEC UN NON COMMERÇANT, AU TRIBUNAL FRANÇAIS TERRITORIALEMENT COMPÉTENT.</p><p><br></p><p><br></p><p><br></p>\"}}]','cgu','Condition Générales d\'Utilisation',NULL,NULL,'fr_FR'),(5,5,'reinsurance','[{\"code\":\"sections.reinsurance\",\"data\":{\"blocks\":[{\"icon\":\"configurator-private\",\"title\":\"test\"},{\"icon\":\"configurator-private\",\"title\":\"yersd\"}],\"title\":\"test\"}}]','reinsurance',NULL,NULL,NULL,'fr_FR');
/*!40000 ALTER TABLE `monsieurbiz_cms_page_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monsieurbiz_homepage_homepage`
--

DROP TABLE IF EXISTS `monsieurbiz_homepage_homepage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monsieurbiz_homepage_homepage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monsieurbiz_homepage_homepage`
--

LOCK TABLES `monsieurbiz_homepage_homepage` WRITE;
/*!40000 ALTER TABLE `monsieurbiz_homepage_homepage` DISABLE KEYS */;
INSERT INTO `monsieurbiz_homepage_homepage` (`id`, `created_at`, `updated_at`) VALUES (1,'2022-03-07 12:20:28','2023-05-31 08:28:41');
/*!40000 ALTER TABLE `monsieurbiz_homepage_homepage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monsieurbiz_homepage_homepage_channels`
--

DROP TABLE IF EXISTS `monsieurbiz_homepage_homepage_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monsieurbiz_homepage_homepage_channels` (
  `page_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`page_id`,`channel_id`),
  UNIQUE KEY `UNIQ_1BF0DD4E72F5A1AA` (`channel_id`),
  KEY `IDX_1BF0DD4EC4663E4` (`page_id`),
  CONSTRAINT `FK_1BF0DD4E72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`),
  CONSTRAINT `FK_1BF0DD4EC4663E4` FOREIGN KEY (`page_id`) REFERENCES `monsieurbiz_homepage_homepage` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monsieurbiz_homepage_homepage_channels`
--

LOCK TABLES `monsieurbiz_homepage_homepage_channels` WRITE;
/*!40000 ALTER TABLE `monsieurbiz_homepage_homepage_channels` DISABLE KEYS */;
INSERT INTO `monsieurbiz_homepage_homepage_channels` (`page_id`, `channel_id`) VALUES (1,1);
/*!40000 ALTER TABLE `monsieurbiz_homepage_homepage_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monsieurbiz_homepage_homepage_translation`
--

DROP TABLE IF EXISTS `monsieurbiz_homepage_homepage_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monsieurbiz_homepage_homepage_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaKeywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaDescription` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `monsieurbiz_homepage_homepage_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_F0076BB22C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_F0076BB22C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `monsieurbiz_homepage_homepage` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monsieurbiz_homepage_homepage_translation`
--

LOCK TABLES `monsieurbiz_homepage_homepage_translation` WRITE;
/*!40000 ALTER TABLE `monsieurbiz_homepage_homepage_translation` DISABLE KEYS */;
INSERT INTO `monsieurbiz_homepage_homepage_translation` (`id`, `translatable_id`, `name`, `content`, `metaTitle`, `metaKeywords`, `metaDescription`, `locale`) VALUES (1,1,'Homepage','[{\"code\":\"sections.hero\",\"data\":{\"blocks\":[{\"image\":\"/media/rich-editor/banner_cupra_vehicle_homepage-641042afde8e2.jpg\",\"alt\":null,\"title\":\"Découvrez les accessoires d\'Origine CUPRA\",\"text\":null,\"cta_link\":\"https://accessoires.seat.fr/collections/ibiza\",\"cta_label\":\"DÉCOUVRIR\"}]}},{\"code\":\"sections.reinsurance\",\"data\":{\"blocks\":[{\"icon\":\"configurator-private\",\"title\":\"<b>Sélectionnez</b> le modèle de votre véhicule\"},{\"icon\":\"we-deliver\",\"title\":\"<b>Faites votre choix</b> parmi le catalogue d’accessoires Officiels <b>CUPRA</b>\"},{\"icon\":\"local-business\",\"title\":\"<b>Contactez</b> votre partenaire <b>CUPRA</b> de votre choix\"},{\"icon\":\"shopping-cart\",\"title\":\"<b>Retirez</b> vos achats chez votre partenaire <b>CUPRA</b>\"}],\"title\":\"Découvrez les accessoires d\'Origine CUPRA\"}},{\"code\":\"sections.section_vehicles_list\",\"data\":{\"title\":\"Sélectionnez votre véhicule\"}},{\"code\":\"sections.section_pushes\",\"data\":{\"blocks\":[{\"image\":\"/media/rich-editor/banner_cupra_vehicle_formentor2-64257f7ee2d10.jpg\",\"alt\":null,\"title\":\"Accessoires CUPRA Formentor\",\"text\":null,\"url\":\"https://staging-5em2ouy-z6qc55u35jfgo.eu-5.platformsh.site/collections/formentor-2020-2023\",\"label\":\"Voir tous les accessoires\",\"cta_style\":\"button\"},{\"image\":\"/media/rich-editor/banner_cupra_vehicle_born2-64257f7ee3906.jpg\",\"alt\":null,\"title\":\"Accessoires CUPRA Born\",\"text\":null,\"url\":\"https://staging-5em2ouy-z6qc55u35jfgo.eu-5.platformsh.site/collections/born?\",\"label\":\"Voir tous les accessoires\",\"cta_style\":\"link\"},{\"image\":\"/media/rich-editor/banner_cupra_categorie_electromobilite1-64257f7ee4338.jpg\",\"alt\":null,\"title\":\"L\'électromobilité selon CUPRA\",\"text\":null,\"url\":\"https://staging-5em2ouy-z6qc55u35jfgo.eu-5.platformsh.site/collections/electromobilite\",\"label\":\"Voir tous les accessoires\",\"cta_style\":\"link\"}]}},{\"code\":\"sections.push_products\",\"data\":{\"title\":\"Les promotions du moment\",\"collection\":\"accessories\",\"count\":\"10\"}},{\"code\":\"sections.section_push_blog\",\"data\":{\"blocks\":[{\"image\":\"/media/rich-editor/banner_cupra_categorie_design-6411d4ac84f03.jpg\",\"alt\":null,\"title\":\"Plus de style !\",\"text\":\"Les accessoires hiver pour tous types de situations\",\"url\":null,\"label\":\"Découvrir\",\"cta_style\":\"button\"},{\"image\":\"/media/rich-editor/1_51_420x294_crop_center-6295e4dba6115.jpg\",\"alt\":null,\"title\":\"En toute liberté\",\"text\":\"Des accessoires pour toujours plus de possiblités\",\"url\":null,\"label\":\"Découvrir\",\"cta_style\":\"button\"}]}}]','Boutique Accessoires  Cupra : Pièces et accessoires',NULL,'Vente en ligne des pièces et accessoires Cupra d\'origine. Retrouvez les accessoires Cupra pour tous les modèles. Livraison rapide et paiement sécurisé.','fr_FR');
/*!40000 ALTER TABLE `monsieurbiz_homepage_homepage_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monsieurbiz_menu`
--

DROP TABLE IF EXISTS `monsieurbiz_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monsieurbiz_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_system` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monsieurbiz_menu`
--

LOCK TABLES `monsieurbiz_menu` WRITE;
/*!40000 ALTER TABLE `monsieurbiz_menu` DISABLE KEYS */;
INSERT INTO `monsieurbiz_menu` (`id`, `created_at`, `updated_at`, `code`, `is_system`) VALUES (1,'2022-03-04 15:11:16','2022-03-07 12:23:15','footer',1),(3,'2022-04-04 07:37:19','2022-04-04 07:37:19','sidebar',1),(4,'2022-06-02 09:21:48','2022-06-03 08:40:46','sub_footer',0);
/*!40000 ALTER TABLE `monsieurbiz_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monsieurbiz_menu_item`
--

DROP TABLE IF EXISTS `monsieurbiz_menu_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monsieurbiz_menu_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D472D900CCD7E912` (`menu_id`),
  KEY `IDX_D472D900727ACA70` (`parent_id`),
  CONSTRAINT `FK_D472D900727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `monsieurbiz_menu_item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_D472D900CCD7E912` FOREIGN KEY (`menu_id`) REFERENCES `monsieurbiz_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monsieurbiz_menu_item`
--

LOCK TABLES `monsieurbiz_menu_item` WRITE;
/*!40000 ALTER TABLE `monsieurbiz_menu_item` DISABLE KEYS */;
INSERT INTO `monsieurbiz_menu_item` (`id`, `menu_id`, `parent_id`, `created_at`, `updated_at`, `position`) VALUES (13,3,NULL,'2022-04-04 07:37:40','2023-10-01 13:07:05',1),(24,4,NULL,'2022-06-02 09:23:08','2023-10-01 13:07:05',4),(25,4,NULL,'2022-06-02 09:25:13','2023-10-01 13:07:05',2),(26,4,NULL,'2022-06-02 09:25:35','2023-10-01 13:07:05',3),(27,4,NULL,'2023-03-17 16:16:41','2023-10-01 13:07:05',1),(28,4,NULL,'2023-03-17 16:17:55','2023-10-01 13:07:05',5),(29,4,NULL,'2023-05-23 08:52:48','2023-10-01 13:07:05',6);
/*!40000 ALTER TABLE `monsieurbiz_menu_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monsieurbiz_menu_item_translation`
--

DROP TABLE IF EXISTS `monsieurbiz_menu_item_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monsieurbiz_menu_item_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `monsieurbiz_menu_item_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_2591643F2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_2591643F2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `monsieurbiz_menu_item` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monsieurbiz_menu_item_translation`
--

LOCK TABLES `monsieurbiz_menu_item_translation` WRITE;
/*!40000 ALTER TABLE `monsieurbiz_menu_item_translation` DISABLE KEYS */;
INSERT INTO `monsieurbiz_menu_item_translation` (`id`, `translatable_id`, `url`, `label`, `locale`) VALUES (13,13,'https://www.cupraofficial.fr/','cupraofficial.fr','fr_FR'),(24,24,'https://www.cupraofficial.fr/politique-confidentialite?_gl=1*12rffhx*_up*MQ..&gclid=CjwKCAiA9qKbBhAzEiwAS4yeDRrYDD0FFo17JJoSDV9ie0T2NW0K7By1oYQnGT4vXms_7YmTn1eFFxoCoAAQAvD_BwE&gclsrc=aw.ds','Politique de confidentialité','fr_FR'),(25,25,'https://www.cupraofficial.fr/mentions-legales?_gl=1*qs3rxy*_up*MQ..&gclid=CjwKCAiA9qKbBhAzEiwAS4yeDRrYDD0FFo17JJoSDV9ie0T2NW0K7By1oYQnGT4vXms_7YmTn1eFFxoCoAAQAvD_BwE&gclsrc=aw.ds','Mention Légales','fr_FR'),(26,26,'https://www.cupraofficial.fr/informations-sur-les-cookies?_gl=1*qs3rxy*_up*MQ..&gclid=CjwKCAiA9qKbBhAzEiwAS4yeDRrYDD0FFo17JJoSDV9ie0T2NW0K7By1oYQnGT4vXms_7YmTn1eFFxoCoAAQAvD_BwE&gclsrc=aw.ds','Politique de cookies','fr_FR'),(27,27,'https://www.cupraofficial.fr/contact?_gl=1*13r54w8*_up*MQ..&gclid=CjwKCAiA9qKbBhAzEiwAS4yeDRrYDD0FFo17JJoSDV9ie0T2NW0K7By1oYQnGT4vXms_7YmTn1eFFxoCoAAQAvD_BwE&gclsrc=aw.ds','Contactez-nous','fr_FR'),(28,28,'https://www.cupraofficial.fr/CGU?_gl=1*12rffhx*_up*MQ..&gclid=CjwKCAiA9qKbBhAzEiwAS4yeDRrYDD0FFo17JJoSDV9ie0T2NW0K7By1oYQnGT4vXms_7YmTn1eFFxoCoAAQAvD_BwE&gclsrc=aw.ds','CGU','fr_FR'),(29,29,'https://www.cupraofficial.fr/newsletter','Restez informé','fr_FR');
/*!40000 ALTER TABLE `monsieurbiz_menu_item_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_address`
--

DROP TABLE IF EXISTS `sylius_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `province_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B97FF0589395C3F3` (`customer_id`),
  CONSTRAINT `FK_B97FF0589395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_address`
--

LOCK TABLES `sylius_address` WRITE;
/*!40000 ALTER TABLE `sylius_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_address_log_entries`
--

DROP TABLE IF EXISTS `sylius_address_log_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_address_log_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logged_at` datetime NOT NULL,
  `object_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_address_log_entries`
--

LOCK TABLES `sylius_address_log_entries` WRITE;
/*!40000 ALTER TABLE `sylius_address_log_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_address_log_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_adjustment`
--

DROP TABLE IF EXISTS `sylius_adjustment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_adjustment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `order_item_id` int(11) DEFAULT NULL,
  `order_item_unit_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `is_neutral` tinyint(1) NOT NULL,
  `is_locked` tinyint(1) NOT NULL,
  `origin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  PRIMARY KEY (`id`),
  KEY `IDX_ACA6E0F28D9F6D38` (`order_id`),
  KEY `IDX_ACA6E0F2E415FB15` (`order_item_id`),
  KEY `IDX_ACA6E0F2F720C233` (`order_item_unit_id`),
  KEY `IDX_ACA6E0F27BE036FC` (`shipment_id`),
  CONSTRAINT `FK_ACA6E0F27BE036FC` FOREIGN KEY (`shipment_id`) REFERENCES `sylius_shipment` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ACA6E0F28D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ACA6E0F2E415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ACA6E0F2F720C233` FOREIGN KEY (`order_item_unit_id`) REFERENCES `sylius_order_item_unit` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_adjustment`
--

LOCK TABLES `sylius_adjustment` WRITE;
/*!40000 ALTER TABLE `sylius_adjustment` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_adjustment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_admin_user`
--

DROP TABLE IF EXISTS `sylius_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `encoder_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_admin_user`
--

LOCK TABLES `sylius_admin_user` WRITE;
/*!40000 ALTER TABLE `sylius_admin_user` DISABLE KEYS */;
INSERT INTO `sylius_admin_user` (`id`, `username`, `username_canonical`, `enabled`, `salt`, `password`, `last_login`, `password_reset_token`, `password_requested_at`, `email_verification_token`, `verified_at`, `locked`, `expires_at`, `credentials_expire_at`, `roles`, `email`, `email_canonical`, `created_at`, `updated_at`, `first_name`, `last_name`, `locale_code`, `encoder_name`) VALUES (1,'alaska','alaska',1,'lxf9l7268moo4gckwk8wg0kogcgc040','$argon2i$v=19$m=65536,t=4,p=1$bkwvOTAuU1JhY1REazFGVQ$u5V2pdREuHUgUiZKVOZPlW9IYQXGPxWUS1uXuA2B6FA','2023-09-28 15:34:39',NULL,NULL,NULL,NULL,0,NULL,NULL,'a:2:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";i:1;s:15:\"ROLE_API_ACCESS\";}','jerome@alaska.fr','jerome@alaska.fr','2022-03-04 12:59:51','2023-09-28 15:34:39',NULL,NULL,'fr_FR','argon2i'),(2,'oyez','oyez',1,'6fhi9pw3cigw8840sc0sss88wkc808o','$argon2i$v=19$m=65536,t=4,p=1$Ry5YSUVjVUpRdnVZaXIzcg$QNnFyyCcMDCNOVUUJSs1rmTTLUKEfWM2zZUP2Pj/EnE','2023-05-02 13:47:27',NULL,NULL,NULL,NULL,0,NULL,NULL,'a:2:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";i:1;s:15:\"ROLE_API_ACCESS\";}','jerome+oyez@alaska.fr','jerome+oyez@alaska.fr','2022-03-07 17:27:54','2023-05-02 13:47:27',NULL,NULL,'fr_FR','argon2i'),(3,'Eliott','eliott',1,'chu0q3mcgso4kk0ss08gwkwgcs4wsgg','$argon2i$v=19$m=65536,t=4,p=1$RWtsTDJMdW5qOVQ1WWtnOA$Jp9h/NexBib0a2Oi0JG0c9xQalqvkl6o0wdG2uS0aV4','2023-06-02 12:09:46',NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}','eliott.devanssay@oyez.fr','eliott.devanssay@oyez.fr','2022-05-11 10:29:37','2023-06-02 12:09:46','Eliott','de Vanssay','fr_FR','argon2i'),(4,'tanguy','tanguy',1,'ejcyo1sfq6o8oowo84w8w8gog40gkkw','$argon2i$v=19$m=65536,t=4,p=1$VWpNc0lWeXAudVlFMGUybQ$CFuw6tkPVbkBQi+Tv3v9Po052uPo8fgl15Y7R7iyOC0',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}','technique@alaska.fr','technique@alaska.fr','2023-03-14 10:59:17','2023-03-14 10:59:17','Tanguy',NULL,'fr_FR','argon2i'),(5,'yassine','yassine',1,'cctc7oyslg080os0cgwwscooos00ckk','$argon2i$v=19$m=65536,t=4,p=1$ZXpmSmhIZDI5YkN2cTUuUA$60GlX+uYM/yfW3UrWB1nV7p8xJf27UjhfMEIh5TuGSA','2023-10-19 08:21:43',NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}','yassine.hajouji@inventiv-it.fr','yassine.hajouji@inventiv-it.fr','2023-09-28 15:35:06','2023-10-19 08:21:43','Yassine','Hajouji','fr_FR','argon2i');
/*!40000 ALTER TABLE `sylius_admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_avatar_image`
--

DROP TABLE IF EXISTS `sylius_avatar_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_avatar_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1068A3A97E3C61F9` (`owner_id`),
  CONSTRAINT `FK_1068A3A97E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_admin_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_avatar_image`
--

LOCK TABLES `sylius_avatar_image` WRITE;
/*!40000 ALTER TABLE `sylius_avatar_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_avatar_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel`
--

DROP TABLE IF EXISTS `sylius_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `default_locale_id` int(11) NOT NULL,
  `base_currency_id` int(11) NOT NULL,
  `default_tax_zone_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `hostname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `theme_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_calculation_strategy` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skipping_shipping_step_allowed` tinyint(1) NOT NULL,
  `account_verification_required` tinyint(1) NOT NULL,
  `skipping_payment_step_allowed` tinyint(1) NOT NULL,
  `shop_billing_data_id` int(11) DEFAULT NULL,
  `menu_taxon_id` int(11) DEFAULT NULL,
  `contact_phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_16C8119E77153098` (`code`),
  UNIQUE KEY `UNIQ_16C8119EB5282EDF` (`shop_billing_data_id`),
  KEY `IDX_16C8119E743BF776` (`default_locale_id`),
  KEY `IDX_16C8119E3101778E` (`base_currency_id`),
  KEY `IDX_16C8119EA978C17` (`default_tax_zone_id`),
  KEY `IDX_16C8119EE551C011` (`hostname`),
  KEY `IDX_16C8119EF242B1E6` (`menu_taxon_id`),
  CONSTRAINT `FK_16C8119E3101778E` FOREIGN KEY (`base_currency_id`) REFERENCES `sylius_currency` (`id`),
  CONSTRAINT `FK_16C8119E743BF776` FOREIGN KEY (`default_locale_id`) REFERENCES `sylius_locale` (`id`),
  CONSTRAINT `FK_16C8119EA978C17` FOREIGN KEY (`default_tax_zone_id`) REFERENCES `sylius_zone` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_16C8119EB5282EDF` FOREIGN KEY (`shop_billing_data_id`) REFERENCES `sylius_shop_billing_data` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_16C8119EF242B1E6` FOREIGN KEY (`menu_taxon_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel`
--

LOCK TABLES `sylius_channel` WRITE;
/*!40000 ALTER TABLE `sylius_channel` DISABLE KEYS */;
INSERT INTO `sylius_channel` (`id`, `default_locale_id`, `base_currency_id`, `default_tax_zone_id`, `code`, `name`, `color`, `description`, `enabled`, `hostname`, `created_at`, `updated_at`, `theme_name`, `tax_calculation_strategy`, `contact_email`, `skipping_shipping_step_allowed`, `account_verification_required`, `skipping_payment_step_allowed`, `shop_billing_data_id`, `menu_taxon_id`, `contact_phone_number`) VALUES (1,1,1,NULL,'default','Website','#000000',NULL,1,NULL,'2022-03-04 12:59:51','2022-03-04 15:19:13',NULL,'order_items_based',NULL,0,1,0,1,NULL,NULL);
/*!40000 ALTER TABLE `sylius_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_countries`
--

DROP TABLE IF EXISTS `sylius_channel_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel_countries` (
  `channel_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`country_id`),
  KEY `IDX_D96E51AE72F5A1AA` (`channel_id`),
  KEY `IDX_D96E51AEF92F3E70` (`country_id`),
  CONSTRAINT `FK_D96E51AE72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_D96E51AEF92F3E70` FOREIGN KEY (`country_id`) REFERENCES `sylius_country` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_countries`
--

LOCK TABLES `sylius_channel_countries` WRITE;
/*!40000 ALTER TABLE `sylius_channel_countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_channel_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_currencies`
--

DROP TABLE IF EXISTS `sylius_channel_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel_currencies` (
  `channel_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`currency_id`),
  KEY `IDX_AE491F9372F5A1AA` (`channel_id`),
  KEY `IDX_AE491F9338248176` (`currency_id`),
  CONSTRAINT `FK_AE491F9338248176` FOREIGN KEY (`currency_id`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AE491F9372F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_currencies`
--

LOCK TABLES `sylius_channel_currencies` WRITE;
/*!40000 ALTER TABLE `sylius_channel_currencies` DISABLE KEYS */;
INSERT INTO `sylius_channel_currencies` (`channel_id`, `currency_id`) VALUES (1,1);
/*!40000 ALTER TABLE `sylius_channel_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_locales`
--

DROP TABLE IF EXISTS `sylius_channel_locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel_locales` (
  `channel_id` int(11) NOT NULL,
  `locale_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`locale_id`),
  KEY `IDX_786B7A8472F5A1AA` (`channel_id`),
  KEY `IDX_786B7A84E559DFD1` (`locale_id`),
  CONSTRAINT `FK_786B7A8472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_786B7A84E559DFD1` FOREIGN KEY (`locale_id`) REFERENCES `sylius_locale` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_locales`
--

LOCK TABLES `sylius_channel_locales` WRITE;
/*!40000 ALTER TABLE `sylius_channel_locales` DISABLE KEYS */;
INSERT INTO `sylius_channel_locales` (`channel_id`, `locale_id`) VALUES (1,1);
/*!40000 ALTER TABLE `sylius_channel_locales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_pricing`
--

DROP TABLE IF EXISTS `sylius_channel_pricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel_pricing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_variant_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `channel_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `original_price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_variant_channel_idx` (`product_variant_id`,`channel_code`),
  KEY `IDX_7801820CA80EF684` (`product_variant_id`),
  CONSTRAINT `FK_7801820CA80EF684` FOREIGN KEY (`product_variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2210 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_pricing`
--

LOCK TABLES `sylius_channel_pricing` WRITE;
/*!40000 ALTER TABLE `sylius_channel_pricing` DISABLE KEYS */;
INSERT INTO `sylius_channel_pricing` (`id`, `product_variant_id`, `price`, `channel_code`, `original_price`) VALUES (2140,2091,10800,'default',10800),(2141,2092,7000,'default',7000),(2142,2093,7500,'default',7500),(2143,2094,16500,'default',16500),(2144,2095,17500,'default',17500),(2145,2096,25500,'default',25500),(2146,2097,2500,'default',2500),(2147,2098,11000,'default',11000),(2148,2099,5500,'default',5500),(2149,2100,40000,'default',40000),(2150,2101,29000,'default',29000),(2151,2102,3600,'default',3600),(2152,2103,2500,'default',2500),(2153,2104,4500,'default',4500),(2154,2105,11800,'default',11800),(2155,2106,78000,'default',78000),(2156,2107,36000,'default',36000),(2157,2108,16000,'default',16000),(2158,2109,2500,'default',2500),(2159,2110,15000,'default',15000),(2160,2111,3700,'default',3700),(2161,2112,2400,'default',2400),(2162,2113,1500,'default',1500),(2163,2114,5500,'default',5500),(2164,2115,5500,'default',5500),(2165,2116,11500,'default',11500),(2166,2117,11500,'default',11500),(2167,2118,11500,'default',11500),(2168,2119,6500,'default',6500),(2169,2120,29000,'default',29000),(2170,2121,27000,'default',27000),(2171,2122,76000,'default',76000),(2172,2123,4800,'default',4800),(2173,2124,12500,'default',12500),(2174,2125,12000,'default',12000),(2175,2126,58000,'default',58000),(2176,2127,55000,'default',55000),(2177,2128,55000,'default',55000),(2178,2129,55000,'default',55000),(2179,2130,11000,'default',11000),(2180,2131,11000,'default',11000),(2181,2132,24000,'default',24000),(2182,2133,8800,'default',8800),(2183,2134,6000,'default',6000),(2184,2135,29000,'default',29000),(2185,2136,64000,'default',64000),(2186,2137,64000,'default',64000),(2187,2138,4800,'default',4800),(2188,2139,50000,'default',50000),(2189,2140,52000,'default',52000),(2190,2141,50000,'default',50000),(2191,2142,32000,'default',32000),(2192,2143,8500,'default',8500),(2193,2144,10000,'default',10000),(2194,2145,29000,'default',29000),(2195,2146,11000,'default',11000),(2196,2147,6500,'default',6500),(2197,2148,6500,'default',6500),(2198,2149,52000,'default',52000),(2199,2150,51000,'default',51000),(2200,2151,45000,'default',45000),(2201,2152,52000,'default',52000),(2202,2153,8500,'default',8500),(2203,2154,10500,'default',10500),(2204,2155,10500,'default',10500),(2205,2156,10500,'default',10500),(2206,2157,10500,'default',10500),(2207,2158,29000,'default',29000),(2208,2159,29000,'default',29000),(2209,2160,29000,'default',29000);
/*!40000 ALTER TABLE `sylius_channel_pricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_country`
--

DROP TABLE IF EXISTS `sylius_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E74256BF77153098` (`code`),
  KEY `IDX_E74256BF77153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_country`
--

LOCK TABLES `sylius_country` WRITE;
/*!40000 ALTER TABLE `sylius_country` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_currency`
--

DROP TABLE IF EXISTS `sylius_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_96EDD3D077153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_currency`
--

LOCK TABLES `sylius_currency` WRITE;
/*!40000 ALTER TABLE `sylius_currency` DISABLE KEYS */;
INSERT INTO `sylius_currency` (`id`, `code`, `created_at`, `updated_at`) VALUES (1,'EUR','2022-03-04 12:59:47','2022-03-04 12:59:47');
/*!40000 ALTER TABLE `sylius_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_customer`
--

DROP TABLE IF EXISTS `sylius_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) DEFAULT NULL,
  `default_address_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'u',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscribed_to_newsletter` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7E82D5E6E7927C74` (`email`),
  UNIQUE KEY `UNIQ_7E82D5E6A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_7E82D5E6BD94FB16` (`default_address_id`),
  KEY `IDX_7E82D5E6D2919A68` (`customer_group_id`),
  CONSTRAINT `FK_7E82D5E6BD94FB16` FOREIGN KEY (`default_address_id`) REFERENCES `sylius_address` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_7E82D5E6D2919A68` FOREIGN KEY (`customer_group_id`) REFERENCES `sylius_customer_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_customer`
--

LOCK TABLES `sylius_customer` WRITE;
/*!40000 ALTER TABLE `sylius_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_customer_group`
--

DROP TABLE IF EXISTS `sylius_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_customer_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7FCF9B0577153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_customer_group`
--

LOCK TABLES `sylius_customer_group` WRITE;
/*!40000 ALTER TABLE `sylius_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_exchange_rate`
--

DROP TABLE IF EXISTS `sylius_exchange_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_exchange_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_currency` int(11) NOT NULL,
  `target_currency` int(11) NOT NULL,
  `ratio` decimal(10,5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5F52B852A76BEEDB3FD5856` (`source_currency`,`target_currency`),
  KEY `IDX_5F52B852A76BEED` (`source_currency`),
  KEY `IDX_5F52B85B3FD5856` (`target_currency`),
  CONSTRAINT `FK_5F52B852A76BEED` FOREIGN KEY (`source_currency`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_5F52B85B3FD5856` FOREIGN KEY (`target_currency`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_exchange_rate`
--

LOCK TABLES `sylius_exchange_rate` WRITE;
/*!40000 ALTER TABLE `sylius_exchange_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_exchange_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_gateway_config`
--

DROP TABLE IF EXISTS `sylius_gateway_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_gateway_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `factory_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_gateway_config`
--

LOCK TABLES `sylius_gateway_config` WRITE;
/*!40000 ALTER TABLE `sylius_gateway_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_gateway_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_locale`
--

DROP TABLE IF EXISTS `sylius_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_locale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7BA1286477153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_locale`
--

LOCK TABLES `sylius_locale` WRITE;
/*!40000 ALTER TABLE `sylius_locale` DISABLE KEYS */;
INSERT INTO `sylius_locale` (`id`, `code`, `created_at`, `updated_at`) VALUES (1,'fr_FR','2022-03-04 12:59:51','2022-03-04 12:59:51');
/*!40000 ALTER TABLE `sylius_locale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_migrations`
--

DROP TABLE IF EXISTS `sylius_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_migrations` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_migrations`
--

LOCK TABLES `sylius_migrations` WRITE;
/*!40000 ALTER TABLE `sylius_migrations` DISABLE KEYS */;
INSERT INTO `sylius_migrations` (`version`, `executed_at`, `execution_time`) VALUES ('App\\Migrations\\Version20220304142445','2022-03-04 15:24:55',376),('App\\Migrations\\Version20220304145919','2022-03-04 16:04:12',319),('App\\Migrations\\Version20220404075217','2022-04-04 09:07:17',349),('App\\Migrations\\Version20220404075721','2022-04-04 09:07:18',1092),('App\\Migrations\\Version20220404082150','2022-04-04 09:07:19',80),('App\\Migrations\\Version20220414094502','2022-04-14 11:45:27',217),('App\\Migrations\\Version20220425094731','2022-04-26 08:19:51',1845),('App\\Migrations\\Version20220425125531','2022-04-26 08:19:53',4983),('App\\Migrations\\Version20220425144223','2022-04-26 08:19:58',5779),('App\\Migrations\\Version20221017144929','2022-11-24 09:21:12',89),('MonsieurBiz\\SyliusCmsPagePlugin\\Migrations\\Version20210311101300','2022-03-04 16:15:41',306),('MonsieurBiz\\SyliusHomepagePlugin\\Migrations\\Version20210311135118','2022-03-04 16:16:12',272),('MonsieurBiz\\SyliusMenuPlugin\\Migrations\\Version20210416121344','2022-03-04 15:10:37',342),('MonsieurBiz\\SyliusSettingsPlugin\\Migrations\\Version20210507153200','2022-03-07 12:28:33',78),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161202011555','2022-03-04 12:59:29',5074),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161209095131','2022-03-04 12:59:34',8),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161214153137','2022-03-04 12:59:34',89),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161215103325','2022-03-04 12:59:34',33),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161219160441','2022-03-04 12:59:34',84),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161220092422','2022-03-04 12:59:34',32),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161221133514','2022-03-04 12:59:34',21),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161223091334','2022-03-04 12:59:34',40),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161223164558','2022-03-04 12:59:34',29),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170103120334','2022-03-04 12:59:34',25),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170109143010','2022-03-04 12:59:35',25),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170110120125','2022-03-04 12:59:35',40),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170116215417','2022-03-04 12:59:35',68),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170117075436','2022-03-04 12:59:35',31),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170120164250','2022-03-04 12:59:35',39),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170124221955','2022-03-04 12:59:35',23),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170201094058','2022-03-04 12:59:35',64),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170206122839','2022-03-04 12:59:35',19),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170206141520','2022-03-04 12:59:35',37),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170208102345','2022-03-04 12:59:35',40),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170208103250','2022-03-04 12:59:35',23),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170214095710','2022-03-04 12:59:35',74),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170214104908','2022-03-04 12:59:35',28),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170215143031','2022-03-04 12:59:35',9),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170217141621','2022-03-04 12:59:35',68),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170220150813','2022-03-04 12:59:35',32),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170223071604','2022-03-04 12:59:35',90),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170301135010','2022-03-04 12:59:35',105),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170303170201','2022-03-04 12:59:35',30),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170321131352','2022-03-04 12:59:35',36),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170327135945','2022-03-04 12:59:35',73),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170401200415','2022-03-04 12:59:36',30),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170518123056','2022-03-04 12:59:36',1),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170824124122','2022-03-04 12:59:36',47),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170913125128','2022-03-04 12:59:36',32),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20171003103916','2022-03-04 12:59:36',9),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20180102140039','2022-03-04 12:59:36',10),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20180226142349','2022-03-04 12:59:36',47),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190109095211','2022-03-04 12:59:36',128),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190109160409','2022-03-04 12:59:36',44),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190204092544','2022-03-04 12:59:36',11),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190416073011','2022-03-04 12:59:36',22),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190607135638','2022-03-04 12:59:36',52),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20191024065651','2022-03-04 12:59:36',49),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200110132702','2022-03-04 12:59:36',125),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200122082429','2022-03-04 12:59:36',104),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200202104152','2022-03-04 12:59:36',23),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200309172908','2022-03-04 12:59:36',31),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200325075815','2022-03-04 12:59:36',28),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200916093101','2022-03-04 12:59:36',24),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20201017150005','2022-03-04 12:59:36',39),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20201104085538','2022-03-04 12:59:36',43),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20201130071338','2022-03-04 12:59:36',356),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20201204071301','2022-03-04 12:59:37',252),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20201208105207','2022-03-04 12:59:37',1),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20210311142134','2022-03-04 12:59:37',40),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20210408131321','2022-03-04 12:59:37',11),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20210422105530','2022-03-04 12:59:37',28),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20211018130725','2022-03-04 12:59:37',1),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20220210135918','2022-03-10 17:57:52',269),('Sylius\\PayPalPlugin\\Migrations\\Version20200907102535','2022-03-04 12:59:37',48);
/*!40000 ALTER TABLE `sylius_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order`
--

DROP TABLE IF EXISTS `sylius_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_address_id` int(11) DEFAULT NULL,
  `billing_address_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `promotion_coupon_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_completed_at` datetime DEFAULT NULL,
  `items_total` int(11) NOT NULL,
  `adjustments_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `locale_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_guest` tinyint(4) NOT NULL DEFAULT 1,
  `service_center_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6196A1F996901F54` (`number`),
  UNIQUE KEY `UNIQ_6196A1F94D4CFF2B` (`shipping_address_id`),
  UNIQUE KEY `UNIQ_6196A1F979D0C0E4` (`billing_address_id`),
  UNIQUE KEY `UNIQ_6196A1F9BEA95C75` (`token_value`),
  KEY `IDX_6196A1F972F5A1AA` (`channel_id`),
  KEY `IDX_6196A1F917B24436` (`promotion_coupon_id`),
  KEY `IDX_6196A1F99395C3F3` (`customer_id`),
  KEY `IDX_6196A1F9A393D2FB43625D9F` (`state`,`updated_at`),
  CONSTRAINT `FK_6196A1F917B24436` FOREIGN KEY (`promotion_coupon_id`) REFERENCES `sylius_promotion_coupon` (`id`),
  CONSTRAINT `FK_6196A1F94D4CFF2B` FOREIGN KEY (`shipping_address_id`) REFERENCES `sylius_address` (`id`),
  CONSTRAINT `FK_6196A1F972F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`),
  CONSTRAINT `FK_6196A1F979D0C0E4` FOREIGN KEY (`billing_address_id`) REFERENCES `sylius_address` (`id`),
  CONSTRAINT `FK_6196A1F99395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=634 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order`
--

LOCK TABLES `sylius_order` WRITE;
/*!40000 ALTER TABLE `sylius_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order_item`
--

DROP TABLE IF EXISTS `sylius_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `units_total` int(11) NOT NULL,
  `adjustments_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `is_immutable` tinyint(1) NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `variant_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `IDX_77B587ED8D9F6D38` (`order_id`),
  KEY `IDX_77B587ED3B69A9AF` (`variant_id`),
  CONSTRAINT `FK_77B587ED3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`),
  CONSTRAINT `FK_77B587ED8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1219 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_item`
--

LOCK TABLES `sylius_order_item` WRITE;
/*!40000 ALTER TABLE `sylius_order_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order_item_unit`
--

DROP TABLE IF EXISTS `sylius_order_item_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_order_item_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_item_id` int(11) NOT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `adjustments_total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_82BF226EE415FB15` (`order_item_id`),
  KEY `IDX_82BF226E7BE036FC` (`shipment_id`),
  CONSTRAINT `FK_82BF226E7BE036FC` FOREIGN KEY (`shipment_id`) REFERENCES `sylius_shipment` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_82BF226EE415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3243 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_item_unit`
--

LOCK TABLES `sylius_order_item_unit` WRITE;
/*!40000 ALTER TABLE `sylius_order_item_unit` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_order_item_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order_sequence`
--

DROP TABLE IF EXISTS `sylius_order_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_order_sequence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idx` int(11) NOT NULL,
  `version` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_sequence`
--

LOCK TABLES `sylius_order_sequence` WRITE;
/*!40000 ALTER TABLE `sylius_order_sequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_order_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment`
--

DROP TABLE IF EXISTS `sylius_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D9191BD419883967` (`method_id`),
  KEY `IDX_D9191BD48D9F6D38` (`order_id`),
  CONSTRAINT `FK_D9191BD419883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_payment_method` (`id`),
  CONSTRAINT `FK_D9191BD48D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment`
--

LOCK TABLES `sylius_payment` WRITE;
/*!40000 ALTER TABLE `sylius_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_method`
--

DROP TABLE IF EXISTS `sylius_payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `gateway_config_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A75B0B0D77153098` (`code`),
  KEY `IDX_A75B0B0DF23D6140` (`gateway_config_id`),
  CONSTRAINT `FK_A75B0B0DF23D6140` FOREIGN KEY (`gateway_config_id`) REFERENCES `sylius_gateway_config` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_method`
--

LOCK TABLES `sylius_payment_method` WRITE;
/*!40000 ALTER TABLE `sylius_payment_method` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_method_channels`
--

DROP TABLE IF EXISTS `sylius_payment_method_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment_method_channels` (
  `payment_method_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`payment_method_id`,`channel_id`),
  KEY `IDX_543AC0CC5AA1164F` (`payment_method_id`),
  KEY `IDX_543AC0CC72F5A1AA` (`channel_id`),
  CONSTRAINT `FK_543AC0CC5AA1164F` FOREIGN KEY (`payment_method_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_543AC0CC72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_method_channels`
--

LOCK TABLES `sylius_payment_method_channels` WRITE;
/*!40000 ALTER TABLE `sylius_payment_method_channels` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_payment_method_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_method_translation`
--

DROP TABLE IF EXISTS `sylius_payment_method_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment_method_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructions` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_payment_method_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_966BE3A12C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_966BE3A12C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_method_translation`
--

LOCK TABLES `sylius_payment_method_translation` WRITE;
/*!40000 ALTER TABLE `sylius_payment_method_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_payment_method_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_security_token`
--

DROP TABLE IF EXISTS `sylius_payment_security_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment_security_token` (
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:object)',
  `after_url` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `target_url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_security_token`
--

LOCK TABLES `sylius_payment_security_token` WRITE;
/*!40000 ALTER TABLE `sylius_payment_security_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_payment_security_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product`
--

DROP TABLE IF EXISTS `sylius_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_taxon_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `variant_selection_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `average_rating` double NOT NULL DEFAULT 0,
  `synced_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_677B9B7477153098` (`code`),
  KEY `IDX_677B9B74731E505` (`main_taxon_id`),
  CONSTRAINT `FK_677B9B74731E505` FOREIGN KEY (`main_taxon_id`) REFERENCES `sylius_taxon` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2154 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product`
--

LOCK TABLES `sylius_product` WRITE;
/*!40000 ALTER TABLE `sylius_product` DISABLE KEYS */;
INSERT INTO `sylius_product` (`id`, `main_taxon_id`, `code`, `created_at`, `updated_at`, `enabled`, `variant_selection_method`, `average_rating`, `synced_at`) VALUES (2084,11,'5FF061201B','2023-03-24 10:26:57','2023-05-02 13:47:26',1,'choice',0,'2023-05-02 13:47:25'),(2085,11,'1EA061201','2023-03-27 08:12:58','2023-05-02 13:47:23',1,'choice',0,'2023-05-02 13:47:23'),(2086,11,'1EA061201A','2023-03-27 08:12:58','2023-05-02 13:47:23',1,'choice',0,'2023-05-02 13:47:23'),(2087,33,'000071129S','2023-03-27 08:12:58','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:46'),(2088,33,'000071129T','2023-03-27 08:12:58','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:46'),(2089,10,'5FF071151','2023-03-27 08:12:58','2023-05-02 13:47:26',1,'choice',0,'2023-05-02 13:47:25'),(2090,45,'6H3093990L','2023-03-27 08:12:58','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:50:04'),(2091,12,'5FG061500__041','2023-03-27 08:12:58','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:50:00'),(2092,40,'6H1084130F_IAJ','2023-03-27 08:12:58','2023-04-07 08:50:06',0,'choice',0,'2023-04-06 14:52:12'),(2093,44,'000019906AJ','2023-03-27 08:12:58','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:46'),(2094,44,'000019906S','2023-03-27 08:12:58','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:46'),(2095,50,'000051444AR','2023-03-27 08:12:58','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:46'),(2096,45,'000051763H','2023-03-27 08:12:58','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:46'),(2097,45,'000052122A','2023-03-27 08:12:58','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:46'),(2098,31,'000071120HA','2023-03-27 08:12:58','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:46'),(2099,26,'000071128K','2023-03-27 08:12:59','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:46'),(2100,33,'000071129R','2023-03-27 08:12:59','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:46'),(2101,54,'000091375EH','2023-03-27 08:12:59','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:46'),(2102,45,'000093056J','2023-03-27 08:12:59','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:46'),(2103,45,'000093059AE','2023-03-27 08:12:59','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:46'),(2104,45,'000093101A','2023-03-27 08:12:59','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:46'),(2105,45,'000093601A','2023-03-27 08:12:59','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:46'),(2106,45,'000093900SA','2023-03-27 08:12:59','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:51'),(2107,14,'1EA075101A','2023-03-27 08:12:59','2023-05-02 13:47:23',1,'choice',0,'2023-05-02 13:47:23'),(2108,14,'1EA075111A','2023-03-27 08:12:59','2023-05-02 13:47:23',1,'choice',0,'2023-05-02 13:47:23'),(2109,12,'1EB061500__041','2023-03-27 08:12:59','2023-05-02 13:47:23',1,'choice',0,'2023-05-02 13:47:23'),(2110,12,'1EB863011A_LOE','2023-03-27 08:12:59','2023-05-02 13:47:23',1,'choice',0,'2023-05-02 13:47:23'),(2111,12,'1EB863011B_LOE','2023-03-27 08:12:59','2023-05-02 13:47:23',1,'choice',0,'2023-05-02 13:47:23'),(2112,11,'575061201A','2023-03-27 08:12:59','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:51'),(2113,62,'575061701B','2023-03-27 08:12:59','2023-05-05 12:12:47',1,'choice',0,'2023-04-07 08:49:51'),(2114,10,'575071151','2023-03-27 08:13:00','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:51'),(2115,40,'575071640C_HPN','2023-03-27 08:13:00','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:51'),(2116,14,'575075111A','2023-03-27 08:13:00','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:51'),(2117,40,'575087013C','2023-03-27 08:13:00','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:51'),(2118,40,'575087013D','2023-03-27 08:13:00','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:51'),(2119,38,'575601025AN_XEB','2023-03-27 08:13:00','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:55'),(2120,38,'575601025AP_KT2','2023-03-27 08:13:00','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:55'),(2121,38,'575601025ARXUU','2023-03-27 08:13:00','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:55'),(2122,38,'575601025ASXEB','2023-03-27 08:13:00','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:55'),(2123,12,'576863011D_LOE','2023-03-27 08:13:00','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:55'),(2124,12,'576863011E_LOE','2023-03-27 08:13:00','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:55'),(2125,26,'5F9071128','2023-03-27 08:13:00','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:55'),(2126,11,'5FA061201A','2023-03-27 08:13:00','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:55'),(2127,39,'5FA064205__9DG','2023-03-27 08:13:00','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:55'),(2128,10,'5FA071151','2023-03-27 08:13:00','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:55'),(2129,40,'5FA071606A','2023-03-27 08:13:01','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:55'),(2130,40,'5FA071640B','2023-03-27 08:13:01','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:55'),(2131,14,'5FA075111A','2023-03-27 08:13:01','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:55'),(2132,38,'5FA601025L_XUU','2023-03-27 08:13:01','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:55'),(2133,38,'5FA601025R_1OV','2023-03-27 08:13:01','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:49:55'),(2134,38,'5FA601025R_XEB','2023-03-27 08:13:01','2023-04-07 08:53:11',0,'choice',0,'2023-04-07 08:50:00'),(2135,65,'5FE017221','2023-03-27 08:13:01','2023-05-02 13:47:25',1,'choice',0,'2023-05-02 13:47:25'),(2136,11,'5FE061201A','2023-03-27 08:13:01','2023-05-02 13:47:25',1,'choice',0,'2023-05-02 13:47:25'),(2137,11,'5FE061201E','2023-03-27 08:13:01','2023-05-02 13:47:26',1,'choice',0,'2023-05-02 13:47:25'),(2138,10,'5FE071151','2023-03-27 08:13:01','2023-05-02 13:47:26',1,'choice',0,'2023-05-02 13:47:25'),(2139,11,'5FF061201C','2023-03-27 08:13:01','2023-05-02 13:47:26',1,'choice',0,'2023-05-02 13:47:25'),(2140,14,'5FF075101','2023-03-27 08:13:01','2023-05-02 13:47:26',1,'choice',0,'2023-05-02 13:47:25'),(2141,14,'5FF075111','2023-03-27 08:13:01','2023-05-02 13:47:26',1,'choice',0,'2023-05-02 13:47:25'),(2142,38,'5FF601025E_XEB','2023-03-27 08:13:01','2023-05-02 13:47:26',1,'choice',0,'2023-05-02 13:47:25'),(2143,38,'5FF601025H_XUU','2023-03-27 08:13:01','2023-05-02 13:47:26',1,'choice',0,'2023-05-02 13:47:25'),(2144,38,'5FF601025J_1OV','2023-03-27 08:13:02','2023-05-02 13:47:26',1,'choice',0,'2023-05-02 13:47:25'),(2145,38,'5FF601025K_XEB','2023-03-27 08:13:02','2023-05-02 13:47:26',1,'choice',0,'2023-05-02 13:47:25'),(2146,12,'5FG863011L_LOE','2023-03-27 08:13:02','2023-05-02 13:47:26',1,'choice',0,'2023-05-02 13:47:26'),(2147,12,'5FG863011M_LOE','2023-03-27 08:13:02','2023-05-02 13:47:26',1,'choice',0,'2023-05-02 13:47:26'),(2148,12,'5FG863011N_LOE','2023-03-27 08:13:02','2023-05-02 13:47:26',1,'choice',0,'2023-05-02 13:47:26'),(2149,12,'5FG863011P_LOE','2023-03-27 08:13:02','2023-05-02 13:47:27',1,'choice',0,'2023-05-02 13:47:26'),(2150,12,'5FG863011Q_LOE','2023-03-27 08:13:02','2023-05-02 13:47:27',1,'choice',0,'2023-05-02 13:47:26'),(2151,62,'6H3061701','2023-03-27 08:13:02','2023-05-02 13:47:27',1,'choice',0,'2023-05-02 13:47:26'),(2152,62,'6H3061701A','2023-03-27 08:13:02','2023-05-02 13:47:27',1,'choice',0,'2023-05-02 13:47:26'),(2153,62,'6H3061701B','2023-03-27 08:13:02','2023-05-05 12:13:37',1,'choice',0,'2023-04-07 08:50:04');
/*!40000 ALTER TABLE `sylius_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_association`
--

DROP TABLE IF EXISTS `sylius_product_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `association_type_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_association_idx` (`product_id`,`association_type_id`),
  KEY `IDX_48E9CDABB1E1C39` (`association_type_id`),
  KEY `IDX_48E9CDAB4584665A` (`product_id`),
  CONSTRAINT `FK_48E9CDAB4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_48E9CDABB1E1C39` FOREIGN KEY (`association_type_id`) REFERENCES `sylius_product_association_type` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_association`
--

LOCK TABLES `sylius_product_association` WRITE;
/*!40000 ALTER TABLE `sylius_product_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_association_product`
--

DROP TABLE IF EXISTS `sylius_product_association_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_association_product` (
  `association_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`association_id`,`product_id`),
  KEY `IDX_A427B983EFB9C8A5` (`association_id`),
  KEY `IDX_A427B9834584665A` (`product_id`),
  CONSTRAINT `FK_A427B9834584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_A427B983EFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `sylius_product_association` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_association_product`
--

LOCK TABLES `sylius_product_association_product` WRITE;
/*!40000 ALTER TABLE `sylius_product_association_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_association_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_association_type`
--

DROP TABLE IF EXISTS `sylius_product_association_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_association_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CCB8914C77153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_association_type`
--

LOCK TABLES `sylius_product_association_type` WRITE;
/*!40000 ALTER TABLE `sylius_product_association_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_association_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_association_type_translation`
--

DROP TABLE IF EXISTS `sylius_product_association_type_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_association_type_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_association_type_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_4F618E52C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_4F618E52C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_association_type` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_association_type_translation`
--

LOCK TABLES `sylius_product_association_type_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_association_type_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_association_type_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_attribute`
--

DROP TABLE IF EXISTS `sylius_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storage_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) NOT NULL,
  `translatable` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BFAF484A77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_attribute`
--

LOCK TABLES `sylius_product_attribute` WRITE;
/*!40000 ALTER TABLE `sylius_product_attribute` DISABLE KEYS */;
INSERT INTO `sylius_product_attribute` (`id`, `code`, `type`, `storage_type`, `configuration`, `created_at`, `updated_at`, `position`, `translatable`) VALUES (4,'pdf','text','text','a:2:{s:3:\"min\";N;s:3:\"max\";N;}','2022-03-07 11:55:30','2022-03-07 11:55:30',0,1),(5,'tags','text','text','a:2:{s:3:\"min\";N;s:3:\"max\";N;}','2022-03-15 18:03:20','2022-03-15 18:03:20',1,1),(6,'color','text','text','a:2:{s:3:\"min\";N;s:3:\"max\";N;}','2022-05-09 08:57:09','2022-05-09 08:57:09',2,1);
/*!40000 ALTER TABLE `sylius_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_attribute_translation`
--

DROP TABLE IF EXISTS `sylius_product_attribute_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_attribute_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_attribute_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_93850EBA2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_93850EBA2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_attribute_translation`
--

LOCK TABLES `sylius_product_attribute_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_attribute_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_attribute_translation` (`id`, `translatable_id`, `name`, `locale`) VALUES (4,4,'PDF','fr_FR'),(5,5,'Tags','fr_FR'),(6,6,'Couleur','fr_FR');
/*!40000 ALTER TABLE `sylius_product_attribute_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_attribute_value`
--

DROP TABLE IF EXISTS `sylius_product_attribute_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_attribute_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `text_value` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` double DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` longtext COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json)',
  `locale_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8A053E544584665A` (`product_id`),
  KEY `IDX_8A053E54B6E62EFA` (`attribute_id`),
  CONSTRAINT `FK_8A053E544584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_8A053E54B6E62EFA` FOREIGN KEY (`attribute_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=518 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_attribute_value`
--

LOCK TABLES `sylius_product_attribute_value` WRITE;
/*!40000 ALTER TABLE `sylius_product_attribute_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_attribute_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_channels`
--

DROP TABLE IF EXISTS `sylius_product_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_channels` (
  `product_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`channel_id`),
  KEY `IDX_F9EF269B4584665A` (`product_id`),
  KEY `IDX_F9EF269B72F5A1AA` (`channel_id`),
  CONSTRAINT `FK_F9EF269B4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_F9EF269B72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_channels`
--

LOCK TABLES `sylius_product_channels` WRITE;
/*!40000 ALTER TABLE `sylius_product_channels` DISABLE KEYS */;
INSERT INTO `sylius_product_channels` (`product_id`, `channel_id`) VALUES (2084,1),(2085,1),(2086,1),(2087,1),(2088,1),(2089,1),(2090,1),(2091,1),(2092,1),(2093,1),(2094,1),(2095,1),(2096,1),(2097,1),(2098,1),(2099,1),(2100,1),(2101,1),(2102,1),(2103,1),(2104,1),(2105,1),(2106,1),(2107,1),(2108,1),(2109,1),(2110,1),(2111,1),(2112,1),(2113,1),(2114,1),(2115,1),(2116,1),(2117,1),(2118,1),(2119,1),(2120,1),(2121,1),(2122,1),(2123,1),(2124,1),(2125,1),(2126,1),(2127,1),(2128,1),(2129,1),(2130,1),(2131,1),(2132,1),(2133,1),(2134,1),(2135,1),(2136,1),(2137,1),(2138,1),(2139,1),(2140,1),(2141,1),(2142,1),(2143,1),(2144,1),(2145,1),(2146,1),(2147,1),(2148,1),(2149,1),(2150,1),(2151,1),(2152,1),(2153,1);
/*!40000 ALTER TABLE `sylius_product_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_image`
--

DROP TABLE IF EXISTS `sylius_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `synced_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_88C64B2D7E3C61F9` (`owner_id`),
  CONSTRAINT `FK_88C64B2D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1521 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_image`
--

LOCK TABLES `sylius_product_image` WRITE;
/*!40000 ALTER TABLE `sylius_product_image` DISABLE KEYS */;
INSERT INTO `sylius_product_image` (`id`, `owner_id`, `type`, `path`, `updated_at`, `synced_at`) VALUES (1455,2093,NULL,'e6/06/804bf4cbd08e100f3706be107452.jpg','2023-04-07 08:28:19','2023-04-07 08:49:46'),(1456,2094,NULL,'9d/59/cf6be33caea956d265f027aebf0d.jpg','2023-04-07 08:28:21','2023-04-07 08:49:46'),(1457,2095,NULL,'70/e4/f928348f53b7ccaf08a735a2083b.jpg','2023-04-07 08:28:26','2023-04-07 08:49:46'),(1458,2096,NULL,'26/97/d62b29b1b39de74067d9d7e0299e.jpg','2023-04-07 08:28:05','2023-04-07 08:49:46'),(1459,2097,NULL,'cb/d2/c4142179fd08d3d224d3aeaa9e7c.jpg','2023-04-07 08:28:23','2023-04-07 08:49:46'),(1460,2098,NULL,'fb/3d/56f0d88b17f55842a15e0265fe60.jpg','2023-04-07 08:28:07','2023-04-07 08:49:46'),(1461,2099,NULL,'78/84/7196d00498d60e3bb713f11712f0.jpg','2023-04-07 08:28:09','2023-04-07 08:49:46'),(1462,2100,NULL,'87/73/d80669e8909670e890b5f7e1affb.jpg','2023-04-07 08:28:28','2023-04-07 08:49:46'),(1463,2087,NULL,'59/6b/d975b8b08fedc4d3292d4ab48594.jpg','2023-04-07 08:28:30','2023-04-07 08:49:46'),(1464,2088,NULL,'90/24/0ced6718909e2f36108c93356877.jpg','2023-04-07 08:28:32','2023-04-07 08:49:46'),(1465,2101,NULL,'9d/47/76bec8b6a8e3dbb9a653cf72a4d3.jpg','2023-04-07 08:28:36','2023-04-07 08:49:46'),(1466,2102,NULL,'46/8f/3dedb7d9066869a64bb75bafd7d0.jpg','2023-04-07 08:28:38','2023-04-07 08:49:46'),(1467,2103,NULL,'ec/a9/03d45dea390cb9550577b02dcc21.jpg','2023-04-07 08:28:40','2023-04-07 08:49:46'),(1468,2104,NULL,'c6/e8/baf591883dee4cc6823ef4f17d75.jpg','2023-04-07 08:28:42','2023-04-07 08:49:46'),(1469,2105,NULL,'9f/c2/c8147884a3709cf37ee79229caaa.jpg','2023-04-07 08:28:45','2023-04-07 08:49:46'),(1470,2106,NULL,'0b/a3/ef082620ae67317f9cc9a24dd68f.jpg','2023-04-07 08:28:46','2023-04-07 08:49:51'),(1471,2085,NULL,'14/6f/160e2c0e947e56774d875e5055d2.jpg','2023-04-07 08:26:30','2023-05-02 13:47:23'),(1472,2086,NULL,'29/47/582d8efefec0231b1cf754dc4444.jpg','2023-04-07 08:26:32','2023-05-02 13:47:23'),(1473,2107,NULL,'ae/1a/0aeaeda0129b93fa7337f937f4b9.jpg','2023-04-07 08:26:35','2023-05-02 13:47:23'),(1474,2108,NULL,'3b/15/2c1154bd61ac27ca9c66f88c3254.jpg','2023-04-07 08:26:37','2023-05-02 13:47:23'),(1475,2110,NULL,'4e/81/b954acc3ee7f43aae70c29fcaaef.jpg','2023-04-07 08:26:39','2023-05-02 13:47:23'),(1476,2111,NULL,'c5/fa/dfe1667a2669fbaf1d7c8d61eb45.jpg','2023-04-07 08:26:44','2023-05-02 13:47:23'),(1477,2112,NULL,'60/a9/871c7cf31b65dc3e20502c4bc35b.jpg','2023-04-07 08:28:51','2023-04-07 08:49:51'),(1478,2113,NULL,'d7/0b/cab8630367cb554da1c149c4857e.jpg','2023-04-07 08:28:53','2023-04-07 08:49:51'),(1479,2114,NULL,'3d/40/f4ee16ab137bcdd359da23c19ce7.jpg','2023-04-07 08:28:48','2023-04-07 08:49:51'),(1480,2115,NULL,'be/31/01eba013701171274af6f9cfdff0.jpg','2023-04-07 08:28:56','2023-04-07 08:49:51'),(1481,2116,NULL,'cc/d3/4e40133371dd2ba1f22360a3b431.jpg','2023-04-07 08:28:58','2023-04-07 08:49:51'),(1482,2117,NULL,'8f/03/754759f37392c1a868bea3dabc4f.jpg','2023-04-07 08:29:00','2023-04-07 08:49:51'),(1483,2118,NULL,'0e/3a/8376b62b5eba490a5be826e1ca4b.jpg','2023-04-07 08:29:02','2023-04-07 08:49:51'),(1484,2119,NULL,'60/47/70090dd69bf671fb8bba6bbc7513.jpg','2023-04-07 08:29:05','2023-04-07 08:49:55'),(1485,2121,NULL,'6f/aa/c174c807174f7c927800fcb0aa24.jpg','2023-04-07 08:29:12','2023-04-07 08:49:55'),(1486,2122,NULL,'fa/ce/58dd915578107e0a61b8b8f5c387.jpg','2023-04-07 08:29:17','2023-04-07 08:49:55'),(1487,2123,NULL,'fc/02/9f99edee89f75605cb3340a89470.jpg','2023-04-07 08:29:14','2023-04-07 08:49:55'),(1488,2124,NULL,'45/25/e6254189a7e58fa8b8acfe78a656.jpg','2023-04-07 08:29:20','2023-04-07 08:49:55'),(1489,2125,NULL,'15/b9/d5a27a4b19b00505acf9ce42c152.jpg','2023-04-07 08:26:50','2023-04-07 08:49:55'),(1490,2126,NULL,'91/20/baab2c4a04054569dcedc7f63e92.jpg','2023-04-07 08:26:47','2023-04-07 08:49:55'),(1491,2127,NULL,'4b/ab/030f51fb548f6a37bc0f2dfc5535.jpg','2023-04-07 08:26:52','2023-04-07 08:49:55'),(1492,2128,NULL,'e1/b0/8559cd3ebfd437039b08f38e44e4.jpg','2023-04-07 08:26:55','2023-04-07 08:49:55'),(1493,2129,NULL,'85/34/e8c679760db753c241bc54ff6f25.jpg','2023-04-07 08:26:57','2023-04-07 08:49:55'),(1494,2130,NULL,'25/ba/a0de32beae09eb47c19fbe2cb4f1.jpg','2023-04-07 08:26:59','2023-04-07 08:49:55'),(1495,2131,NULL,'3d/21/8af82c9ec094382e99702de0ebae.jpg','2023-04-07 08:27:01','2023-04-07 08:49:55'),(1496,2132,NULL,'e0/4a/eea3df8567ee2317c286434617aa.jpg','2023-04-07 08:27:04','2023-04-07 08:49:55'),(1497,2133,NULL,'76/88/6e5b0704150d80439121ac84a946.jpg','2023-04-07 08:27:07','2023-04-07 08:49:55'),(1498,2134,NULL,'c1/cc/33fb9cdc6e7318c0e8c8c5831dd9.jpg','2023-04-07 08:27:11','2023-04-07 08:50:00'),(1499,2135,NULL,'a0/a5/25d8526db7801eceb4aee83ae019.jpg','2023-04-07 08:27:17','2023-05-02 13:47:25'),(1500,2136,NULL,'47/e7/571af7e7af6cbac1acd5bf5f1d89.jpg','2023-04-07 08:27:14','2023-05-02 13:47:25'),(1501,2137,NULL,'62/87/55cc9c4393fb6bd0ebcc83d281a3.jpg','2023-04-07 08:27:19','2023-05-02 13:47:25'),(1502,2138,NULL,'60/2e/6d3e6b82c8e62e5fba42e177502f.jpg','2023-04-07 08:27:22','2023-05-02 13:47:25'),(1503,2084,NULL,'8b/c4/c90a039969fcdd8abddefa33205d.jpg','2023-04-07 08:27:25','2023-05-02 13:47:25'),(1504,2139,NULL,'80/42/8cf1e6394b6a3411cdf300ffc928.jpg','2023-04-07 08:27:32','2023-05-02 13:47:25'),(1505,2089,NULL,'56/7f/5d5d8344de9a8ff754c2d5a10c7c.jpg','2023-04-07 08:27:28','2023-05-02 13:47:25'),(1506,2140,NULL,'d1/cf/4d59f668fa20078a5c700a318be9.jpg','2023-04-07 08:27:30','2023-05-02 13:47:25'),(1507,2141,NULL,'59/29/d50b13efd1f05e6635f8ddf6b1a4.jpg','2023-04-07 08:27:34','2023-05-02 13:47:25'),(1508,2142,NULL,'bc/08/f0519511164434524003fe804fa0.jpg','2023-04-07 08:27:36','2023-05-02 13:47:25'),(1509,2143,NULL,'bc/a1/2d1b0cafb560a8fd2c2e1e5f266d.jpg','2023-04-07 08:27:40','2023-05-02 13:47:25'),(1510,2144,NULL,'5d/a2/733f1b680d0e14476b75d0969cda.jpg','2023-04-07 08:27:43','2023-05-02 13:47:25'),(1511,2145,NULL,'be/a9/bc7ac60cc073acbaa7b6db7619cc.jpg','2023-04-07 08:27:49','2023-05-02 13:47:25'),(1512,2146,NULL,'a6/f9/d1fb948059f47a5d58dc6e0bde9a.jpg','2023-04-07 08:27:52','2023-05-02 13:47:26'),(1513,2147,NULL,'70/80/a7b5f6870379e34738bfbd7034d1.jpg','2023-04-07 08:27:54','2023-05-02 13:47:26'),(1514,2148,NULL,'3b/5f/e0b5ecace3400ae067677e399e37.jpg','2023-04-07 08:27:56','2023-05-02 13:47:26'),(1515,2149,NULL,'5a/df/7c99057939bcb57e157c0ece82b2.jpg','2023-04-07 08:28:01','2023-05-02 13:47:26'),(1516,2150,NULL,'c5/c2/52486e04d37d86ea21c2e6fec6e6.jpg','2023-04-07 08:27:58','2023-05-02 13:47:26'),(1517,2151,NULL,'3f/39/4c43e6323fda0c6175bdb1c7bb54.jpg','2023-04-07 08:28:03','2023-05-02 13:47:26'),(1518,2152,NULL,'51/75/8ba15e2ef55f9f62a4ab2e7ffc7e.jpg','2023-04-07 08:28:14','2023-05-02 13:47:26'),(1519,2153,NULL,'08/b6/89b8edd6c359b19b35ce8ac53b8f.jpg','2023-04-07 08:28:12','2023-04-07 08:50:04'),(1520,2090,NULL,'f7/7f/deda329f129c30097b67688df632.jpg','2023-04-07 08:28:17','2023-04-07 08:50:04');
/*!40000 ALTER TABLE `sylius_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_image_product_variants`
--

DROP TABLE IF EXISTS `sylius_product_image_product_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_image_product_variants` (
  `image_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  PRIMARY KEY (`image_id`,`variant_id`),
  KEY `IDX_8FFDAE8D3DA5256D` (`image_id`),
  KEY `IDX_8FFDAE8D3B69A9AF` (`variant_id`),
  CONSTRAINT `FK_8FFDAE8D3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_8FFDAE8D3DA5256D` FOREIGN KEY (`image_id`) REFERENCES `sylius_product_image` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_image_product_variants`
--

LOCK TABLES `sylius_product_image_product_variants` WRITE;
/*!40000 ALTER TABLE `sylius_product_image_product_variants` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_image_product_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option`
--

DROP TABLE IF EXISTS `sylius_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E4C0EBEF77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option`
--

LOCK TABLES `sylius_product_option` WRITE;
/*!40000 ALTER TABLE `sylius_product_option` DISABLE KEYS */;
INSERT INTO `sylius_product_option` (`id`, `code`, `created_at`, `updated_at`, `position`) VALUES (1,'size','2022-03-07 11:56:29','2022-03-07 11:56:29',0),(3,'color','2022-03-07 12:09:48','2022-03-07 12:09:48',1);
/*!40000 ALTER TABLE `sylius_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option_translation`
--

DROP TABLE IF EXISTS `sylius_product_option_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_option_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_option_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_CBA491AD2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_CBA491AD2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option_translation`
--

LOCK TABLES `sylius_product_option_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_option_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_option_translation` (`id`, `translatable_id`, `name`, `locale`) VALUES (1,1,'Taille','fr_FR'),(3,3,'Couleur','fr_FR');
/*!40000 ALTER TABLE `sylius_product_option_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option_value`
--

DROP TABLE IF EXISTS `sylius_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_option_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F7FF7D4B77153098` (`code`),
  KEY `IDX_F7FF7D4BA7C41D6F` (`option_id`),
  CONSTRAINT `FK_F7FF7D4BA7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option_value`
--

LOCK TABLES `sylius_product_option_value` WRITE;
/*!40000 ALTER TABLE `sylius_product_option_value` DISABLE KEYS */;
INSERT INTO `sylius_product_option_value` (`id`, `option_id`, `code`) VALUES (1,1,'s'),(2,1,'m'),(3,1,'l'),(4,1,'xl'),(6,3,'black'),(7,3,'white'),(8,3,'blue'),(9,1,'xs'),(10,1,'xxl'),(11,1,'xxxl'),(12,1,'1-month'),(13,1,'6-month'),(14,1,'3-month'),(15,1,'9-month'),(16,1,'12-month'),(17,1,'18-month'),(18,1,'24-month'),(19,1,'36-month'),(20,1,'4-years'),(21,1,'6-years'),(22,1,'8-years'),(23,1,'10-years'),(24,1,'12-years'),(25,1,'14-years'),(26,1,'16-years'),(27,1,'18-years');
/*!40000 ALTER TABLE `sylius_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option_value_translation`
--

DROP TABLE IF EXISTS `sylius_product_option_value_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_option_value_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_option_value_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_8D4382DC2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_8D4382DC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option_value_translation`
--

LOCK TABLES `sylius_product_option_value_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_option_value_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_option_value_translation` (`id`, `translatable_id`, `value`, `locale`) VALUES (1,1,'S','fr_FR'),(2,2,'M','fr_FR'),(3,3,'L','fr_FR'),(4,4,'XL','fr_FR'),(6,6,'Noir','fr_FR'),(7,7,'Blanc','fr_FR'),(8,8,'Bleu','fr_FR'),(9,9,'XS','fr_FR'),(10,10,'XXL','fr_FR'),(11,11,'XXXL','fr_FR'),(12,12,'1 mois','fr_FR'),(13,13,'6 mois','fr_FR'),(14,14,'3 mois','fr_FR'),(15,15,'9 mois','fr_FR'),(16,16,'12 mois','fr_FR'),(17,17,'18 mois','fr_FR'),(18,18,'24 mois','fr_FR'),(19,19,'36 mois','fr_FR'),(20,20,'4 ans','fr_FR'),(21,21,'6 ans','fr_FR'),(22,22,'8 ans','fr_FR'),(23,23,'10 ans','fr_FR'),(24,24,'12 ans','fr_FR'),(25,25,'14 ans','fr_FR'),(26,26,'16 ans','fr_FR'),(27,27,'18 ans','fr_FR');
/*!40000 ALTER TABLE `sylius_product_option_value_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_options`
--

DROP TABLE IF EXISTS `sylius_product_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_options` (
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`option_id`),
  KEY `IDX_2B5FF0094584665A` (`product_id`),
  KEY `IDX_2B5FF009A7C41D6F` (`option_id`),
  CONSTRAINT `FK_2B5FF0094584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_2B5FF009A7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_options`
--

LOCK TABLES `sylius_product_options` WRITE;
/*!40000 ALTER TABLE `sylius_product_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_review`
--

DROP TABLE IF EXISTS `sylius_product_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C7056A994584665A` (`product_id`),
  KEY `IDX_C7056A99F675F31B` (`author_id`),
  CONSTRAINT `FK_C7056A994584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_C7056A99F675F31B` FOREIGN KEY (`author_id`) REFERENCES `sylius_customer` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_review`
--

LOCK TABLES `sylius_product_review` WRITE;
/*!40000 ALTER TABLE `sylius_product_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_taxon`
--

DROP TABLE IF EXISTS `sylius_product_taxon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_taxon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `taxon_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_taxon_idx` (`product_id`,`taxon_id`),
  KEY `IDX_169C6CD94584665A` (`product_id`),
  KEY `IDX_169C6CD9DE13F470` (`taxon_id`),
  CONSTRAINT `FK_169C6CD94584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_169C6CD9DE13F470` FOREIGN KEY (`taxon_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16095 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_taxon`
--

LOCK TABLES `sylius_product_taxon` WRITE;
/*!40000 ALTER TABLE `sylius_product_taxon` DISABLE KEYS */;
INSERT INTO `sylius_product_taxon` (`id`, `product_id`, `taxon_id`, `position`) VALUES (15027,2084,11,0),(15030,2085,11,1),(15033,2086,11,2),(15036,2087,33,0),(15039,2088,33,1),(15042,2089,10,0),(15045,2090,45,0),(15048,2091,12,0),(15049,2091,1,30),(15050,2091,3,71),(15051,2092,40,0),(15052,2092,20,18),(15053,2092,3,70),(15054,2093,44,0),(15055,2093,21,10),(15056,2093,3,69),(15057,2094,44,1),(15058,2094,21,4),(15059,2094,3,68),(15060,2095,50,0),(15061,2095,22,1),(15062,2095,3,67),(15063,2096,45,1),(15064,2096,21,3),(15065,2096,3,66),(15066,2097,45,2),(15067,2097,21,2),(15068,2097,3,65),(15069,2098,31,0),(15070,2098,15,10),(15071,2098,3,64),(15072,2099,26,0),(15075,2100,33,2),(15078,2101,54,0),(15081,2102,45,3),(15084,2103,45,4),(15087,2104,45,5),(15090,2105,45,6),(15093,2106,45,7),(15096,2107,14,0),(15099,2108,14,1),(15102,2109,12,1),(15103,2109,1,29),(15104,2109,3,63),(15105,2110,12,2),(15106,2110,1,28),(15107,2110,3,62),(15108,2111,12,3),(15109,2111,1,27),(15110,2111,3,61),(15111,2112,11,3),(15112,2112,1,26),(15113,2112,3,60),(15114,2113,62,0),(15115,2113,1,25),(15116,2113,3,59),(15117,2114,10,1),(15120,2115,40,1),(15121,2115,20,17),(15122,2115,3,58),(15123,2116,14,2),(15126,2117,40,2),(15129,2118,40,3),(15132,2119,38,0),(15133,2119,20,16),(15134,2119,3,57),(15135,2120,38,1),(15136,2120,20,15),(15137,2120,3,56),(15138,2121,38,2),(15139,2121,20,14),(15140,2121,3,55),(15141,2122,38,3),(15142,2122,20,13),(15143,2122,3,54),(15144,2123,12,4),(15145,2123,1,24),(15146,2123,3,53),(15147,2124,12,5),(15148,2124,1,23),(15149,2124,3,52),(15150,2125,26,1),(15151,2125,15,9),(15152,2125,3,51),(15153,2126,11,4),(15154,2126,1,22),(15155,2126,3,50),(15156,2127,39,0),(15157,2127,20,12),(15158,2127,3,49),(15159,2128,10,2),(15160,2128,15,8),(15161,2128,3,48),(15162,2129,40,4),(15163,2129,20,11),(15164,2129,3,47),(15165,2130,40,5),(15166,2130,20,10),(15167,2130,3,46),(15168,2131,14,3),(15169,2131,1,21),(15170,2131,3,45),(15171,2132,38,4),(15172,2132,20,9),(15173,2132,3,44),(15174,2133,38,5),(15175,2133,20,8),(15176,2133,3,43),(15177,2134,38,6),(15178,2134,20,7),(15179,2134,3,42),(15180,2135,65,0),(15181,2135,1,20),(15182,2135,3,41),(15183,2136,11,5),(15184,2136,1,19),(15185,2136,3,40),(15186,2137,11,6),(15187,2137,1,18),(15188,2137,3,39),(15189,2138,10,3),(15190,2138,15,6),(15191,2138,3,38),(15192,2139,11,7),(15193,2139,1,17),(15194,2139,3,37),(15195,2140,14,4),(15196,2140,1,16),(15197,2140,3,36),(15198,2141,14,5),(15199,2141,1,15),(15200,2141,3,35),(15201,2142,38,7),(15202,2142,20,6),(15203,2142,3,34),(15204,2143,38,8),(15205,2143,20,5),(15206,2143,3,33),(15207,2144,38,9),(15208,2144,20,2),(15209,2144,3,32),(15210,2145,38,10),(15211,2145,20,1),(15212,2145,3,31),(15213,2146,12,6),(15214,2146,1,14),(15215,2146,3,30),(15216,2147,12,7),(15217,2147,1,13),(15218,2147,3,29),(15219,2148,12,8),(15220,2148,1,12),(15221,2148,3,28),(15222,2149,12,9),(15223,2149,1,11),(15224,2149,3,27),(15225,2150,12,10),(15226,2150,1,10),(15227,2150,3,26),(15228,2151,62,1),(15229,2151,1,9),(15230,2151,3,25),(15231,2152,62,2),(15232,2152,1,8),(15233,2152,3,24),(15234,2153,62,3),(15235,2153,1,5),(15236,2153,3,22),(15237,2093,124,0),(15238,2093,123,30),(15239,2093,7,62),(15240,2094,124,1),(15241,2094,123,31),(15242,2094,7,63),(15243,2095,124,2),(15244,2095,123,13),(15245,2095,7,45),(15246,2096,124,3),(15247,2096,123,27),(15248,2096,7,59),(15249,2097,124,4),(15250,2097,123,29),(15251,2097,7,61),(15252,2098,124,5),(15253,2098,123,12),(15254,2098,7,44),(15255,2099,124,6),(15256,2099,15,5),(15257,2099,3,21),(15258,2099,123,26),(15259,2099,7,58),(15260,2100,124,7),(15261,2100,15,7),(15262,2100,3,23),(15263,2100,123,28),(15264,2100,7,60),(15265,2087,124,8),(15266,2087,15,2),(15267,2087,3,14),(15268,2087,123,19),(15269,2087,7,51),(15270,2088,124,9),(15271,2088,15,4),(15272,2088,3,15),(15273,2088,123,20),(15274,2088,7,52),(15275,2101,124,10),(15276,2101,52,1),(15277,2101,3,11),(15278,2101,123,17),(15279,2101,7,49),(15280,2102,124,11),(15281,2102,21,5),(15282,2102,3,16),(15283,2102,123,21),(15284,2102,7,53),(15285,2103,124,12),(15286,2103,21,6),(15287,2103,3,17),(15288,2103,123,22),(15289,2103,7,54),(15290,2104,124,13),(15291,2104,21,7),(15292,2104,3,18),(15293,2104,123,23),(15294,2104,7,55),(15295,2105,124,14),(15296,2105,21,8),(15297,2105,3,19),(15298,2105,123,24),(15299,2105,7,56),(15300,2106,124,15),(15301,2106,21,9),(15302,2106,3,20),(15303,2106,123,25),(15304,2106,7,57),(15305,2085,1,6),(15306,2085,3,12),(15307,2086,1,7),(15308,2086,3,13),(15309,2107,1,2),(15310,2107,3,5),(15311,2108,1,3),(15312,2108,3,10),(15313,2112,124,16),(15314,2112,123,18),(15315,2112,7,50),(15316,2113,124,17),(15317,2113,123,10),(15318,2113,7,42),(15319,2114,124,18),(15320,2114,15,3),(15321,2114,3,6),(15322,2114,123,16),(15323,2114,7,48),(15324,2115,124,19),(15325,2115,123,11),(15326,2115,7,43),(15327,2116,124,20),(15328,2116,1,4),(15329,2116,3,9),(15330,2116,123,14),(15331,2116,7,46),(15332,2117,20,3),(15333,2117,3,7),(15334,2118,124,21),(15335,2118,20,4),(15336,2118,3,8),(15337,2118,123,15),(15338,2118,7,47),(15339,2119,124,22),(15340,2119,123,2),(15341,2119,7,34),(15342,2120,124,23),(15343,2120,123,5),(15344,2120,7,37),(15345,2121,124,24),(15346,2121,123,6),(15347,2121,7,38),(15348,2122,124,25),(15349,2122,123,7),(15350,2122,7,39),(15351,2123,124,26),(15352,2123,123,8),(15353,2123,7,40),(15354,2124,124,27),(15355,2124,123,9),(15356,2124,7,41),(15357,2125,124,28),(15358,2125,123,4),(15359,2125,7,36),(15360,2127,124,29),(15361,2127,123,1),(15362,2127,7,30),(15363,2084,1,1),(15364,2084,3,4),(15365,2089,15,1),(15366,2089,3,3),(15367,2090,124,30),(15368,2090,21,1),(15369,2090,3,2),(15370,2090,123,3),(15371,2090,7,35),(15463,2085,119,0),(15464,2085,118,8),(15465,2085,7,32),(15466,2086,119,1),(15467,2086,118,9),(15468,2086,7,33),(15469,2107,119,2),(15470,2107,118,1),(15471,2107,7,7),(15472,2108,119,3),(15473,2108,118,6),(15474,2108,7,29),(15475,2109,119,4),(15476,2109,118,3),(15477,2109,7,18),(15478,2110,119,5),(15479,2110,118,4),(15480,2110,7,24),(15481,2111,119,6),(15482,2111,118,5),(15483,2111,7,25),(15541,2135,134,0),(15542,2135,132,1),(15543,2135,7,6),(15544,2136,134,1),(15545,2136,132,8),(15546,2136,7,27),(15547,2137,134,2),(15548,2137,132,12),(15549,2137,7,28),(15550,2138,134,3),(15551,2138,132,5),(15552,2138,7,23),(15553,2084,122,0),(15554,2084,120,2),(15555,2084,7,5),(15556,2139,122,1),(15557,2139,120,24),(15558,2139,7,26),(15559,2089,122,2),(15560,2089,120,1),(15561,2089,7,2),(15562,2140,122,3),(15563,2140,120,6),(15564,2140,7,11),(15565,2141,122,4),(15566,2141,120,7),(15567,2141,7,12),(15568,2142,122,5),(15569,2142,120,14),(15570,2142,7,19),(15571,2143,122,6),(15572,2143,120,15),(15573,2143,7,20),(15574,2144,122,7),(15575,2144,120,16),(15576,2144,7,21),(15577,2145,122,8),(15578,2145,120,19),(15579,2145,7,22),(15584,2146,122,9),(15585,2146,120,8),(15586,2146,7,13),(15587,2147,122,10),(15588,2147,120,9),(15589,2147,7,14),(15590,2148,122,11),(15591,2148,120,10),(15592,2148,7,15),(15593,2149,122,12),(15594,2149,120,11),(15595,2149,7,16),(15596,2150,122,13),(15597,2150,120,12),(15598,2150,7,17),(15599,2151,119,7),(15600,2151,122,14),(15601,2151,118,2),(15602,2151,7,3),(15603,2151,120,4),(15604,2152,134,4),(15605,2152,132,3),(15606,2152,7,4);
/*!40000 ALTER TABLE `sylius_product_taxon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_translation`
--

DROP TABLE IF EXISTS `sylius_product_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_translation_uniq_trans` (`translatable_id`,`locale`),
  UNIQUE KEY `UNIQ_105A9084180C698989D9B62` (`locale`,`slug`),
  KEY `IDX_105A9082C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_105A9082C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2154 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_translation`
--

LOCK TABLES `sylius_product_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_translation` (`id`, `translatable_id`, `name`, `slug`, `description`, `meta_keywords`, `meta_description`, `short_description`, `locale`) VALUES (2084,2084,'Tapis de coffre réversible','tapis-de-coffre-reversible-5ff061201b','Où que l’aventure vous porte;ce tapis pratique et étanche conserve votre coffre propre et sec en cas de transport d’équipement humide ou sale. Revêtu de moquette d\'un côté et de plastique de l\'autre;il s\'adapte à la taille de votre coffre à bagages;si bien qu\'il vous suffit de le retourner pour éviter l\'usure.',NULL,NULL,NULL,'fr_FR'),(2085,2085,'Plateau semi-rigide','plateau-semi-rigide-1ea061201','Pièce de protection en plastique souple à placer sur le plancher du compartiment à bagages. Adapté aux dimensions du compartiment à bagages.',NULL,NULL,NULL,'fr_FR'),(2086,2086,'Plateau semi-rigide (double plancher)','plateau-semi-rigide-double-plancher-1ea061201a','Pièce de protection en plastique souple à placer sur le plancher du compartiment à bagages. Avec double plancher et adapté aux dimensions du compartiment à bagages.',NULL,NULL,NULL,'fr_FR'),(2087,2087,'Porte-skis pour 4 paires de skis ou 2 snowboards','porte-skis-pour-4-paires-de-skis-ou-2-snowboards-000071129s','Vous allez fouler les pistes cet hiver ? Le porte-skis et snowboards peut transporter jusqu’à 4 paires de skis ou 2 snowboards et incorpore des patins en caoutchouc doux pour protéger votre équipement contre les rayures durant le transport. Il est compatible avec la plupart des barres de toit et ne nécessite pas d’outils supplémentaires pour l’installation. Non compatible avec les versions équipées de toit panoramique.',NULL,NULL,NULL,'fr_FR'),(2088,2088,'Porte-skis pour 6 paires de skis ou 4 snowboards','porte-skis-pour-6-paires-de-skis-ou-4-snowboards-000071129t','Vous allez fouler les pistes cet hiver ? Le porte-skis et snowboards peut transporter jusqu’à 6 paires de skis ou 4 snowboards et incorpore des patins en caoutchouc doux pour protéger votre équipement contre les rayures durant le transport. Il est compatible avec la plupart des barres de toit et ne nécessite pas d’outils supplémentaires pour l’installation. Également compatible avec les versions équipées de toit panoramique.',NULL,NULL,NULL,'fr_FR'),(2089,2089,'Barres de toit','barres-de-toit-5ff071151','Versatiles;élégantes sans oublier la sécurité. D’une capacité de charge maximale de 75 kg;ces barres sont incontournables pour ceux qui veulent tirer le meilleur parti de chaque instant.  Grâce à leur système antivol vous avez l’assurance que votre équipement est sécurisé lorsque vous le laissez sans surveillance.  Il est recommandé de faire installer les accessoires d’origine par un atelier CUPRA ou un partenaire de service.',NULL,NULL,NULL,'fr_FR'),(2090,2090,'Kit d’urgence CUPRA avec armoire à pharmacie (1 triangle)','kit-durgence-cupra-avec-armoire-a-pharmacie-1-triangle-6h3093990l','Prenez la route l\'esprit tranquille en sachant que vous êtes paré à toute éventualité. Ce kit d\'urgence comprend un triangle de signalisation;un gilet réfléchissant et une trousse de premiers secours. Évitez les accidents lorsque vous demandez de l’aide.',NULL,NULL,NULL,'fr_FR'),(2091,2091,'Tapis de sol en caoutchouc CUPRA (TPE)','tapis-de-sol-en-caoutchouc-cupra-tpe-5fg061500--041','Tapis en caoutchouc pour une meilleure protection contre la saleté et les liquides. Jeu de 4 pièces. Personnalisé avec le logo CUPRA. Pour les véhicules à conduite à gauche (LHD). Le tapis du conducteur et du passager sont dotés d\'un système de fixation.',NULL,NULL,NULL,'fr_FR'),(2092,2092,'Sweat CUPRA','sweat-cupra-6h1084130f-iaj','Sweat homme CUPRA taille 3XL',NULL,NULL,NULL,'fr_FR'),(2093,2093,'Siège sécurité KIDFIX i-Size','siege-securite-kidfix-i-size-000019906aj','Quoi de mieux que grandir en voyant défiler des paysages depuis la fenêtre de la voiture de nos parents ? Eh bien;le faire depuis le siège confortable et sécurisé KIDFIX i-Size pour enfants de 3,5 à 12 ans (de 15 à 36 kg).  Le nouveau KIDFIX i-SIZE a été conçu et approuvé selon la nouvelle norme i-Size (R129);avec un seul objectif en tête : une protection maximale.  Les technologies éprouvées XP-PAD;SICT et SecureGuard;sont désormais associées à la zone d\'assise qui a été repensée pour optimiser les performances en cas de collision;offrant ainsi une protection totale.',NULL,NULL,NULL,'fr_FR'),(2094,2094,'Siège sécurité KIDFIX 2S','siege-securite-kidfix-2-s-000019906s','Quoi de mieux que grandir en voyant des paysages depuis la fenêtre de la voiture de nos parents ? Eh bien;le faire depuis le siège confortable et sécurisé KIDFIX 2 S pour enfants de 3,5 à 12 ans (de 15 à 36 kg). Avec son dossier en forme de V doté du système SICT réglage;le siège offre plus d’espace pour l’enfant à mesure qu’il grandit;mais également une excellente protection lors de chocs latéraux. De plus;lorsque l’enfant atteint la taille de 135 cm;il est possible de retirer le dossier et l’utiliser comme siège élévateur. Le système SecureGuard et la pince de la ceinture garantiront sa bonne utilisation.',NULL,NULL,NULL,'fr_FR'),(2095,2095,'Câble de charge CUPRA','cable-de-charge-cupra-000051444ar','Solution de charge complète dans un packaging CUPRA - Câble MFI 3 en 1 : Câbles USB Type-C;Micro-USB et Lightning (Apple)        Design 3 en 1 qui permet la recharge et le transfert de données simultanément.        Taux de transfert de données jusqu\'à 480 Mbps        Sortie : 2,4 A.        Longueur du câble : 1 mètre • Adaptateur USB vers Type-C avec corps en aluminium',NULL,NULL,NULL,'fr_FR'),(2096,2096,'Démarreur 20 000 mAh+ chargeur','demarreur-20-000-m-ah-chargeur-000051763h','Obtenez l’alimentation dont vous avez besoin grâce à ce démarreur doté d’un système de pinces de démarrage de pointe qui évite les courts-circuits;d’une prise jack;d’un câble 3-en-1 de haute qualité et d’un étui anti-choc semi-rigide.',NULL,NULL,NULL,'fr_FR'),(2097,2097,'Lampe d’urgence','lampe-durgence-000052122a','Une lampe d’urgence pour signaler l’assistance sans avoir à quitter votre siège. Avertissez les usagers de la route de votre situation pour plus de sécurité. Le gyrophare se fixe sur toute surface en métal et s’allume automatiquement. Gardez les mains libres en l’utilisant en mode 360°.',NULL,NULL,NULL,'fr_FR'),(2098,2098,'Porte-surf','porte-surf-000071120ha','Facilement adaptable à taille et la forme de votre planche de surf. Peut transporter 1 ou 2 planches de surf et des mâts de planche à voile supplémentaires. Compatible avec toutes les barres de toit CUPRA.  Non compatible avec les versions équipées de toit panoramique.',NULL,NULL,NULL,'fr_FR'),(2099,2099,'Porte-vélos sur attelage','porte-velos-sur-attelage-000071128k','Le porte-vélos sur attelage peut transporter jusqu’à 2 vélos pour une charge maximale de 60 kg en toute sécurité. Qu’il s’agisse de VTT;vélo de route ou vélo électrique;la garniture en caoutchouc offre une protection supplémentaire pour garantir le transport en parfaite condition. Le chargement et le déchargement sont simples pour que vous passiez un maximum de temps sur deux roues.',NULL,NULL,NULL,'fr_FR'),(2100,2100,'Porte-skis et snowboards extensible','porte-skis-et-snowboards-extensible-000071129r','Vous allez fouler les pistes cet hiver ? Le porte-skis et snowboards extensible peut transporter jusqu’à 6 paires de skis ou 4 snowboards et incorpore des patins en caoutchouc doux pour protéger votre équipement contre les rayures durant le transport. Le mécanisme coulissant facilite le chargement;le rendant plus simple et sécurisé;pour que vous puissiez passer plus de temps sur les pistes. Non compatible avec les versions équipées de toit panoramique. Il est recommandé de faire installer les accessoires d’origine par un atelier CUPRA ou un partenaire de service.',NULL,NULL,NULL,'fr_FR'),(2101,2101,'Chaussettes à neige (Autosock) - 245/40 R19','chaussettes-a-neige-autosock-24540-r-19-000091375eh','Voyage à la montagne ? Améliorez l’adhérence sur la glace et la neige grâce aux chaussettes à neige. Faciles à poser et retirer;les chaussettes lavables et réutilisables sont homologuées TÜV et GS.',NULL,NULL,NULL,'fr_FR'),(2102,2102,'Gilet réfléchissant','gilet-reflechissant-000093056j','Rendez vous visible pour augmenter la sécurité dans les situations à risque sur le bord de la route. Ce gilet réfléchissant qui répond à toutes les exigences légales européennes est fabriqué à partir d\'un matériau principal ultra-léger avec une fermeture Velcro facile à boucler. Le gilet offre une luminosité maximale avec une bande réfléchissante 3M™ Scotchlite™.',NULL,NULL,NULL,'fr_FR'),(2103,2103,'Kit anticrevaison automatique','kit-anticrevaison-automatique-000093059ae','Pour une réparation rapide et temporaire des pneus crevés;le kit anti-crevaison comprend un produit d\'étanchéité en caoutchouc naturel qui vous permet de réparer le pneu pour parcourir une distance allant jusqu\'à 200 km à une vitesse de 80 km/h;ce qui vous donne la possibilité de rejoindre un endroit plus confortable.',NULL,NULL,NULL,'fr_FR'),(2104,2104,'Marteau brise-vitre','marteau-brise-vitre-000093101a','En cas de besoin de sortie d’urgence;ce marteau muni d’un cutter de ceinture de sécurité peut être utilisé pour briser le verre;y compris celui des vitres de voiture jusqu’à 15 mm d’épaisseur.',NULL,NULL,NULL,'fr_FR'),(2105,2105,'Triangle de signalisation (2 unités)','triangle-de-signalisation-2-unites-000093601a','La panne n\'arrive jamais au bon moment. Peu importe où vous vous trouvez;ces triangles de signalisation pliables aux pieds stables;fournis avec leur étui;sont conçus pour alerter les autres conducteurs de votre situation;améliorant ainsi la sécurité routière.',NULL,NULL,NULL,'fr_FR'),(2106,2106,'Gilet réfléchissant','gilet-reflechissant-000093900sa','Soyez vus et en sécurité dans le gilet réfléchissant haute visibilité. Hautement visible jour et nuit;il comprend des bandes réfléchissantes fabriquées par 3M.',NULL,NULL,NULL,'fr_FR'),(2107,2107,'Bavettes garde-boue arrière','bavettes-garde-boue-arriere-1ea075101a','Ne laissez pas l’état de la route interrompre votre aventure. Les bavettes garde-boue arrière protègent le pare-chocs et le soubassement de carrosserie de votre voiture;ce qui est idéal lorsque votre CUPRA vous emmène là où les routes ne vont pas.  Il est recommandé de faire installer les accessoires d’origine par un atelier CUPRA ou un partenaire de service.',NULL,NULL,NULL,'fr_FR'),(2108,2108,'Bavettes garde-boue avant','bavettes-garde-boue-avant-1ea075111a','Protection supplémentaire contre la saleté et les débris;les bavettes garde-boue avant protègent le soubassement de carrosserie de votre CUPRA contre la saleté et les débris projetés lors de la conduite sur des terrains difficiles. Il est recommandé de faire installer les accessoires d’origine par un atelier CUPRA ou un partenaire de service.',NULL,NULL,NULL,'fr_FR'),(2109,2109,'Tapis TPE (caoutchouc)','tapis-tpe-caoutchouc-1eb061500--041','Que toutes les aventures se terminent à l\'intérieur de votre CUPRA ne vous dérangera plus. Avec ce lot de 4 tapis en caoutchouc;vous bénéficiez d ’une protection supplémentaire contre la saleté et les liquides.',NULL,NULL,NULL,'fr_FR'),(2110,2110,'Tapis Premium noir (matériau recyclé + PVC)','tapis-premium-noir-materiau-recycle-pvc-1eb863011a-loe','Les accessoires de protection ne se contentent pas d\'être fonctionnels;ils peuvent aussi être sophistiqués. Les tapis en textile recyclé ECONYL hautement durables avec personnalisation CUPRA Born sont conçus pour maintenir le sol de votre CUPRA en parfait état.',NULL,NULL,NULL,'fr_FR'),(2111,2111,'Tapis Premium bleu (matériau recyclé + PVC)','tapis-premium-bleu-materiau-recycle-pvc-1eb863011b-loe','Les accessoires de protection ne se contentent pas d\'être fonctionnels;ils peuvent aussi être sophistiqués. Les tapis en textile recyclé ECONYL hautement durables avec personnalisation CUPRA Born sont conçus pour maintenir le sol de votre CUPRA en parfait état.',NULL,NULL,NULL,'fr_FR'),(2112,2112,'Tapis de coffre réversible','tapis-de-coffre-reversible-575061201a','Où que l’aventure vous porte;ce tapis pratique et étanche conserve votre coffre propre et sec en cas de transport d’équipement humide ou sale. Revêtu de moquette d\'un côté et de plastique de l\'autre;il s\'adapte à la taille de votre coffre à bagages;si bien qu\'il vous suffit de le retourner pour éviter l\'usure.',NULL,NULL,NULL,'fr_FR'),(2113,2113,'Bâche voiture CUPRA','bache-voiture-cupra-575061701b','Conservez votre CUPRA en parfait état en la protégeant des éléments. Cette bâche voiture exclusive noire affiche son style grâce au logo CUPRA blanc au niveau du capot.',NULL,NULL,NULL,'fr_FR'),(2114,2114,'Barres de toit','barres-de-toit-575071151','Versatiles;élégantes sans oublier la sécurité. D’une capacité de charge maximale de 75 kg;ces barres sont incontournables pour ceux qui veulent tirer le meilleur parti de chaque instant.  Grâce à leur système antivol vous avez l’assurance que votre équipement est sécurisé lorsque vous le laissez sans surveillance. Il est recommandé de faire installer les accessoires d’origine par un atelier CUPRA ou un partenaire de service.',NULL,NULL,NULL,'fr_FR'),(2115,2115,'Becquet de toit - Fibre de carbone cuivrée','becquet-de-toit-fibre-de-carbone-cuivree-575071640c-hpn','Élégance CUPRA intemporelle. Le becquet de toit aérodynamique en fibre de carbone cuivrée contraste avec la finition primaire de votre CUPRA pour renforcer son look sophistiqué mais néanmoins sportif;tout en augmentant ses performances. Il est recommandé de faire installer les accessoires d’origine par un atelier CUPRA ou un partenaire de service.',NULL,NULL,NULL,'fr_FR'),(2116,2116,'Bavettes garde-boue','bavettes-garde-boue-575075111a','Protection supplémentaire contre la saleté et les débris;les bavettes garde-boue avant protègent le soubassement de carrosserie de votre CUPRA contre la saleté et les débris projetés lors de la conduite sur terrains difficiles. Il est recommandé de faire installer les accessoires d’origine par un réparateur ou un spécialiste agréé CUPRA.',NULL,NULL,NULL,'fr_FR'),(2117,2117,'Coque de clé en fibre de carbone','coque-de-cle-en-fibre-de-carbone-575087013c','Coque de clé en fibre de carbone CUPRA.',NULL,NULL,NULL,'fr_FR'),(2118,2118,'Coque de clé en fibre de carbone cuivrée','coque-de-cle-en-fibre-de-carbone-cuivree-575087013d','Soulignez l’aspect unique et sophistiqué avec une coque de clé en fibre de carbone exclusive rehaussée du logo CUPRA.',NULL,NULL,NULL,'fr_FR'),(2119,2119,'Jantes Exclusive R 19\'\' en alliage noir et cuivre','jantes-exclusive-r-19-en-alliage-noir-et-cuivre-575601025an-xeb','Conduisez en toute élégance avec ces jantes légères 19\'\'’(48 cm) 5 branches en alliage noir et cuivre;tout en augmentant les performances de votre Ateca.   Il est recommandé de faire installer les accessoires d’origine par un atelier CUPRA ou un partenaire de service.  Le cache central et les vis des roues sont vendus séparément.',NULL,NULL,NULL,'fr_FR'),(2120,2120,'Jantes Exclusive R 19\'\' en alliage noir et argent','jantes-exclusive-r-19-en-alliage-noir-et-argent-575601025ap-kt2','Maximisez l\'\'esthétique sportive et sophistiquée de votre CUPRA Ateca tout en améliorant ses performances avec ces jantes légères 19\'\'’ (48 cm) 5 branches en alliage noir et argent. Il est recommandé de faire installer les accessoires d’origine par un atelier CUPRA ou un partenaire de service.  Le cache central et les vis des roues sont vendus séparément.',NULL,NULL,NULL,'fr_FR'),(2121,2121,'Jantes Exclusive Aero 19\'\' en alliage noir sport et cuivre','jantes-exclusive-aero-19-en-alliage-noir-sport-et-cuivre-575601025arxuu','Personnalisez davantage votre CUPRA Formentor avec ces jantes Exclusive Aero 19\'\' (48 cm) 5 branches en alliage noir sport et cuivre. Elles permettent de réduire la résistance et d\'\'augmenter le flux d\'\'air.  Il est recommandé de faire installer les accessoires d’origine par un atelier CUPRA ou un partenaire de service.  Le cache central et les vis des roues sont vendus séparément.',NULL,NULL,NULL,'fr_FR'),(2122,2122,'Jantes Aero 19\'\' en alliage usiné sport noir et cuivre','jantes-aero-19-en-alliage-usine-sport-noir-et-cuivre-575601025asxeb','Ces jantes légères 19\'\' (48 cm) 5 branches;en alliage noir sport et cuivre;attirent tous les regards. Elles offrent un aspect unique et renforcent le style exclusif de votre CUPRA Formentor.  Il est recommandé de faire installer les accessoires d’origine par un atelier CUPRA ou un partenaire de service.  Le cache central et les vis des roues sont vendus séparément.',NULL,NULL,NULL,'fr_FR'),(2123,2123,'Tapis de sol avec broderie cuivre CUPRA','tapis-de-sol-avec-broderie-cuivre-cupra-576863011d-loe','Les tapis de sols textiles durables gardent votre véhicule CUPRA propre et élégant. Rehaussé des lettres CUPRA en surpiqûre cuivre pour apporter une touche de sophistication.',NULL,NULL,NULL,'fr_FR'),(2124,2124,'Tapis de sol CUPRA aspect fibre de carbone','tapis-de-sol-cupra-aspect-fibre-de-carbone-576863011e-loe','Offrez une protection supplémentaire au plancher de votre CUPRA Ateca sans faire de compromis en ce qui concerne le style avec des tapis de sol aspect fibre de carbone et un matériau Nubuck durable;rehaussés du logo CUPRA en cuivre pour mettre en valeur la personnalité de votre voiture.',NULL,NULL,NULL,'fr_FR'),(2125,2125,'Porte-vélo','porte-velo-5f9071128','Transportez votre vélo sur le toit de votre CUPRA avec le porte-vélo Thule spécialement conçu ; installation facile et parfaitement sécurisée. Votre vélo est verrouillé automatiquement dans sa position lorsque vous ajustez le rack;alors que l’assemblage sécurisé l’empêche de chuter. Compatible avec les versions équipées de toit panoramique.',NULL,NULL,NULL,'fr_FR'),(2126,2126,'Tapis de coffre réversible','tapis-de-coffre-reversible-5fa061201a','Où que l’aventure vous porte;ce tapis pratique et étanche conserve votre coffre propre et sec en cas de transport d’équipement humide ou sale. Revêtu de moquette d\'un côté et de plastique de l\'autre;il s\'adapte à la taille de votre coffre à bagages;si bien qu\'il vous suffit de le retourner pour éviter l\'usure.',NULL,NULL,NULL,'fr_FR'),(2127,2127,'Pédalier en aluminium foncé (automatique)','pedalier-en-aluminium-fonce-automatique-5fa064205--9dg','En plus de rehausser l\'esthétique sportive de votre CUPRA;les pédales en aluminium foncé possèdent un revêtement en caoutchouc qui offre une adhérence supplémentaire et améliore la sensation de conduite sportive. Il est recommandé de faire installer les accessoires d’origine par un atelier CUPRA ou un partenaire de service.  Important : Repose-pieds non inclus.  Information complémentaire : la référence du repose-pieds est 5FA071750 9DG (non compatible avec CUPRA BORN).',NULL,NULL,NULL,'fr_FR'),(2128,2128,'Barres de toit','barres-de-toit-5fa071151','Versatiles;élégantes et sûres. Les barres de toit sont compatibles avec des porte-skis;porte-snowboards;et porte-surf. D’une capacité de charge maximale de 50 kg;ces barres constituent un accessoire essentiel pour les personnes en quête d’aventure. Non compatible avec les versions équipées de toit panoramique. Il est recommandé de faire installer les accessoires d’origine par un atelier CUPRA ou un partenaire de service.',NULL,NULL,NULL,'fr_FR'),(2129,2129,'Aileron de toit en fibre de carbone','aileron-de-toit-en-fibre-de-carbone-5fa071606a','Extension d’aileron standard en fibre de carbone fixée avec de la colle spéciale et du ruban double face. Instructions de montage incluses.  Le kit de colle doit être commandé séparément;réf. 000071781B (une unité est nécessaire pour monter le becquet). Pour version 5 portes uniquement. Il est recommandé de faire installer les accessoires d’origine par un atelier CUPRA ou un partenaire de service.',NULL,NULL,NULL,'fr_FR'),(2130,2130,'Becquet de toit - Fibre de carbone effet cuivré','becquet-de-toit-fibre-de-carbone-effet-cuivre-5fa071640b','Extension pour le becquet standard en fibre de carbone avec fil de cuivre. Fixation avec une colle spéciale et un ruban adhésif double face. Instructions de montage incluses. Colle spéciale non comprise. Compatible uniquement avec la version 5 portes;incompatible avec la version SP.  Le kit de colle doit être commandé séparément;réf. 000071781B (une unité est nécessaire pour monter le becquet).',NULL,NULL,NULL,'fr_FR'),(2131,2131,'Bavettes garde-boue avant','bavettes-garde-boue-avant-5fa075111a','Protection supplémentaire contre la saleté et les débris;les bavettes garde-boue avant protègent le soubassement de carrosserie de votre CUPRA contre la saleté et les débris projetés lors de la conduite sur des terrains difficiles. Il est recommandé de faire installer les accessoires d’origine par un atelier CUPRA ou un partenaire de service.',NULL,NULL,NULL,'fr_FR'),(2132,2132,'Jantes Aero 19\'\' en alliage noir et cuivre','jantes-aero-19-en-alliage-noir-et-cuivre-5fa601025l-xuu','Roulez en toute élégance grâce à ces jantes AERO 19\'\'’ (48 cm) aux détails en cuivre. Elles garantissent un flux d\'\'air plus régulier;réduisant de fait la résistance.  Il est recommandé de faire installer les accessoires d’origine par un atelier CUPRA ou un partenaire de service.  Le cache central et les vis des roues sont vendus séparément.',NULL,NULL,NULL,'fr_FR'),(2133,2133,'Jantes Performance 19\'\' en alliage noir sport et argent','jantes-performance-19-en-alliage-noir-sport-et-argent-5fa601025r-1ov','Ces jantes Performance en alliage 19\'\'’ (48 cm) noir sport et argent;conçues pour améliorer la tenue de route;offrent un maximum de sophistication à l\'\'esthétique de votre CUPRA Leon.  Il est recommandé de faire installer les accessoires d’origine par un atelier CUPRA ou un partenaire de service.  Le cache central et les vis des roues sont vendus séparément.',NULL,NULL,NULL,'fr_FR'),(2134,2134,'Jantes Performance 19\'\' en alliage noir sport et cuivre','jantes-performance-19-en-alliage-noir-sport-et-cuivre-5fa601025r-xeb','Conduisez avec élégance grâce à ces jantes Performance de 19\'\' (48 cm) et aux détails en cuivre. Elles garantissent un flux d\'\'air plus régulier;réduisant de fait la résistance.  Il est recommandé de faire installer les accessoires d’origine par un atelier CUPRA ou un partenaire de service.  Le cache central et les vis des roues sont vendus séparément.',NULL,NULL,NULL,'fr_FR'),(2135,2135,'Grille de séparation','grille-de-separation-5fe017221','Idéale pour garder vos animaux heureux;en place et en toute sécurité. La grille de séparation sépare l’espace passager du coffre et peut être facilement posée ou retirée sans outils. Il est recommandé de faire installer les accessoires d’origine par un atelier CUPRA ou un partenaire de service.',NULL,NULL,NULL,'fr_FR'),(2136,2136,'Tapis de coffre réversible','tapis-de-coffre-reversible-5fe061201a','Où que l’aventure vous porte;ce tapis pratique et étanche conserve votre coffre propre et sec en cas de transport d’équipement humide ou sale. Revêtu de moquette d\'un côté et de plastique de l\'autre;il s\'adapte à la taille de votre coffre à bagages;si bien qu\'il vous suffit de le retourner pour éviter l\'usure.',NULL,NULL,NULL,'fr_FR'),(2137,2137,'Tapis de coffre semi-rigide','tapis-de-coffre-semi-rigide-5fe061201e','Insert protecteur en plastique souple au design exclusif CUPRA à placer sur le plancher du coffre à bagages. S\'adapte au coffre de la CUPRA SP avec double plancher en position haute.   Valable pour les moteurs PHEV. Non valable pour les moteurs GNC.',NULL,NULL,NULL,'fr_FR'),(2138,2138,'Barres de toit','barres-de-toit-5fe071151','Versatiles;élégantes et sûres. Les barres de toit sont compatibles avec des porte-skis;porte-snowboards;et porte-surf. D’une capacité de charge maximale de 50 kg;ces barres constituent un accessoire essentiel pour les personnes en quête d’aventure. Il est recommandé de faire installer les accessoires d’origine par un atelier CUPRA ou un partenaire de service.',NULL,NULL,NULL,'fr_FR'),(2139,2139,'Tapis de coffre','tapis-de-coffre-5ff061201c','Tapis de protection en plastique souple à placer sur le plancher du coffre. Compatible uniquement avec le coffre à double plancher (adapté aux dimensions dans la position la plus haute) et les versions PHEV. Il est recommandé de faire installer les accessoires d’origine par un atelier CUPRA ou un partenaire de service.',NULL,NULL,NULL,'fr_FR'),(2140,2140,'Bavettes garde-boue arrière','bavettes-garde-boue-arriere-5ff075101','Protection supplémentaire contre la saleté et les débris;les bavettes garde-boue avant protègent le soubassement de carrosserie de votre CUPRA contre la saleté et les débris projetés lors de la conduite sur terrains difficiles. Il est recommandé de faire installer les accessoires d’origine par un réparateur ou un spécialiste agréé CUPRA.',NULL,NULL,NULL,'fr_FR'),(2141,2141,'Bavettes garde-boue avant','bavettes-garde-boue-avant-5ff075111','Protection supplémentaire contre la saleté et les débris;les bavettes garde-boue avant protègent le soubassement de carrosserie de votre CUPRA contre la saleté et les débris projetés lors de la conduite sur terrains difficiles. Il est recommandé de faire installer les accessoires d’origine par un réparateur ou un spécialiste agréé CUPRA.',NULL,NULL,NULL,'fr_FR'),(2142,2142,'Jantes Exclusive 19\'\' en alliage noir sport et cuivre','jantes-exclusive-19-en-alliage-noir-sport-et-cuivre-5ff601025e-xeb','Donnez à votre CUPRA Formentor un look sophistiqué et sportif. Ces jantes 19\'\'’ (48 cm) 5 branches en alliage noir sport et cuivre sont conçues pour allier performance et esthétique.  Il est recommandé de faire installer les accessoires d’origine par un atelier CUPRA ou un partenaire de service.  Le cache central et les vis des roues sont vendus séparément.',NULL,NULL,NULL,'fr_FR'),(2143,2143,'Jantes Aero 19\'\' en alliage sport noir et cuivre','jantes-aero-19-en-alliage-sport-noir-et-cuivre-5ff601025h-xuu','Personnalisez davantage votre CUPRA Formentor avec ces jantes AERO 19\'\' (48 cm) 5 branches en alliage noir sport et cuivre. Elles permettent de réduire la résistance et d\'\'augmenter le flux d\'\'air.  Il est recommandé de faire installer les accessoires d’origine par un atelier CUPRA ou un partenaire de service.  Non disponible combiné avec des freins Brembo.   Le cache central et les vis des roues sont vendus séparément.',NULL,NULL,NULL,'fr_FR'),(2144,2144,'Jantes Performance 18\'\' en alliage noir sport et argent','jantes-performance-18-en-alliage-noir-sport-et-argent-5ff601025j-1ov','Ces jantes Performance 18\'\' (46 cm) 5 branches en alliage noir sport et argent attirent tous les regards;tout en augmentant les performances et en maximisant le look sportif et sophistiqué de votre CUPRA Formentor.  Il est recommandé de faire installer les accessoires d’origine par un atelier CUPRA ou un partenaire de service.  Le cache central et les vis des roues sont vendus séparément.',NULL,NULL,NULL,'fr_FR'),(2145,2145,'Jantes Exclusive 19\'\' en alliage noir sport et cuivre','jantes-exclusive-19-en-alliage-noir-sport-et-cuivre-5ff601025k-xeb','Obtenez un look dynamique avec ces jantes Exclusive légères 19\'\' (48 cm) 5 branches en alliage noir sport et cuivre. Ces jantes offrent un aspect unique et rehaussent le style exclusif de votre CUPRA.  Il est recommandé de faire installer les accessoires d’origine par un atelier CUPRA ou un partenaire de service.  Le cache central et les vis des roues sont vendus séparément.',NULL,NULL,NULL,'fr_FR'),(2146,2146,'Tapis de sol avec broderie cuivre CUPRA','tapis-de-sol-avec-broderie-cuivre-cupra-5fg863011l-loe','Les accessoires de protection ne se contentent pas d\'être fonctionnels;ils peuvent aussi être élégants. Les tapis de sol textiles durables;rehaussés d’une élégante broderie CUPRA;sont conçus pour conserver le plancher de votre CUPRA dans les meilleures conditions.',NULL,NULL,NULL,'fr_FR'),(2147,2147,'Tapis de sol CUPRA aspect fibre de carbone','tapis-de-sol-cupra-aspect-fibre-de-carbone-5fg863011m-loe','Offrez une protection supplémentaire au plancher de votre CUPRA sans faire de compromis sur le style avec des tapis de sol aspect fibre de carbone et un matériau Nubuck durable;rehaussés du logo CUPRA en cuivre pour mettre en valeur la personnalité de votre voiture.',NULL,NULL,NULL,'fr_FR'),(2148,2148,'Tapis de sol CUPRA Bleu Essence','tapis-de-sol-cupra-bleu-essence-5fg863011n-loe','Hautement durables pour éviter l\'usure;les tapis de sol CUPRA en similicuir bleu pétrole préservent l\'aspect sophistiqué de l\'habitacle. Personnalisés avec le logo CUPRA.',NULL,NULL,NULL,'fr_FR'),(2149,2149,'Tapis de sol CUPRA VZ5 Petrol','tapis-de-sol-cupra-vz-5-petrol-5fg863011p-loe','Tapis standard avec partie inférieure antidérapante;personnalisé avec du PVC bleu pétrole. Jeu de 4 pièces. Pour les véhicules à conduite à gauche (LHD). Le tapis du passager est doté d\'un système de fixation.',NULL,NULL,NULL,'fr_FR'),(2150,2150,'Tapis de sol CUPRA VZ5 Soul','tapis-de-sol-cupra-vz-5-soul-5fg863011q-loe','Tapis standard avec partie inférieure antidérapante;personnalisé avec du PVC Soul Black. Jeu de 4 pièces. Pour les véhicules à conduite à gauche (LHD). Le tapis du passager est doté d\'un système de fixation.',NULL,NULL,NULL,'fr_FR'),(2151,2151,'Bâche voiture CUPRA','bache-voiture-cupra-6h3061701','Protégez votre CUPRA des intempéries grâce à cette bâche 100% polyester 200 g/m2 de couleur grise. Rehaussée du logo CUPRA sur le capot et les lettres CUPRA sur la porte. Qui a dit que protection et élégance étaient incompatibles ? La bâche est élastique. N’oubliez pas de bien l’étirer pour qu’elle s’adapte à votre CUPRA et la protège.',NULL,NULL,NULL,'fr_FR'),(2152,2152,'Bâche voiture CUPRA','bache-voiture-cupra-6h3061701a','Protégez votre CUPRA des intempéries grâce à cette bâche 100% polyester 200 g/m2 de couleur grise. Rehaussée du logo CUPRA sur le capot et les lettres CUPRA sur la porte. Qui a dit que protection et élégance étaient incompatibles ?',NULL,NULL,NULL,'fr_FR'),(2153,2153,'Bâche voiture CUPRA','bache-voiture-cupra-6h3061701b','Protégez votre CUPRA des intempéries grâce à cette bâche 100% polyester 200 g/m2 de couleur grise. Rehaussée du logo CUPRA sur le capot et les lettres CUPRA sur la porte. Qui a dit que protection et élégance étaient incompatibles ?',NULL,NULL,NULL,'fr_FR');
/*!40000 ALTER TABLE `sylius_product_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_variant`
--

DROP TABLE IF EXISTS `sylius_product_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_variant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `shipping_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `on_hold` int(11) NOT NULL,
  `on_hand` int(11) NOT NULL,
  `tracked` tinyint(1) NOT NULL,
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `depth` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `position` int(11) NOT NULL,
  `shipping_required` tinyint(1) NOT NULL,
  `version` int(11) NOT NULL DEFAULT 1,
  `enabled` tinyint(1) NOT NULL,
  `synced_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A29B52377153098` (`code`),
  KEY `IDX_A29B5234584665A` (`product_id`),
  KEY `IDX_A29B5239DF894ED` (`tax_category_id`),
  KEY `IDX_A29B5239E2D1A41` (`shipping_category_id`),
  CONSTRAINT `FK_A29B5234584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_A29B5239DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_A29B5239E2D1A41` FOREIGN KEY (`shipping_category_id`) REFERENCES `sylius_shipping_category` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2161 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_variant`
--

LOCK TABLES `sylius_product_variant` WRITE;
/*!40000 ALTER TABLE `sylius_product_variant` DISABLE KEYS */;
INSERT INTO `sylius_product_variant` (`id`, `product_id`, `tax_category_id`, `shipping_category_id`, `code`, `created_at`, `updated_at`, `on_hold`, `on_hand`, `tracked`, `width`, `height`, `depth`, `weight`, `position`, `shipping_required`, `version`, `enabled`, `synced_at`) VALUES (2091,2084,NULL,NULL,'5FF061201B','2023-03-24 10:26:57','2023-05-02 13:03:01',0,0,0,NULL,NULL,NULL,0,0,1,12,1,'2023-05-02 13:03:01'),(2092,2085,NULL,NULL,'1EA061201','2023-03-27 08:12:58','2023-05-02 13:02:56',0,15,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:02:56'),(2093,2086,NULL,NULL,'1EA061201A','2023-03-27 08:12:58','2023-05-02 13:02:56',0,7,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:02:56'),(2094,2087,NULL,NULL,'000071129S','2023-03-27 08:12:58','2023-05-02 13:03:21',0,52,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:21'),(2095,2088,NULL,NULL,'000071129T','2023-03-27 08:12:58','2023-05-02 13:03:21',0,0,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:21'),(2096,2089,NULL,NULL,'5FF071151','2023-03-27 08:12:58','2023-05-02 13:03:01',0,24,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:01'),(2097,2090,NULL,NULL,'6H3093990L','2023-03-27 08:12:58','2023-05-02 13:02:54',0,1116,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:02:54'),(2098,2091,NULL,NULL,'5FG061500__041','2023-03-27 08:12:58','2023-05-02 13:03:01',0,15,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:01'),(2099,2092,NULL,NULL,'6H1084130F_IAJ','2023-03-27 08:12:58','2023-05-02 13:03:10',0,2,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:10'),(2100,2093,NULL,NULL,'000019906AJ','2023-03-27 08:12:58','2023-05-02 13:02:55',0,0,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:02:55'),(2101,2094,NULL,NULL,'000019906S','2023-03-27 08:12:58','2023-05-02 13:03:21',0,0,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:21'),(2102,2095,NULL,NULL,'000051444AR','2023-03-27 08:12:58','2023-05-02 13:04:34',0,387,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:04:34'),(2103,2096,NULL,NULL,'000051763H','2023-03-27 08:12:58','2023-05-02 13:03:19',0,0,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:19'),(2104,2097,NULL,NULL,'000052122A','2023-03-27 08:12:58','2023-05-02 13:03:48',0,0,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:48'),(2105,2098,NULL,NULL,'000071120HA','2023-03-27 08:12:58','2023-05-02 13:04:29',0,1,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:04:29'),(2106,2099,NULL,NULL,'000071128K','2023-03-27 08:12:59','2023-05-02 13:03:45',0,77,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:45'),(2107,2100,NULL,NULL,'000071129R','2023-03-27 08:12:59','2023-05-02 13:03:28',0,0,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:27'),(2108,2101,NULL,NULL,'000091375EH','2023-03-27 08:12:59','2023-05-02 13:03:18',0,0,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:17'),(2109,2102,NULL,NULL,'000093056J','2023-03-27 08:12:59','2023-05-02 13:02:52',0,0,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:02:52'),(2110,2103,NULL,NULL,'000093059AE','2023-03-27 08:12:59','2023-05-02 13:03:24',0,0,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:24'),(2111,2104,NULL,NULL,'000093101A','2023-03-27 08:12:59','2023-03-27 08:12:59',0,0,0,NULL,NULL,NULL,0,0,1,1,1,NULL),(2112,2105,NULL,NULL,'000093601A','2023-03-27 08:12:59','2023-05-02 13:04:32',0,0,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:04:32'),(2113,2106,NULL,NULL,'000093900SA','2023-03-27 08:12:59','2023-05-02 13:04:32',0,0,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:04:32'),(2114,2107,NULL,NULL,'1EA075101A','2023-03-27 08:12:59','2023-05-02 13:02:56',0,8,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:02:56'),(2115,2108,NULL,NULL,'1EA075111A','2023-03-27 08:12:59','2023-05-02 13:02:56',0,9,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:02:56'),(2116,2109,NULL,NULL,'1EB061500__041','2023-03-27 08:12:59','2023-05-02 13:02:56',0,27,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:02:56'),(2117,2110,NULL,NULL,'1EB863011A_LOE','2023-03-27 08:12:59','2023-05-02 13:02:56',0,1530,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:02:56'),(2118,2111,NULL,NULL,'1EB863011B_LOE','2023-03-27 08:12:59','2023-05-02 13:02:56',0,158,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:02:56'),(2119,2112,NULL,NULL,'575061201A','2023-03-27 08:12:59','2023-05-02 13:03:20',0,26,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:20'),(2120,2113,NULL,NULL,'575061701B','2023-03-27 08:12:59','2023-05-02 13:03:06',0,0,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:06'),(2121,2114,NULL,NULL,'575071151','2023-03-27 08:13:00','2023-05-02 13:03:24',0,3,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:24'),(2122,2115,NULL,NULL,'575071640C_HPN','2023-03-27 08:13:00','2023-05-02 13:03:03',0,0,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:03'),(2123,2116,NULL,NULL,'575075111A','2023-03-27 08:13:00','2023-05-02 13:03:13',0,0,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:13'),(2124,2117,NULL,NULL,'575087013C','2023-03-27 08:13:00','2023-05-02 13:03:09',0,0,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:09'),(2125,2118,NULL,NULL,'575087013D','2023-03-27 08:13:00','2023-05-02 13:03:07',0,0,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:07'),(2126,2119,NULL,NULL,'575601025AN_XEB','2023-03-27 08:13:00','2023-03-27 08:13:00',0,0,0,NULL,NULL,NULL,0,0,1,1,1,NULL),(2127,2120,NULL,NULL,'575601025AP_KT2','2023-03-27 08:13:00','2023-03-27 08:13:00',0,0,0,NULL,NULL,NULL,0,0,1,1,1,NULL),(2128,2121,NULL,NULL,'575601025ARXUU','2023-03-27 08:13:00','2023-03-27 08:13:00',0,0,0,NULL,NULL,NULL,0,0,1,1,1,NULL),(2129,2122,NULL,NULL,'575601025ASXEB','2023-03-27 08:13:00','2023-03-27 08:13:00',0,0,0,NULL,NULL,NULL,0,0,1,1,1,NULL),(2130,2123,NULL,NULL,'576863011D_LOE','2023-03-27 08:13:00','2023-05-02 13:02:55',0,0,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:02:55'),(2131,2124,NULL,NULL,'576863011E_LOE','2023-03-27 08:13:00','2023-05-02 13:02:55',0,0,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:02:55'),(2132,2125,NULL,NULL,'5F9071128','2023-03-27 08:13:00','2023-05-02 13:03:13',0,5,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:13'),(2133,2126,NULL,NULL,'5FA061201A','2023-03-27 08:13:00','2023-05-02 13:03:19',0,0,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:19'),(2134,2127,NULL,NULL,'5FA064205__9DG','2023-03-27 08:13:00','2023-05-02 13:03:02',0,24,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:02'),(2135,2128,NULL,NULL,'5FA071151','2023-03-27 08:13:00','2023-05-02 13:03:19',0,9,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:19'),(2136,2129,NULL,NULL,'5FA071606A','2023-03-27 08:13:01','2023-05-02 13:02:57',0,0,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:02:57'),(2137,2130,NULL,NULL,'5FA071640B','2023-03-27 08:13:01','2023-05-02 13:02:57',0,0,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:02:57'),(2138,2131,NULL,NULL,'5FA075111A','2023-03-27 08:13:01','2023-05-02 13:03:28',0,1,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:28'),(2139,2132,NULL,NULL,'5FA601025L_XUU','2023-03-27 08:13:01','2023-03-27 08:13:01',0,0,0,NULL,NULL,NULL,0,0,1,1,1,NULL),(2140,2133,NULL,NULL,'5FA601025R_1OV','2023-03-27 08:13:01','2023-03-27 08:13:01',0,0,0,NULL,NULL,NULL,0,0,1,1,1,NULL),(2141,2134,NULL,NULL,'5FA601025R_XEB','2023-03-27 08:13:01','2023-03-27 08:13:01',0,0,0,NULL,NULL,NULL,0,0,1,1,1,NULL),(2142,2135,NULL,NULL,'5FE017221','2023-03-27 08:13:01','2023-05-02 13:03:19',0,0,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:19'),(2143,2136,NULL,NULL,'5FE061201A','2023-03-27 08:13:01','2023-05-02 13:03:19',0,3,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:19'),(2144,2137,NULL,NULL,'5FE061201E','2023-03-27 08:13:01','2023-05-02 13:03:03',0,0,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:03'),(2145,2138,NULL,NULL,'5FE071151','2023-03-27 08:13:01','2023-05-02 13:03:10',0,10,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:10'),(2146,2139,NULL,NULL,'5FF061201C','2023-03-27 08:13:01','2023-05-02 13:02:57',0,0,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:02:57'),(2147,2140,NULL,NULL,'5FF075101','2023-03-27 08:13:01','2023-05-02 13:03:00',0,0,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:00'),(2148,2141,NULL,NULL,'5FF075111','2023-03-27 08:13:01','2023-05-02 13:03:00',0,0,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:00'),(2149,2142,NULL,NULL,'5FF601025E_XEB','2023-03-27 08:13:01','2023-03-27 08:13:01',0,0,0,NULL,NULL,NULL,0,0,1,1,1,NULL),(2150,2143,NULL,NULL,'5FF601025H_XUU','2023-03-27 08:13:01','2023-03-27 08:13:01',0,0,0,NULL,NULL,NULL,0,0,1,1,1,NULL),(2151,2144,NULL,NULL,'5FF601025J_1OV','2023-03-27 08:13:02','2023-03-27 08:13:02',0,0,0,NULL,NULL,NULL,0,0,1,1,1,NULL),(2152,2145,NULL,NULL,'5FF601025K_XEB','2023-03-27 08:13:02','2023-03-27 08:13:02',0,0,0,NULL,NULL,NULL,0,0,1,1,1,NULL),(2153,2146,NULL,NULL,'5FG863011L_LOE','2023-03-27 08:13:02','2023-05-02 13:02:56',0,760,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:02:56'),(2154,2147,NULL,NULL,'5FG863011M_LOE','2023-03-27 08:13:02','2023-05-02 13:02:56',0,1305,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:02:56'),(2155,2148,NULL,NULL,'5FG863011N_LOE','2023-03-27 08:13:02','2023-05-02 13:02:56',0,25,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:02:56'),(2156,2149,NULL,NULL,'5FG863011P_LOE','2023-03-27 08:13:02','2023-05-02 13:02:56',0,9,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:02:56'),(2157,2150,NULL,NULL,'5FG863011Q_LOE','2023-03-27 08:13:02','2023-05-02 13:02:56',0,22,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:02:56'),(2158,2151,NULL,NULL,'6H3061701','2023-03-27 08:13:02','2023-05-02 13:03:05',0,1,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:05'),(2159,2152,NULL,NULL,'6H3061701A','2023-03-27 08:13:02','2023-05-02 13:03:05',0,8,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:05'),(2160,2153,NULL,NULL,'6H3061701B','2023-03-27 08:13:02','2023-05-02 13:03:05',0,8,0,NULL,NULL,NULL,0,0,1,8,1,'2023-05-02 13:03:05');
/*!40000 ALTER TABLE `sylius_product_variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_variant_option_value`
--

DROP TABLE IF EXISTS `sylius_product_variant_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_variant_option_value` (
  `variant_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  PRIMARY KEY (`variant_id`,`option_value_id`),
  KEY `IDX_76CDAFA13B69A9AF` (`variant_id`),
  KEY `IDX_76CDAFA1D957CA06` (`option_value_id`),
  CONSTRAINT `FK_76CDAFA13B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_76CDAFA1D957CA06` FOREIGN KEY (`option_value_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_variant_option_value`
--

LOCK TABLES `sylius_product_variant_option_value` WRITE;
/*!40000 ALTER TABLE `sylius_product_variant_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_variant_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_variant_translation`
--

DROP TABLE IF EXISTS `sylius_product_variant_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_variant_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_variant_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_8DC18EDC2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_8DC18EDC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1369 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_variant_translation`
--

LOCK TABLES `sylius_product_variant_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_variant_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_variant_translation` (`id`, `translatable_id`, `name`, `locale`) VALUES (1366,2091,NULL,'fr_FR'),(1367,2120,NULL,'fr_FR'),(1368,2160,NULL,'fr_FR');
/*!40000 ALTER TABLE `sylius_product_variant_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion`
--

DROP TABLE IF EXISTS `sylius_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `exclusive` tinyint(1) NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL,
  `coupon_based` tinyint(1) NOT NULL,
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F157396377153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion`
--

LOCK TABLES `sylius_promotion` WRITE;
/*!40000 ALTER TABLE `sylius_promotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_action`
--

DROP TABLE IF EXISTS `sylius_promotion_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_933D0915139DF194` (`promotion_id`),
  CONSTRAINT `FK_933D0915139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_action`
--

LOCK TABLES `sylius_promotion_action` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_channels`
--

DROP TABLE IF EXISTS `sylius_promotion_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_channels` (
  `promotion_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`promotion_id`,`channel_id`),
  KEY `IDX_1A044F64139DF194` (`promotion_id`),
  KEY `IDX_1A044F6472F5A1AA` (`channel_id`),
  CONSTRAINT `FK_1A044F64139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_1A044F6472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_channels`
--

LOCK TABLES `sylius_promotion_channels` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_channels` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_coupon`
--

DROP TABLE IF EXISTS `sylius_promotion_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `per_customer_usage_limit` int(11) DEFAULT NULL,
  `reusable_from_cancelled_orders` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B04EBA8577153098` (`code`),
  KEY `IDX_B04EBA85139DF194` (`promotion_id`),
  CONSTRAINT `FK_B04EBA85139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_coupon`
--

LOCK TABLES `sylius_promotion_coupon` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_order`
--

DROP TABLE IF EXISTS `sylius_promotion_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_order` (
  `order_id` int(11) NOT NULL,
  `promotion_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`promotion_id`),
  KEY `IDX_BF9CF6FB8D9F6D38` (`order_id`),
  KEY `IDX_BF9CF6FB139DF194` (`promotion_id`),
  CONSTRAINT `FK_BF9CF6FB139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`),
  CONSTRAINT `FK_BF9CF6FB8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_order`
--

LOCK TABLES `sylius_promotion_order` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_rule`
--

DROP TABLE IF EXISTS `sylius_promotion_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_2C188EA8139DF194` (`promotion_id`),
  CONSTRAINT `FK_2C188EA8139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_rule`
--

LOCK TABLES `sylius_promotion_rule` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_province`
--

DROP TABLE IF EXISTS `sylius_province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `abbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B5618FE477153098` (`code`),
  UNIQUE KEY `UNIQ_B5618FE4F92F3E705E237E06` (`country_id`,`name`),
  KEY `IDX_B5618FE4F92F3E70` (`country_id`),
  CONSTRAINT `FK_B5618FE4F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `sylius_country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_province`
--

LOCK TABLES `sylius_province` WRITE;
/*!40000 ALTER TABLE `sylius_province` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipment`
--

DROP TABLE IF EXISTS `sylius_shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tracking` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `shipped_at` datetime DEFAULT NULL,
  `adjustments_total` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FD707B3319883967` (`method_id`),
  KEY `IDX_FD707B338D9F6D38` (`order_id`),
  CONSTRAINT `FK_FD707B3319883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_shipping_method` (`id`),
  CONSTRAINT `FK_FD707B338D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipment`
--

LOCK TABLES `sylius_shipment` WRITE;
/*!40000 ALTER TABLE `sylius_shipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_category`
--

DROP TABLE IF EXISTS `sylius_shipping_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipping_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B1D6465277153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_category`
--

LOCK TABLES `sylius_shipping_category` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_shipping_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_method`
--

DROP TABLE IF EXISTS `sylius_shipping_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipping_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `zone_id` int(11) NOT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `category_requirement` int(11) NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `archived_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5FB0EE1177153098` (`code`),
  KEY `IDX_5FB0EE1112469DE2` (`category_id`),
  KEY `IDX_5FB0EE119F2C3FAB` (`zone_id`),
  KEY `IDX_5FB0EE119DF894ED` (`tax_category_id`),
  CONSTRAINT `FK_5FB0EE1112469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_shipping_category` (`id`),
  CONSTRAINT `FK_5FB0EE119DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_5FB0EE119F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_method`
--

LOCK TABLES `sylius_shipping_method` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_method` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_shipping_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_method_channels`
--

DROP TABLE IF EXISTS `sylius_shipping_method_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipping_method_channels` (
  `shipping_method_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`shipping_method_id`,`channel_id`),
  KEY `IDX_2D9833355F7D6850` (`shipping_method_id`),
  KEY `IDX_2D98333572F5A1AA` (`channel_id`),
  CONSTRAINT `FK_2D9833355F7D6850` FOREIGN KEY (`shipping_method_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_2D98333572F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_method_channels`
--

LOCK TABLES `sylius_shipping_method_channels` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_method_channels` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_shipping_method_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_method_rule`
--

DROP TABLE IF EXISTS `sylius_shipping_method_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipping_method_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_method_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_88A0EB655F7D6850` (`shipping_method_id`),
  CONSTRAINT `FK_88A0EB655F7D6850` FOREIGN KEY (`shipping_method_id`) REFERENCES `sylius_shipping_method` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_method_rule`
--

LOCK TABLES `sylius_shipping_method_rule` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_method_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_shipping_method_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_method_translation`
--

DROP TABLE IF EXISTS `sylius_shipping_method_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipping_method_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_shipping_method_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_2B37DB3D2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_2B37DB3D2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_method_translation`
--

LOCK TABLES `sylius_shipping_method_translation` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_method_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_shipping_method_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shop_billing_data`
--

DROP TABLE IF EXISTS `sylius_shop_billing_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shop_billing_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shop_billing_data`
--

LOCK TABLES `sylius_shop_billing_data` WRITE;
/*!40000 ALTER TABLE `sylius_shop_billing_data` DISABLE KEYS */;
INSERT INTO `sylius_shop_billing_data` (`id`, `company`, `tax_id`, `country_code`, `street`, `city`, `postcode`) VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sylius_shop_billing_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shop_user`
--

DROP TABLE IF EXISTS `sylius_shop_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shop_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `encoder_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7C2B74809395C3F3` (`customer_id`),
  CONSTRAINT `FK_7C2B74809395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shop_user`
--

LOCK TABLES `sylius_shop_user` WRITE;
/*!40000 ALTER TABLE `sylius_shop_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_shop_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_tax_category`
--

DROP TABLE IF EXISTS `sylius_tax_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_tax_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_221EB0BE77153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_tax_category`
--

LOCK TABLES `sylius_tax_category` WRITE;
/*!40000 ALTER TABLE `sylius_tax_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_tax_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_tax_rate`
--

DROP TABLE IF EXISTS `sylius_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_tax_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,5) NOT NULL,
  `included_in_price` tinyint(1) NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3CD86B2E77153098` (`code`),
  KEY `IDX_3CD86B2E12469DE2` (`category_id`),
  KEY `IDX_3CD86B2E9F2C3FAB` (`zone_id`),
  CONSTRAINT `FK_3CD86B2E12469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_tax_category` (`id`),
  CONSTRAINT `FK_3CD86B2E9F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_tax_rate`
--

LOCK TABLES `sylius_tax_rate` WRITE;
/*!40000 ALTER TABLE `sylius_tax_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_taxon`
--

DROP TABLE IF EXISTS `sylius_taxon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_taxon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tree_root` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tree_left` int(11) NOT NULL,
  `tree_right` int(11) NOT NULL,
  `tree_level` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `tags` varchar(125) COLLATE utf8_unicode_ci DEFAULT NULL,
  `breadcrumb` tinyint(1) DEFAULT NULL,
  `color` varchar(125) COLLATE utf8_unicode_ci DEFAULT NULL,
  `synced_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CFD811CA77153098` (`code`),
  KEY `IDX_CFD811CAA977936C` (`tree_root`),
  KEY `IDX_CFD811CA727ACA70` (`parent_id`),
  CONSTRAINT `FK_CFD811CA727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_CFD811CAA977936C` FOREIGN KEY (`tree_root`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxon`
--

LOCK TABLES `sylius_taxon` WRITE;
/*!40000 ALTER TABLE `sylius_taxon` DISABLE KEYS */;
INSERT INTO `sylius_taxon` (`id`, `tree_root`, `parent_id`, `code`, `tree_left`, `tree_right`, `tree_level`, `position`, `created_at`, `updated_at`, `enabled`, `tags`, `breadcrumb`, `color`, `synced_at`) VALUES (1,3,3,'protection',2,23,1,5,'2022-03-04 13:14:08','2022-05-31 12:28:16',1,NULL,1,'#000000',NULL),(2,3,1,'boot_tray',3,4,2,1,'2022-03-04 13:14:48','2022-05-31 12:28:44',1,NULL,1,'#000000',NULL),(3,3,NULL,'accessories',1,112,0,1,'2022-03-04 13:19:25','2022-05-31 11:01:53',1,NULL,0,'#000000',NULL),(7,7,NULL,'vehicles',1,24,0,1,'2022-03-04 15:33:09','2022-04-04 09:08:18',1,NULL,0,NULL,NULL),(10,3,15,'barres',25,26,2,1,'2022-03-09 13:45:26','2022-04-25 10:04:24',1,NULL,1,'#000000',NULL),(11,3,1,'boot_mats',5,6,2,6,'2022-04-04 14:15:16','2022-05-31 12:39:06',1,NULL,1,'#000000',NULL),(12,3,1,'floor_mats',7,8,2,7,'2022-04-04 14:16:13','2022-05-31 12:39:23',1,NULL,1,'#000000',NULL),(13,3,1,'loading_sill_protection',9,10,2,4,'2022-04-04 14:17:41','2022-05-31 12:30:23',1,NULL,1,'#000000',NULL),(14,3,1,'mud_flaps',11,12,2,3,'2022-04-04 14:18:17','2022-05-31 12:29:03',1,NULL,0,'#000000',NULL),(15,3,3,'transport',24,39,1,0,'2022-04-04 14:18:49','2022-04-25 10:04:56',1,NULL,1,'#000000',NULL),(19,3,3,'confort',40,49,1,2,'2022-04-04 14:37:12','2023-03-30 12:08:55',1,NULL,1,'#000000',NULL),(20,3,3,'design',50,65,1,1,'2022-04-04 14:37:28','2022-05-31 11:03:50',1,NULL,1,'#000000',NULL),(21,3,3,'security',66,83,1,3,'2022-04-04 14:37:48','2023-03-17 16:00:17',1,NULL,0,'#000000',NULL),(22,3,3,'connectivity',84,89,1,4,'2022-04-04 14:38:08','2022-05-31 12:26:38',1,NULL,0,'#000000',NULL),(23,3,3,'electromobility',90,95,1,6,'2022-04-04 14:39:13','2023-03-30 12:09:05',1,NULL,0,'#000000',NULL),(24,3,21,'lightbulbs',67,68,2,1,'2022-04-04 14:44:10','2022-05-31 12:04:03',1,NULL,0,'#000000',NULL),(25,3,19,'travel_support',41,42,2,2,'2022-04-04 14:48:43','2022-05-04 09:11:01',1,NULL,1,'#000000',NULL),(26,3,15,'bike_carrier',27,28,2,3,'2022-04-04 15:50:46','2022-04-25 13:58:53',1,NULL,0,'#000000',NULL),(27,3,20,'tailgate_strips',51,52,2,1,'2022-04-04 15:59:28','2022-05-31 12:01:18',1,NULL,0,'#000000',NULL),(28,3,21,'dog_safety_belt',69,70,2,3,'2022-04-04 16:08:55','2022-05-31 12:12:07',1,NULL,1,'#000000',NULL),(30,3,15,'cargo_safety',29,30,2,5,'2022-04-25 14:00:08','2022-05-13 08:00:29',0,NULL,0,'#000000',NULL),(31,3,15,'other_transport_accessories',31,32,2,6,'2022-04-25 14:00:47','2022-04-25 14:00:47',1,NULL,0,'#000000',NULL),(32,3,15,'roof_boxes',33,34,2,2,'2022-04-25 14:01:19','2022-05-04 09:10:24',1,NULL,0,'#000000',NULL),(33,3,15,'ski_rack',35,36,2,4,'2022-04-25 14:01:46','2022-05-04 09:10:34',1,NULL,0,'#000000',NULL),(34,3,15,'coupling',37,38,2,0,'2022-04-25 14:02:42','2022-05-04 09:10:09',1,NULL,0,'#000000',NULL),(35,3,20,'steps',53,54,2,4,'2022-04-25 14:03:09','2022-05-13 08:00:19',0,NULL,0,'#000000',NULL),(36,3,20,'wheel_accessories',55,56,2,0,'2022-04-25 14:03:56','2022-05-04 09:10:40',1,NULL,0,'#000000',NULL),(37,3,20,'mirror_cover',57,58,2,2,'2022-04-25 14:04:25','2022-05-04 09:10:47',1,NULL,0,'#000000',NULL),(38,3,20,'rims',59,60,2,3,'2022-04-25 14:04:47','2022-05-04 09:10:50',1,NULL,0,'#000000',NULL),(39,3,20,'pedals',61,62,2,5,'2022-04-25 14:05:07','2022-04-25 14:05:07',1,NULL,0,'#000000',NULL),(40,3,20,'other_design_accesories',63,64,2,6,'2022-04-25 14:05:30','2022-04-25 14:05:30',1,NULL,0,'#000000',NULL),(41,3,19,'spoilers',43,44,2,0,'2022-04-25 14:06:13','2022-05-13 07:59:58',0,NULL,0,'#000000',NULL),(42,3,19,'sunshade',45,46,2,1,'2022-04-25 14:06:36','2022-04-25 14:06:36',1,NULL,0,'#000000',NULL),(43,3,19,'other_confort_accesories',47,48,2,3,'2022-04-25 14:07:00','2022-04-25 14:07:00',1,NULL,0,'#000000',NULL),(44,3,21,'child_seat',71,72,2,7,'2022-04-25 14:07:53','2022-05-04 09:11:22',1,NULL,0,'#000000',NULL),(45,3,21,'security_kits',73,74,2,4,'2022-04-25 14:08:23','2022-05-04 09:11:06',1,NULL,0,'#000000',NULL),(46,3,21,'spare_wheel',75,76,2,6,'2022-04-25 14:08:48','2022-04-25 14:08:48',1,NULL,0,'#000000',NULL),(47,3,21,'tracking_and_alarme_kit',77,78,2,2,'2022-04-25 14:09:24','2022-05-12 09:07:18',0,NULL,0,'#000000',NULL),(48,3,21,'driving_assistance',79,80,2,0,'2022-04-25 14:09:54','2022-05-13 08:01:22',0,NULL,0,'#000000',NULL),(49,3,21,'license_plate',81,82,2,5,'2022-04-25 14:10:25','2022-05-05 09:28:35',0,NULL,0,'#000000',NULL),(50,3,22,'multimedia_cable',85,86,2,0,'2022-04-25 14:11:05','2022-04-25 14:11:05',1,NULL,0,'#000000',NULL),(51,3,22,'other_connectivity_accesories',87,88,2,1,'2022-04-25 14:11:33','2022-04-25 14:11:33',1,NULL,0,'#000000',NULL),(52,3,3,'winter',96,101,1,7,'2022-04-25 14:11:52','2023-03-17 16:01:09',1,NULL,0,'#000000',NULL),(53,3,52,'winter_wheel',97,98,2,1,'2022-04-25 14:12:18','2022-04-25 14:12:18',1,NULL,0,'#000000',NULL),(54,3,52,'snow_chains',99,100,2,0,'2022-04-25 14:12:42','2022-05-04 09:13:17',1,NULL,0,'#000000',NULL),(55,3,23,'charging_cables',91,92,2,0,'2022-04-25 14:13:13','2022-04-25 14:13:13',1,NULL,0,'#000000',NULL),(56,3,23,'storage_and_other_accessories',93,94,2,1,'2022-04-25 14:13:46','2022-04-25 14:13:46',1,NULL,0,'#000000',NULL),(57,3,3,'service',102,111,1,8,'2022-04-25 14:14:12','2023-03-30 10:34:53',1,NULL,0,'#000000',NULL),(58,3,57,'windscreen_washer',103,104,2,0,'2022-04-25 14:14:37','2022-04-25 14:14:37',1,NULL,0,'#000000',NULL),(59,3,57,'service_cases',105,106,2,1,'2022-04-25 14:15:05','2022-04-25 14:15:05',1,NULL,0,'#000000',NULL),(60,3,57,'service_products',107,108,2,2,'2022-04-25 14:15:25','2022-04-25 14:15:25',1,NULL,0,'#000000',NULL),(61,3,57,'other_service_accesories',109,110,2,3,'2022-04-25 14:15:50','2022-04-25 14:15:50',1,NULL,0,'#000000',NULL),(62,3,1,'seat_and_vehicle_cover',13,14,2,2,'2022-04-25 14:16:53','2023-05-02 09:43:24',1,NULL,1,'#000000',NULL),(63,3,1,'other_protection_accesories',15,16,2,8,'2022-04-25 14:17:23','2022-05-04 09:12:36',1,NULL,0,'#000000',NULL),(64,3,1,'engine_and_underbody_protection',17,18,2,5,'2022-04-25 14:18:05','2022-05-13 08:01:59',0,NULL,0,'#000000',NULL),(65,3,1,'interior_layout',19,20,2,0,'2022-04-25 14:18:42','2022-05-13 08:01:43',0,NULL,0,'#000000',NULL),(96,96,NULL,'op_printemps',1,2,0,0,'2022-05-11 09:53:52','2022-05-11 09:57:27',1,NULL,1,'#000000',NULL),(118,7,7,'alhambra',2,5,1,2,'2022-05-31 10:27:41','2023-03-17 15:56:23',1,NULL,0,'#000000',NULL),(119,7,118,'alhambra_2016_2020',3,4,2,0,'2022-05-31 10:28:20','2022-05-31 10:28:20',1,NULL,0,'#000000',NULL),(120,7,7,'arona',6,9,1,1,'2022-05-31 10:29:18','2022-05-31 10:35:13',1,'Nouveauté',0,'#000000',NULL),(122,7,120,'arona_2017_2021',7,8,2,0,'2022-05-31 10:31:01','2022-05-31 10:31:01',1,NULL,0,'#000000',NULL),(123,7,7,'ateca',10,15,1,0,'2022-05-31 10:31:38','2023-03-17 15:56:35',1,NULL,0,'#000000',NULL),(124,7,123,'ateca_2020',11,12,2,0,'2022-05-31 10:32:14','2022-05-31 10:32:14',1,NULL,0,'#000000',NULL),(125,7,123,'ateca_2016_2020',13,14,2,1,'2022-05-31 10:32:52','2022-05-31 10:32:52',1,NULL,0,'#000000',NULL),(129,7,7,'leon',16,19,1,2,'2022-05-31 10:35:53','2023-03-17 15:59:12',1,NULL,0,'#000000',NULL),(131,7,129,'leon_2017_2020',17,18,2,0,'2022-05-31 10:37:05','2022-05-31 10:37:05',1,NULL,0,'#000000',NULL),(132,7,7,'leon_sportstourer',20,23,1,1,'2022-05-31 10:37:53','2023-03-17 15:56:59',1,NULL,0,'#000000',NULL),(134,7,132,'leon_sportstourer_2017_2020',21,22,2,0,'2022-05-31 10:39:13','2022-05-31 10:39:14',1,NULL,0,'#000000',NULL),(143,3,1,'seuil_de_porte',21,22,2,9,'2022-06-01 10:25:33','2022-06-01 10:25:33',1,NULL,0,'#000000',NULL);
/*!40000 ALTER TABLE `sylius_taxon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_taxon_image`
--

DROP TABLE IF EXISTS `sylius_taxon_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_taxon_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `synced_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DBE52B287E3C61F9` (`owner_id`),
  CONSTRAINT `FK_DBE52B287E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxon_image`
--

LOCK TABLES `sylius_taxon_image` WRITE;
/*!40000 ALTER TABLE `sylius_taxon_image` DISABLE KEYS */;
INSERT INTO `sylius_taxon_image` (`id`, `owner_id`, `type`, `path`, `updated_at`, `synced_at`) VALUES (6,3,'banner','b8/08/022fc57a6ff3f305e88b37d1ab31.jpg',NULL,NULL),(10,10,NULL,'b5/c2/ef138361f2b77d1e36d01944e958.jpg',NULL,NULL),(11,15,NULL,'6e/e6/6e76ee9fef2b20c4caebb6c48d17.jpg',NULL,NULL),(40,96,NULL,'81/11/425d4f7c1e9861513273fedd6863.jpg',NULL,NULL),(41,25,NULL,'c4/62/c7ab8e91346f585e087fd008c3ef.jpg',NULL,NULL),(42,118,NULL,'3b/d0/5312f2cc7c06d1e1ac270fc8c378.png',NULL,NULL),(43,118,'banner','72/89/54bc7d281afa125afb96e11b1f8f.jpg',NULL,NULL),(44,119,'banner','29/3a/f97f936b0dbe99529792ee762f15.jpg',NULL,NULL),(45,120,NULL,'44/2b/e8ec400fedc0c20c015db830ffc0.png',NULL,NULL),(46,120,'banner','e2/a7/0bfa0db28e0ddbeb394b2974f85f.jpg',NULL,NULL),(48,122,'banner','a8/e9/a81203e5a06faf4dd20940f7fb37.jpg',NULL,NULL),(50,123,NULL,'7a/58/8fd679222f8f561524dd9a181139.png',NULL,NULL),(52,125,'banner','4c/fb/d267d2fa35eee8d90b3a56bbffa2.jpg',NULL,NULL),(58,129,NULL,'d6/fa/f32f6c475dc350b1a195fa7f9878.png',NULL,NULL),(60,131,'banner','79/48/bed3d30cee5cde56275ab123a0f8.jpg',NULL,NULL),(64,134,'banner','26/25/f15f0cab2c0622d00c7da810b89f.jpg',NULL,NULL),(74,34,NULL,'b8/45/34633d1b4c3136ef3f0bd025c989.jpg',NULL,NULL),(75,32,NULL,'1b/66/a7e30ae37e35e2c8d730df50d190.jpg',NULL,NULL),(76,26,NULL,'15/aa/dc78d97cca252f8c663dcdc5de27.jpg',NULL,NULL),(77,33,NULL,'8f/32/9cf3ffc8c7826f2bffd50335971e.jpg',NULL,NULL),(78,30,NULL,'05/af/d091530e4c8594796a2b893aab4f.jpg',NULL,NULL),(79,31,NULL,'5a/e4/2bfbeb6df238c8afb45f8734b380.jpg',NULL,NULL),(80,20,'banner','42/26/bb0fc5af8083d8df374da8b2d9a0.jpg',NULL,NULL),(81,37,'banner','9c/08/37ca083a395851a327c40e10b87a.jpg',NULL,NULL),(82,27,'banner','2a/f4/6f25de8504535f3b684408b04cbe.jpg',NULL,NULL),(83,38,'banner','bb/45/ee5c9bca00c045c599f7c40d040c.jpg',NULL,NULL),(84,35,NULL,'a5/07/6b86a5179c2d74ceae8ae664136b.jpg',NULL,NULL),(85,39,'banner','3c/68/93a627e4b80e603fa01c2c6e8f5d.jpg',NULL,NULL),(86,40,'banner','1f/87/c6f4b41de67c7f0c550bba0f1bd1.jpg',NULL,NULL),(87,19,'banner','c7/03/4767aac62ea2a8896f32b660148a.jpg',NULL,NULL),(88,41,'banner','7a/64/b7e6b0274780c59b95715cd7b521.jpg',NULL,NULL),(89,42,'banner','f7/8a/20d06987b4e1ae64929a4c746363.jpg',NULL,NULL),(90,43,NULL,'b7/4f/e21520880eaa0ac698330507cd5b.jpg',NULL,NULL),(91,21,NULL,'b8/12/e2712a900d03d730b3f25d3230b7.jpg',NULL,NULL),(92,48,NULL,'0a/69/2135195a7c838bfa6b2c97e3212b.jpg',NULL,NULL),(93,24,NULL,'c9/2c/439a7d5b60a0be82045fe5361bbf.jpg',NULL,NULL),(94,47,NULL,'43/45/707c8b171516096d415d40f24d2c.jpg',NULL,NULL),(95,28,NULL,'06/26/781a1e5e904368971b3cff5e557e.jpg',NULL,NULL),(96,45,NULL,'01/68/322af580532294c7db274f59e7a0.jpg',NULL,NULL),(97,49,NULL,'36/00/50d30f96fccd1719204ff69be9c0.jpg',NULL,NULL),(98,46,NULL,'3d/df/a6cac42295f25573ae27e09aefb6.jpg',NULL,NULL),(99,44,NULL,'7c/84/3271798a1a2b1190b9a4b474c407.jpg',NULL,NULL),(100,22,NULL,'e2/55/9944f0914d09a85b224ff86668e6.jpg',NULL,NULL),(101,50,NULL,'b8/dc/fa358d86b11b7d8fb56b7e828e5a.jpg',NULL,NULL),(102,51,NULL,'ba/bb/7e467b737151961a824e2a8e138e.jpg',NULL,NULL),(103,1,NULL,'81/2f/3d12bd054ec8ec11e79a01050525.jpg',NULL,NULL),(104,65,NULL,'53/66/6610e0fe9ceff925c1320d59257a.jpg',NULL,NULL),(105,2,NULL,'23/f8/6e85867e0debfd861f08c806dca0.jpg',NULL,NULL),(106,62,NULL,'5c/5c/5d701e72c81ceb65b2853dd809c8.jpg',NULL,NULL),(107,14,NULL,'bf/99/6bdd79cfb14f761b62cfa080634b.jpg',NULL,NULL),(108,13,NULL,'e4/65/1e7449530288ee034a82c306b5b7.jpg',NULL,NULL),(109,64,NULL,'df/a7/d1f3e6ce933833e1d23724cac8b5.jpg',NULL,NULL),(110,11,NULL,'e0/13/ca65869070c73e30dc2b0d095d66.jpg',NULL,NULL),(111,12,NULL,'7d/e7/f3b5c3b391589d819754caebe098.jpg',NULL,NULL),(112,63,NULL,'be/f2/c315943c8312c1549f3d347302d9.jpg',NULL,NULL),(113,52,NULL,'39/0d/4c769cb509e94809b24b05a760b7.jpg',NULL,NULL),(114,54,NULL,'68/18/7d74b878f0279ea863a6255d2b22.jpg',NULL,NULL),(115,53,NULL,'37/75/3afac9e7c2f4211eb768cf44c338.jpg',NULL,NULL),(116,57,NULL,'f5/fb/034ae5f2b72b790160c228a35f4f.jpg',NULL,NULL),(117,58,NULL,'7d/e2/5f740ed72b32de649b28748982d9.jpg',NULL,NULL),(118,59,NULL,'bc/b0/847143b6df5a7233ecf2c4b79351.jpg',NULL,NULL),(119,60,NULL,'b2/66/8f491044159616de095c2e368e14.jpg',NULL,NULL),(120,61,NULL,'80/bc/6eb4643e965fa8e1f958477b8064.jpg',NULL,NULL),(121,123,'banner','a9/6c/627c1af99a7264c7c658932850e5.jpg',NULL,NULL),(123,129,'banner','59/8c/ef5a5df27235c7eb0f916d14412d.jpg',NULL,NULL),(124,132,'media','e8/e0/94b40117d40c5cd647e8e5dbe9e0.png',NULL,NULL),(126,36,'banner','24/2f/c29fd84ea79014c3286d9532de1a.jpg',NULL,NULL),(127,132,'banner','89/fa/f83013fc9711ef23982ab0d79baf.jpg',NULL,NULL),(128,23,NULL,'db/0b/83b49fbdf62e5622044b344f0388.jpg',NULL,NULL),(129,124,NULL,'60/3c/0e0d96c27a570744044d185bf880.jpg',NULL,NULL);
/*!40000 ALTER TABLE `sylius_taxon_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_taxon_translation`
--

DROP TABLE IF EXISTS `sylius_taxon_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_taxon_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug_uidx` (`locale`,`slug`),
  UNIQUE KEY `sylius_taxon_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_1487DFCF2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_1487DFCF2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxon_translation`
--

LOCK TABLES `sylius_taxon_translation` WRITE;
/*!40000 ALTER TABLE `sylius_taxon_translation` DISABLE KEYS */;
INSERT INTO `sylius_taxon_translation` (`id`, `translatable_id`, `name`, `slug`, `description`, `locale`) VALUES (1,1,'Protection','protection',NULL,'fr_FR'),(2,2,'Bac de coffre','bac-de-coffre',NULL,'fr_FR'),(3,3,'Accessoires','accessoires',NULL,'fr_FR'),(7,7,'Vehicules','vehicules',NULL,'fr_FR'),(10,10,'Barres de toit et galeries','barres-de-toit-et-galeries',NULL,'fr_FR'),(11,11,'Tapis de coffre','tapis-de-coffre',NULL,'fr_FR'),(12,12,'Tapis de sol','tapis-de-sol',NULL,'fr_FR'),(13,13,'Protection de seuil chargement','protection-de-seuil-chargement',NULL,'fr_FR'),(14,14,'Pare-boue','pare-boue',NULL,'fr_FR'),(15,15,'Transport','transport',NULL,'fr_FR'),(19,19,'Confort','confort',NULL,'fr_FR'),(20,20,'Design','design',NULL,'fr_FR'),(21,21,'Sécurité','securite',NULL,'fr_FR'),(22,22,'Connectivité','connectivite',NULL,'fr_FR'),(23,23,'Éléctromobilité','electromobilite',NULL,'fr_FR'),(24,24,'Ampoules','ampoules',NULL,'fr_FR'),(25,25,'Supports de voyage','supports-de-voyage',NULL,'fr_FR'),(26,26,'Porte-vélos','porte-velos',NULL,'fr_FR'),(27,27,'Baguettes pour hayon','baguettes-pour-hayon',NULL,'fr_FR'),(28,28,'Ceinture de sécurité pour chien','ceinture-de-securite-pour-chien',NULL,'fr_FR'),(30,30,'Sécurisation du chargement','securisation-du-chargement',NULL,'fr_FR'),(31,31,'Autres accessoires de transport','autres-accessoires-de-transport',NULL,'fr_FR'),(32,32,'Coffre de toit','coffre-de-toit',NULL,'fr_FR'),(33,33,'Porte-skis','porte-skis',NULL,'fr_FR'),(34,34,'Attelage','attelage',NULL,'fr_FR'),(35,35,'Marchepied','marchepied',NULL,'fr_FR'),(36,36,'Accessoires de roue','accessoires-de-roue',NULL,'fr_FR'),(37,37,'Coque de rétroviseur','coque-de-retroviseur',NULL,'fr_FR'),(38,38,'Jantes','jantes',NULL,'fr_FR'),(39,39,'Pédalier','pedalier',NULL,'fr_FR'),(40,40,'Autres accessoires design','autres-accessoires-design',NULL,'fr_FR'),(41,41,'Déflecteurs','deflecteurs',NULL,'fr_FR'),(42,42,'Pare-soleil','pare-soleil',NULL,'fr_FR'),(43,43,'Autres accessoires confort','autres-accessoires-confort',NULL,'fr_FR'),(44,44,'Siège enfant','siege-enfant',NULL,'fr_FR'),(45,45,'Kit sécurité','kit-securite',NULL,'fr_FR'),(46,46,'Roue de secours','roue-de-secours',NULL,'fr_FR'),(47,47,'Boitier tracking et alarme','boitier-tracking-et-alarme',NULL,'fr_FR'),(48,48,'Aide à la conduite','aide-a-la-conduite',NULL,'fr_FR'),(49,49,'Plaque d\'immatriculation','plaque-d-immatriculation',NULL,'fr_FR'),(50,50,'Câbles multimédia','cables-multimedia',NULL,'fr_FR'),(51,51,'Autres accessoires connectivité','autres-accessoires-connectivite',NULL,'fr_FR'),(52,52,'Hiver','hiver',NULL,'fr_FR'),(53,53,'Roues Hiver','roues-hiver',NULL,'fr_FR'),(54,54,'Chaînes à neige','chaines-a-neige',NULL,'fr_FR'),(55,55,'Câbles de recharge','cables-de-recharge',NULL,'fr_FR'),(56,56,'Rangement et autres accessoires','rangement-et-autres-accessoires',NULL,'fr_FR'),(57,57,'Entretien','entretien',NULL,'fr_FR'),(58,58,'Lave-glace','lave-glace',NULL,'fr_FR'),(59,59,'Malettes entretien','malettes-d-entretien',NULL,'fr_FR'),(60,60,'Produits d\'entretien','produits-d-entretien',NULL,'fr_FR'),(61,61,'Autres accessoires entretien','autres-accessoires-entretien',NULL,'fr_FR'),(62,62,'Housse de siège et couvre véhicule','housse-de-siege-et-couvre-vehicule',NULL,'fr_FR'),(63,63,'Autres accessoires protection','autres-accessoires-protection',NULL,'fr_FR'),(64,64,'Protection moteur et soubassement','protection-moteur-et-soubassement',NULL,'fr_FR'),(65,65,'Aménagement intérieur','amenagement-interieur',NULL,'fr_FR'),(96,96,'Nos promotions','nos-promotions',NULL,'fr_FR'),(118,118,'Born','born',NULL,'fr_FR'),(119,119,'(depuis 2021)','born-2020-2023',NULL,'fr_FR'),(120,120,'Formentor','formentor',NULL,'fr_FR'),(122,122,'(depuis 2020)','formentor-2020-2023',NULL,'fr_FR'),(123,123,'Ateca','ateca',NULL,'fr_FR'),(124,124,'(2018-2020)','ateca-2018-2020',NULL,'fr_FR'),(125,125,'(depuis 2020)','ateca-2020-2023',NULL,'fr_FR'),(129,129,'Leon','leon',NULL,'fr_FR'),(131,131,'(depuis 2020)','leo-2020-2023',NULL,'fr_FR'),(132,132,'Leon Sportstourer','leon-sportstourer',NULL,'fr_FR'),(134,134,'(depuis 2020)','leon-sportstourer-2020-2023',NULL,'fr_FR'),(143,143,'Seuil de porte','seuil-de-porte',NULL,'fr_FR');
/*!40000 ALTER TABLE `sylius_taxon_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_user_oauth`
--

DROP TABLE IF EXISTS `sylius_user_oauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_user_oauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refresh_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_provider` (`user_id`,`provider`),
  KEY `IDX_C3471B78A76ED395` (`user_id`),
  CONSTRAINT `FK_C3471B78A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_shop_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_user_oauth`
--

LOCK TABLES `sylius_user_oauth` WRITE;
/*!40000 ALTER TABLE `sylius_user_oauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_user_oauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_zone`
--

DROP TABLE IF EXISTS `sylius_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7BE2258E77153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_zone`
--

LOCK TABLES `sylius_zone` WRITE;
/*!40000 ALTER TABLE `sylius_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_zone_member`
--

DROP TABLE IF EXISTS `sylius_zone_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_zone_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `belongs_to` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E8B5ABF34B0E929B77153098` (`belongs_to`,`code`),
  KEY `IDX_E8B5ABF34B0E929B` (`belongs_to`),
  CONSTRAINT `FK_E8B5ABF34B0E929B` FOREIGN KEY (`belongs_to`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_zone_member`
--

LOCK TABLES `sylius_zone_member` WRITE;
/*!40000 ALTER TABLE `sylius_zone_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_zone_member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-21 18:04:48
