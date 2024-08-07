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
CREATE DATABASE IF NOT EXISTS `vwu`;
USE `vwu`;

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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbiz_settings_setting`
--

LOCK TABLES `mbiz_settings_setting` WRITE;
/*!40000 ALTER TABLE `mbiz_settings_setting` DISABLE KEYS */;
INSERT INTO `mbiz_settings_setting` (`id`, `channel_id`, `vendor`, `plugin`, `path`, `locale_code`, `storage_type`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `created_at`, `updated_at`) VALUES (1,NULL,'app','theme','theme',NULL,'text','skoda',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-15 18:00:28','2022-03-15 18:00:28'),(2,NULL,'app','theme','brand',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-15 18:00:28','2022-03-15 18:00:28'),(3,NULL,'app','theme','mentions',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-15 18:00:28','2022-03-15 18:00:28'),(4,1,'app','theme','theme',NULL,'text','vwu',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-15 18:00:28','2022-05-13 15:39:40'),(5,1,'app','theme','brand',NULL,'text','Volkswagen Utilitaires',NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-15 18:00:28','2022-05-13 15:39:40'),(6,1,'app','theme','mentions',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-15 18:00:28','2022-05-12 08:41:09'),(7,NULL,'app','theme','cover_height',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-04 11:06:50','2022-04-04 11:06:50'),(8,NULL,'app','theme','legals_title',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-04 11:06:50','2022-04-04 11:06:50'),(9,NULL,'app','theme','legals_text',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-04 11:06:50','2022-04-04 11:06:50'),(10,1,'app','theme','cover_height',NULL,'float',NULL,NULL,NULL,500,NULL,NULL,NULL,'2022-04-04 11:06:50','2022-04-04 11:06:50'),(11,1,'app','theme','legals_title',NULL,'text','Volkswagen Utilitaires est une division de Volkswagen Group France, responsable de traitement des données que vous avez renseignées. Ces données personnelles font l\'objet d\'une transmission au partenaire sélectionné qui est nécessaire afin que vous puissiez recevoir votre commande.',NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-04 11:06:50','2022-05-13 15:39:40'),(12,1,'app','theme','legals_text',NULL,'text','Vos données sont conservées pendant une durée limitée qui ne saurait excéder la durée de conservation fixées par la réglementation. Conformément au Règlement n° 2016/679 dit Règlement général sur la protection des données (RGPD), vous disposez  d\'un droit d\'information et d\'accès, de rectification, de limitation et de portabilité des informations vous concernant. Vous pouvez exercer ces droits en écrivant au Délégué à la protection des données de Volkswagen Group France à l\'adresse email suivante : donneespersonnelles@volkswagengroup.fr, ou à l\'adresse postale suivante : Volkswagen Group France Relation Client, 11 avenue de Boursonne, 02600 Villers-Cotterêts, accompagné de tout titre permettant de justifier de votre identité. En cas de litige, vous disposez également du droit d\'introduire une réclamation auprès de l\'autorité administrative indépendante, la CNIL en France. Pour en savoir davantage sur la façon dont nous traitons vos données vous pouvez consulter la politique de confidentialité du site en lien dans le pied de page.',NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-04 11:06:50','2022-04-04 11:06:50'),(13,NULL,'app','tools','gmap_api',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-04 11:07:11','2022-04-04 11:07:11'),(14,1,'app','tools','gmap_api',NULL,'text','AIzaSyCk-Utd-HdvTQHiyuEWRnMaOSXAzcq2',NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-04 11:07:11','2022-07-12 13:14:20'),(15,NULL,'app','theme','default_family',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-15 16:24:25','2022-04-15 16:24:25'),(16,NULL,'app','theme','default_id',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-15 16:24:25','2022-04-15 16:24:25'),(17,NULL,'app','theme','social_twitter_link',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-15 16:24:25','2022-04-15 16:24:25'),(18,NULL,'app','theme','social_google_link',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-15 16:24:25','2022-04-15 16:24:25'),(19,NULL,'app','theme','social_instagram_link',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-15 16:24:25','2022-04-15 16:24:25'),(20,NULL,'app','theme','social_linkedin_link',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-15 16:24:25','2022-04-15 16:24:25'),(21,NULL,'app','theme','social_facebook_link',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-15 16:24:25','2022-04-15 16:24:25'),(22,1,'app','theme','default_family',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-15 16:24:25','2022-04-15 16:24:25'),(23,1,'app','theme','default_id',NULL,'text','501',NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-15 16:24:25','2022-04-15 16:24:25'),(24,1,'app','theme','social_twitter_link',NULL,'text','http://www.twitter.fr',NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-15 16:24:25','2022-04-15 16:24:25'),(25,1,'app','theme','social_google_link',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-15 16:24:25','2022-04-15 16:24:25'),(26,1,'app','theme','social_instagram_link',NULL,'text','http://www.instagram.fr',NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-15 16:24:25','2022-04-15 16:24:25'),(27,1,'app','theme','social_linkedin_link',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-15 16:24:25','2022-04-15 16:24:25'),(28,1,'app','theme','social_facebook_link',NULL,'text','http://www.facebook.fr',NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-15 16:24:25','2022-04-15 16:24:25'),(29,NULL,'app','theme','email_logo_width',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-04-29 10:04:54','2022-04-29 10:04:54'),(30,1,'app','theme','email_logo_width',NULL,'float',NULL,NULL,NULL,179,NULL,NULL,NULL,'2022-04-29 10:04:54','2022-04-29 10:06:01'),(31,NULL,'app','theme','short_brand',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-05-13 15:39:40','2022-05-13 15:39:40'),(32,NULL,'app','theme','official_logo',NULL,'boolean',NULL,0,NULL,NULL,NULL,NULL,NULL,'2022-05-13 15:39:40','2022-05-13 15:39:40'),(33,1,'app','theme','short_brand',NULL,'text','Volkswagen',NULL,NULL,NULL,NULL,NULL,NULL,'2022-05-13 15:39:40','2022-05-13 15:39:40'),(34,1,'app','theme','official_logo',NULL,'boolean',NULL,0,NULL,NULL,NULL,NULL,NULL,'2022-05-13 15:39:40','2022-05-13 15:39:40'),(35,NULL,'app','tools','ga4',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-06-28 12:26:49','2022-06-28 12:26:49'),(36,NULL,'app','tools','ga',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-06-28 12:26:49','2022-06-28 12:26:49'),(37,NULL,'app','tools','gtm',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-06-28 12:26:49','2022-06-28 12:26:49'),(38,NULL,'app','tools','cookiebot',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-06-28 12:26:49','2022-06-28 12:26:49'),(39,NULL,'app','tools','bugherd',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-06-28 12:26:49','2022-06-28 12:26:49'),(40,NULL,'app','tools','hotjar',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-06-28 12:26:49','2022-06-28 12:26:49'),(41,NULL,'app','tools','datalayer',NULL,'boolean',NULL,0,NULL,NULL,NULL,NULL,NULL,'2022-06-28 12:26:49','2022-06-28 12:26:49'),(42,1,'app','tools','ga4',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-06-28 12:26:49','2022-06-28 12:26:49'),(43,1,'app','tools','ga',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-06-28 12:26:49','2022-06-28 12:26:49'),(44,1,'app','tools','gtm',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-06-28 12:26:49','2022-06-28 12:26:49'),(45,1,'app','tools','cookiebot',NULL,'text','447f870c-b03f-4f5b-b585-b6ae5e20af27',NULL,NULL,NULL,NULL,NULL,NULL,'2022-06-28 12:26:49','2022-06-28 12:26:49'),(46,1,'app','tools','bugherd',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-06-28 12:26:49','2022-06-28 12:26:49'),(47,1,'app','tools','hotjar',NULL,'text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-06-28 12:26:49','2022-06-28 12:26:49'),(48,1,'app','tools','datalayer',NULL,'boolean',NULL,0,NULL,NULL,NULL,NULL,NULL,'2022-06-28 12:26:49','2022-06-28 12:26:49');
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
INSERT INTO `monsieurbiz_cms_page` (`id`, `code`, `enabled`, `created_at`, `updated_at`) VALUES (1,'sample',1,'2022-03-07 17:35:07','2022-03-07 17:35:07'),(2,'cgu',1,'2022-04-14 16:32:37','2022-04-14 16:33:27'),(3,'condition-generales-utilisation',1,'2022-05-11 10:22:45','2022-05-11 10:22:45'),(5,'reinsurance',1,'2023-03-22 17:09:49','2023-03-22 17:10:23');
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
INSERT INTO `monsieurbiz_cms_page_channels` (`page_id`, `channel_id`) VALUES (1,1),(2,1),(3,1),(5,1);
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
INSERT INTO `monsieurbiz_cms_page_translation` (`id`, `translatable_id`, `title`, `content`, `slug`, `metaTitle`, `metaKeywords`, `metaDescription`, `locale`) VALUES (1,1,'Accessoires d\'Origine','[{\"code\":\"sections.cover\",\"data\":{\"image\":\"/media/rich-editor/barre_toit_utilitaire_1920x660_d3afed79155047dd9991fe2e5aad4ae0_1920x660_crop_center-628b93f614625.jpg\",\"alt\":null}},{\"code\":\"sections.section_wysiwyg\",\"data\":{\"title\":\"Votre ŠKODA ne mérite que le meilleur\",\"wysiwyg\":\"<b>Les accessoires d’origine Volkswagen sont développés pour s’adapter parfaitement à votre véhicule utilitaire.</b> Il sont soumis à un cahier des charges strict pour vous garantir une sécurité optimale. Eléments de protection ou de personnalisation, solutions de chargement, équipements multimédia, quelques clics suffiront pour trouver votre bonheur dans la vaste gamme des accessoires Volkswagen.<p><b><br></b></p><p><b><br></b></p>\"}},{\"code\":\"sections.section_text_image\",\"data\":{\"images\":[{\"image\":\"/media/rich-editor/top_480x480-628b943be168e.jpg\",\"alt\":null}],\"title\":\"Une gamme d\'accessoires pour répondre à tous vos besoins\",\"text\":\"<p>Besoin de personnaliser votre véhicule à votre image ou de l\'équiper d\'accessoires parfaitement adaptés à votre quotidien ? Découvrez l\'ensemble de notre gamme d\'accessoires qui rendront votre utilitaire Volkswagen unique et vos voyages toujours plus agréables.</p><p>Que ce soit pour gagner de l\'espace pour transporter vos bagages, protéger votre véhicule contre les défis du quotidien ou rouler en toute sérénité lors de vos voyages en famille, Volkswagen met à votre disposition une gamme d\'accessoires complète pour les modèles Amarok, Caddy, Transporter, Multivan, Caravelle, Crafter,  Crafter Chassis, California, Grand California.</p>\",\"cta_link\":null,\"cta_label\":null,\"mod\":\"image-left\"}},{\"code\":\"sections.section_text_image\",\"data\":{\"images\":[{\"image\":\"/media/rich-editor/utilitaire_720x500_55c45a8a0a624bb6baf07432b9cd4b16-628b9476bc1a4.jpg\",\"alt\":null}],\"title\":\"Les engagements Volkswagen <b>au service de vos exigences</b>\",\"text\":\"<p>Barres de toit, sécurisation du chargement, tapis de protection, coffres de toit, support de téléphone portable ou système de navigation… Volkswagen a mis tout son savoir-faire pour concevoir des accessoires certifiés pour votre véhicule  utilitaire et ainsi bénéficier de produits faciles à installer et à utiliser au quotidien.</p><p><b>Commander vos accessoires en ligne sur notre site, c\'est l\'assurance de bénéficier d\'un niveau de qualité et de sécurité optimal.</b></p>\",\"cta_link\":null,\"cta_label\":null,\"mod\":\"image-right\"}},{\"code\":\"sections.section_text_image\",\"data\":{\"images\":[{\"image\":\"/media/rich-editor/coffre_toit_371x250_38301b30b19440a6adc9c93e4c06c4c5-628b94c49eb5a.jpg\",\"alt\":null},{\"image\":\"/media/rich-editor/porte_velo_371x250_62139c16633f43d6a4186a617684cf51-628b94c49f09b.jpg\",\"alt\":null},{\"image\":\"/media/rich-editor/porte_ski_371x250_72362fb611b545a4a9230959b19c7d6a-628b94c49f4c1.jpg\",\"alt\":null}],\"title\":\"Des accessoires conçus<br/><b>pour votre ŠKODA</b>\",\"text\":null,\"cta_link\":null,\"cta_label\":null,\"mod\":\"image-left\"}}]','accessoires-d-origine','Accessoires d\'Origine',NULL,NULL,'fr_FR'),(2,2,'Gestion de vos préférences de cookies','[{\"code\":\"sections.section_wysiwyg\",\"data\":{\"title\":\"Gestion de vos préférences de cookies\",\"wysiwyg\":\"<div class=\\\"page-title-wrapper\\\">\\r\\n<h1><br></h1>\\r\\n</div>\\r\\n<div class=\\\"columns\\\">\\r\\n<div class=\\\"column main\\\">\\r\\n<div></div>\\r\\n</div>\\r\\n</div>\"}}]','gestion-de-vos-preferences-de-cookies','Gestion de vos préférences de cookies',NULL,NULL,'fr_FR'),(3,3,'Condition Générales d\'Utilisation','[{\"code\":\"sections.section_wysiwyg\",\"data\":{\"title\":null,\"wysiwyg\":\"<h2><b>CONDITIONS GÉNÉRALES D’UTILISATION PLATEFORME DE PRÉSENTATION DES ACCESSOIRES SKODA</b></h2><p>Dernière mise à jour le : <b>17/05/2018</b></p><h3>PREAMBULE</h3><p>Skoda France division de Volkswagen Group France, Société anonyme au capital de 198 502 510 euros, 11 avenue de Boursonne, 02600 Villers-Cotterêts Cedex France, immatriculée au RCS de Soissons sous le numéro 832 277 370 (ci-après « <a href=\\\"https://www.skoda.fr/informations/mentions-legales\\\">Skoda France</a> »), propose de multiples accessoires destinés aux véhicules qu’elle commercialise par l’intermédiaire son réseau de distribution agréé et fournit, via une plateforme dédiée et accessible en ligne par le réseau Internet à l’adresse suivante : http://accessoires.skoda.fr  (ci-après la « <b>Plateforme</b> »), la possibilité pour le Client de consulter l’ensemble des accessoires SKODA et d’être mis en relation avec un distributeur agréé Skoda France pour éventuellement acquérir un ou plusieurs accessoires présentés sur la Plateforme.</p><p><br></p><h3>1. ACCEPTATION DES CGU</h3><p>Par l’utilisation de la Plateforme, l’Utilisateur reconnaît avoir pris connaissance des présentes CGU et les accepter sans réserve, ainsi que tous documents s’y référant tels que la politique de protection de la vie privée et des données personnelles  et la politique d’utilisation des cookies.</p><p><br></p><h3>2. DÉFINITIONS</h3><p>Les termes définis ci-dessous commençant par des majuscules et utilisés au singulier ou au pluriel auront la signification suivante :</p><p><b>« Données » </b>: désignent les informations concernant l’Utilisateur, y compris ses Données à caractère personnel, fournies directement ou indirectement par cet Utilisateur, lorsqu’il utilise la Plateforme. L’Utilisateur garantit à Skoda France fournir des informations exactes et à jour en particulier son adresse mail.</p><p><b>« Données à Caractère Personnel »</b> désignent au regard de l\'article 2 de la Loi Informatique et Libertés « toute information relative à une personne physique identifiée ou qui peut être identifiée, directement ou indirectement, par référence à un numéro d\'identification ou à un ou plusieurs éléments qui lui sont propres» et l’article 4 du Règlement Européen sur la protection des données à caractère personnel « toute information se rapportant à une personne physique identifiée ou identifiable (ci-après dénommée «personne concernée»); est réputée être une «personne physique identifiable» une personne physique qui peut être identifiée, directement ou indirectement, notamment par référence à un identifiant, tel qu\'un nom, un numéro d\'identification, des données de localisation, un identifiant en ligne, ou à un ou plusieurs éléments spécifiques propres à son identité physique, physiologique, génétique, psychique, économique, culturelle ou sociale ». Sont notamment comprises dans les Données à Caractère personnel, les données relatives aux Utilisateurs de la Plateforme permettant leur identification.</p><p><b>&nbsp;« Services »</b> : désignent l’ensemble des actions proposées par la Plateforme qui sont accessibles aux Utilisateurs.&nbsp;</p><p><b>« Utilisateur » </b>: désigne toute personne physique accédant à la Plateforme, pour son compte ou pour le compte d’une personne morale, qu’elle soit simple visiteur ou client.</p><p><br></p><h3>3. OBJET</h3><p>&nbsp;Les présentes Conditions Générales d’Utilisation, ainsi que les documents auxquels elles font références, ont pour objet de définir les conditions, droits, obligations, responsabilités et limites applicables à toute utilisation de la Plateforme, par tout Utilisateur (ci-avant et ci-après les « <b>CGU</b> »).&nbsp;</p><p><br></p><h3>4. DESCRIPTION DES SERVICES</h3><p>&nbsp;La Plateforme permet aux Utilisateurs de consulter en ligne l’ensemble des accessoires commercialisés par SKODA, d’en faire une sélection, que l’Utilisateur peut ensuite recevoir à l’adresse mail qu’il renseigne, et d’être mis en relation avec un distributeur agréé SKODA pour réaliser l’achat d’un ou plusieurs accessoires.</p><p><br></p><h3>5. DISPONIBILITÉ DE LA PLATEFORME</h3><p>L’Utilisateur reconnaît et accepte qu’en l’état actuel de la technique, Skoda France ne puisse pas garantir une disponibilité continue de la Plateforme ni des Services.</p><p>Skoda France fera ses meilleurs efforts afin de rendre la Plateforme disponible de manière continue, sauf en cas d’opérations de maintenance, de mise à jour ou par suite d’évènements échappant à son contrôle pouvant créer des interruptions de services, en tout ou partie, des perturbations plus ou moins importantes. Dans de tels cas, Skoda France prendra les mesures raisonnables dont elle dispose pour traiter ces interruptions ou perturbations.&nbsp;</p><p><br></p><h3>6. COMPORTEMENT</h3><p>&nbsp;Chaque Utilisateur se doit d’utiliser la Plateforme de manière responsable, avec respect et courtoisie à l’égard des droits de Skoda France et de tout tiers.</p><p>En accédant à la Plateforme, l’Utilisateur s’engage et garantit notamment :</p><p>-      disposer des qualités et compétences requises pour utiliser la Plateforme ;</p><p>-      avoir un comportement conforme à l’ensemble des dispositions des présentes CGU et à respecter ces CGU ;</p><p>-      communiquer des données exactes, exhaustives et à jour ;</p><p>-      respecter les droits de propriété intellectuelle de Skoda France et des éventuels tiers ;</p><p>-      respecter toutes les lois en vigueur y compris celles du pays d’où il accède à la Plateforme ;</p><p>-      à utiliser la Plateforme dans la limite de ses fonctionnalités et de sa destination.</p><p><br></p><p>En outre, l’Utilisateur s’interdit, notamment :</p><p>-      d’utiliser les fonctionnalités de la Plateforme à des fins non prévues dans les CGU ou contraire à la destination de la Plateforme et/ou qui porteraient atteinte aux droits de Skoda France, d’un de ses partenaires ou de tout tiers ;</p><p>-      d’utiliser une fausse identité ou de tromper autrement qui que ce soit ;</p><p>-      de communiquer à Skoda France des coordonnées et informations fausses, usurpées ou erronées ;</p><p>-      de télécharger vers la Plateforme, afficher, rendre accessible ou transmettre par tout moyen et notamment par courrier électronique :</p><p><ul><li>des contenus qu’il n’aurait pas le droit de télécharger,</li><li>un contenu illégal, préjudiciable, menaçant, injurieux, harcelant, délictuel, diffamatoire, vulgaire, obscène, contraire aux bonnes mœurs, portant atteinte à la vie privée d\'une personne, odieux ou désobligeant ou choquant d\'un point de vue notamment racial, ethnique ou autre,</li><li>tout élément contenant des virus logiciels ou autres codes, fichiers ou programmes informatiques conçus pour interrompre, détruire ou limiter la fonctionnalité de tout logiciel ou matériel informatique ou de tout équipement de télécommunication ;</li></ul></p><p>-      perturber ou interrompre le fonctionnement de la Plateforme ou des serveurs ou réseaux connectés à la Plateforme, ou enfreindre les exigences, procédures, règles ou réglementations ;</p><p>-      accéder à des Données à caractère personnel qui ne lui sont pas destinées ou entrer dans un serveur ou une partie de la Plateforme auquel l’Utilisateur n’est pas autorisé à avoir accès ;</p><p>-      tenter de sonder, de scruter ou de tester la vulnérabilité d\'un système et notamment de la Plateforme, ou encore d’enfreindre les mesures de sécurité ou d\'authentification sans en avoir reçu l’autorisation ;</p><p>-      usurper ou tenter d’usurper l’identité d’un autre Utilisateur ou de tout tiers ;</p><p>-      nuire à une personne physique ou morale par le biais de la Plateforme ;</p><p>-      porter atteinte à la réputation de Skoda France, de la Plateforme, d’un ou plusieurs autres Utilisateurs ou de tout tiers.</p><p>L’Utilisateur s’engage également à ne pas divulguer des informations personnelles, professionnelles ou confidentielles diffusées au travers de la Plateforme ou dont il aurait connaissance de par l’utilisation de la Plateforme ou provenant de tiers. A fortiori, l’Utilisateur s’abstient de tout traitement de Données à caractère personnel obtenues sur la Plateforme ou par son biais et notamment de toute collecte ou de toute utilisation non autorisée ou détournée et de tout acte susceptible de porter atteinte à la vie privée et aux Données à caractère personnel ou à la réputation d’un ou plusieurs autre(s) Utilisateur(s) ou toute autre personne physique ou morale.</p><p>Les Utilisateurs sont invités à signaler à Skoda France toute utilisation frauduleuse de la Plateforme dont ils auraient connaissance et notamment tout contenu qui contreviendrait aux interdictions énoncées dans les CGU ou plus généralement aux lois et dispositions règlementaires en vigueur.</p><p><br></p><h3>7. DROITS DE PROPRIÉTÉ INTELLECTUELLE</h3><p>La Plateforme, en ce compris l’ensemble des éléments qui la compose, notamment les graphismes, images, photographies, animations, clips, textes, logos, logiciels et interfaces (ci-après le « <b>Contenu</b> ») sont protégés par des droits de propriété intellectuelle et propriété exclusive de Skoda France, à l’exception des marques, logos, images, photos et signes distinctifs appartenant à des sociétés tierces ou à des tiers.</p><p>Toutes utilisations, y compris toute reproduction, distribution, modification, retransmission ou publication du Contenu sont strictement interdites sans accord préalable écrit de Skoda France.</p><p>Il est en particulier interdit de (i) copier, modifier, créer une œuvre dérivée, assembler, décompiler (à l\'exception des cas prévus par la loi), vendre, attribuer, sous-licencier ou transférer de quelque manière que ce soit tout droit afférant au Contenu et de (ii) modifier tout ou partie du Contenu en vue notamment d\'obtenir un accès non autorisé à la Plateforme.</p><p>En conséquence, toute reproduction et/ou représentation, totale ou partielle, du Contenu, sans l’autorisation préalable et écrite de Skoda France, sont interdites et constitueraient une contrefaçon sanctionnée notamment par les dispositions du Code de la propriété intellectuelle.</p><p>Skoda France, ou tout autre titulaire de ces droits, pourra mettre en œuvre toute mesure ou action, y compris judiciaire, pour faire cesser une atteinte à ses droits, en particulier de propriété intellectuelle et se réserve le droit de demander des dommages et intérêts en cas d’une telle atteinte.</p><h3><b>8. COOKIES</b></h3><p>Les cookies sont des données stockées dans l’équipement terminal d’un internaute et utilisées par la Plateforme pour envoyer des informations au navigateur de l’internaute, permettant à ce navigateur de renvoyer des informations au site d’origine.</p><p>Skoda France utilise des cookies ; <a href=\\\"https://www.skoda.fr/informations/cookies\\\">la politique d’utilisation des cookies</a> informe les internautes sur cette utilisation.</p><p>L’Utilisateur dispose d’un droit d’accès, de rectification et d\'opposition sur ses Données à caractère personnel communiquées par le biais des cookies.</p><p>Le paramétrage du logiciel de navigation permet d’informer de la présence de cookies et de la refuser.</p><p>Cependant, certaines fonctionnalités de la Plateforme ne pourront plus être utilisées si l’Utilisateur refuse cette installation des cookies.</p><p><br></p><h3>9. LIENS HYPERTEXTES</h3><p>Toute création de liens vers la Plateforme, tout encadrement (framing) de la Plateforme et plus généralement toute utilisation d\'un élément composant la Plateforme sont soumis à l\'autorisation préalable et écrite de Skoda France, qui pourra être révoquée à tout moment à sa seule discrétion.</p><p>Skoda France n’est aucunement responsable du contenu des sites vers lesquels les liens hypertextes redirigent l’Utilisateur.&nbsp;</p><p><br></p><h3>10. PROTECTION DE VOS DONNEES A CARACTERE PERSONNEL</h3><p>Skoda France collecte des Données à caractère personnel des Utilisateurs, principalement l’adresse mail.</p><p>Skoda France s’engage à faire tous ses efforts pour que les Données des Utilisateurs, et en particulier les Données à caractère personnel, restent confidentielles. Skoda France s’autorise à les communiquer uniquement à ses partenaires et sous-traitants dans le respect de la règlementation applicable. Skoda France leur demande à ce titre de conserver confidentielles ces Données.</p><p>Pour plus d’informations concernant la protection de ses Données à caractère personnel, l’Utilisateur est invité à consulter la politique de protection de la vie privée et des données personnelles qui fait partie intégrante des présentes CGU.</p><p><br></p><h3>11.RESPONSABILITÉ</h3><p>L’Utilisateur reconnaît utiliser la Plateforme sous sa seule responsabilité. Il appartient notamment à l’Utilisateur de se prémunir contre les dangers de l’Internet et de prendre toutes les mesures nécessaires afin de protéger ses propres données (en ce y compris ses Données à caractère personnel) et/ou logiciels de la contamination par d\'éventuels virus qui pourraient affecter son ordinateur ou tout autre matériel informatique qu’il utilise ou qui est sous sa garde.</p><p>L’Utilisateur est seul responsable des moyens d’accès à Internet et à la Plateforme.</p><p>A l’exclusion des Données, Skoda France essaye de s’assurer au mieux de l’exactitude des informations accessibles sur la Plateforme, mais ne garantit pas que les informations fournies par tout tiers soient exactes, complètes ou à jour.</p><p>En outre, Skoda France décline toute responsabilité en cas d\'interruption de la Plateforme, de survenance de dysfonctionnement ou de tout dommage résultant d’acte frauduleux de tiers ou d’Utilisateur(s).</p><p>Par ailleurs, en aucun cas Skoda France ne peut être tenue pour responsable d\'un quelconque dommage, quelles qu\'en soient la cause, origine, nature et conséquence, découlant notamment de l’utilisation non conforme des présentes CGU par l’Utilisateur et de la consultation ou de l\'utilisation de la Plateforme par un tiers.</p><p>LA RESPONSABILITE DE SKODA FRANCE NE POURRA ETRE ENGAGEE POUR UNE CAUSE DONT LE FAIT GENERATEUR A POUR ORIGINE UN CAS DE FORCE MAJEURE, Y COMPRIS SI UN TEL CAS DE FORCE MAJEURE TOUCHE UN DE SES SOUS TRAITANTS, AINSI QUE TOUT EVENEMENT HORS DE SON CONTROLE EXCLUSIF.</p><p>De plus, Skoda France informe l’Utilisateur qu’il se réserve le droit, à tout moment et pour quelque raison que ce soit, de mettre en œuvre tout moyen permettant de suspendre ou supprimer, et ce, sans préavis, l’accès à tout ou partie de la Plateforme et, notamment, pour toute conduite, constatée ou présumée, comme étant en violation de tout ou partie des CGU (en ce y compris la politique de protection de la vie privée et des données personnelles) explicitement ou implicitement, sans préjudice de tout dommage et intérêt que Skoda France se réserve le droit de réclamer à l’Utilisateur en réparation du préjudice subi.</p><p><br></p><h3>12. MODIFICATION DES CGU</h3><p>Les CGU sont susceptibles de faire l’objet de mises à jour de la part de Skoda France. Les CGU précédentes sont alors résiliées de plein droit et remplacées par la nouvelle version qui est immédiatement opposable à l’Utilisateur et mentionnant la date de la dernière mise à jour indiquée en haut des présentes CGU. Pour être informé de ces éventuelles modifications et mises à jour, il est recommandé à l’Utilisateur de consulter les CGU régulièrement.</p><h3><br></h3><h3>13. SURVIVANCE</h3><p>Les stipulations des CGU qui par leur nature ou leur rédaction ont vocation à continuer à s’appliquer après la cessation de l’utilisation de la Plateforme pour quelque cause que ce soit, ainsi que les stipulations des articles 11 « Responsabilité », 10 « Protection de vos données à caractère personnel » et 7 « Droits propriété intellectuelle » resteront en vigueur pour la durée nécessaire à l’exécution de leur objet.</p><p><br></p><h3>14. NULLITÉ – TITRE</h3><p>Si une ou plusieurs stipulations des CGU sont tenues pour non valides ou déclarées telles en application d\'une loi, d\'un règlement ou à la suite d\'une décision définitive d\'une juridiction compétente, les autres stipulations garderont toute leur force et portée.</p><p>En cas de difficultés d’interprétation entre l’un quelconque des titres figurant en tête des clauses et l’une quelconque des clauses, les titres seront écartés et le contenu de la clause concernée prévaudra.</p><p><br></p><h3>15. DROIT APPLICABLE - ATTRIBUTION DE COMPETENCE</h3><p>Les présentes CGU et les documents auxquels elles font référence sont régis par le droit français. En cas de litige, l’Utilisateur s’engage à contacter en priorité Skoda France afin de tenter de résoudre à l’amiable tout différend susceptible d’intervenir concernant les CGU.</p><p>A DÉFAUT D’UN ACCORD AMIABLE DANS UN DÉLAI DE 30 JOURS SUIVANT LA LETTRE INITIANT UNE TELLE DÉMARCHE DE RÈGLEMENT AMIABLE, TOUT LITIGE RELATIF A L\'EXISTENCE, L\'INTERPRETATION, L\'EXECUTION OU LA RUPTURE DES CGU, MEME EN CAS DE PLURALITE DE DEFENDEURS, SERA SOUMIS (SAUF COMPÉTENCE EXCLUSIVE RECONNUE À UNE JURIDICTION DIFFÉRENTE, NOTAMMENT LE TRIBUNAL DE GRANDE INSTANCE DE ParIS EN MATIÈRE DE DROIT DE LA PROPRIÉTÉ INTELLECTUELLE) : (i) EN CAS DE LITIGE AVEC UN COMMERÇANT, AU TRIBUNAL DE COMMERCE DE PARIS ; (ii) EN CAS DE LITIGE AVEC UN NON COMMERÇANT, AU TRIBUNAL FRANÇAIS TERRITORIALEMENT COMPÉTENT.</p><p><br></p><p><br></p><p><br></p>\"}}]','cgu','Condition Générales d\'Utilisation',NULL,NULL,'fr_FR'),(5,5,'reinsurance','[{\"code\":\"sections.reinsurance\",\"data\":{\"blocks\":[{\"icon\":\"pin\",\"title\":\"<strong>Sélectionnez </strong>votre partenaire <strong>Volkswagen Véhicules Utilitaires </strong>près de chez vous.\"},{\"icon\":\"data-filled\",\"title\":\"<strong>Contactez-le par téléphone. </strong> Faites lui part de votre liste d’achats et demandez-lui conseil si besoin.\"},{\"icon\":\"customers-center\",\"title\":\"<strong>Votre partenaire Volkswagen Véhicules Utilitaires </strong> vous conseille et vous renseigne sur la disponibilité de vos produits.\"},{\"icon\":\"shopping-cart\",\"title\":\"<strong>Retirez</strong> vos achats chez votre partenaire <strong>Volkswagen Véhicules Utilitaires </strong>.\"}],\"title\":\"Validez votre commande\"}}]','reinsurance',NULL,NULL,NULL,'fr_FR');
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
INSERT INTO `monsieurbiz_homepage_homepage` (`id`, `created_at`, `updated_at`) VALUES (1,'2022-03-07 12:20:28','2022-11-21 14:06:10');
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
INSERT INTO `monsieurbiz_homepage_homepage_translation` (`id`, `translatable_id`, `name`, `content`, `metaTitle`, `metaKeywords`, `metaDescription`, `locale`) VALUES (1,1,'V1','[{\"code\":\"sections.hero\",\"data\":{\"blocks\":[{\"image\":\"/media/rich-editor/mu002533vwmultivanoverviewstage_1_1_1920x717_crop_center-628b91620922c.jpg\",\"alt\":null,\"title\":\"Accessoires d’Origine Volkswagen Véhicules Utilitaires  :\",\"text\":\"Exigez l’excellence pour votre véhicule\",\"cta_link\":\"https://accessoires.volkswagen-utilitaires.fr/collections/accessoires\",\"cta_label\":\"DÉCOUVRIR\"}]}},{\"code\":\"sections.reinsurance\",\"data\":{\"blocks\":[{\"icon\":\"configurator-private\",\"title\":\"<b>Sélectionnez</b> le modèle de votre véhicule\"},{\"icon\":\"we-deliver\",\"title\":\"<b>Faites votre choix</b> parmi le catalogue d’Accessoires d’Origine <b>Volkswagen Véhicules Utilitaires</b>\"},{\"icon\":\"local-business\",\"title\":\"<b>Contactez</b> le partenaire <b>Volkswagen Véhicules Utilitaires</b> de votre choix\"},{\"icon\":\"shopping-cart\",\"title\":\"<b>Retirez</b> vos achats chez votre partenaire<b> Volkswagen Véhicules Utilitaires</b>\"}],\"title\":\"Découvrez les Accessoires d\'Origine Volkswagen Véhicules Utilitaires\"}},{\"code\":\"sections.section_vehicles_list\",\"data\":{\"title\":\"Sélectionnez votre modèle\"}},{\"code\":\"sections.section_pushes\",\"data\":{\"blocks\":[{\"image\":\"/media/rich-editor/amarok_600x394_crop_center-628b9255f01d1.jpg\",\"alt\":null,\"title\":\"Accessoires Amarok\",\"text\":null,\"url\":\"https://accessoires.volkswagen-utilitaires.fr/collections/amarok?\",\"label\":\"Voir tous les accessoires\",\"cta_style\":\"button\"},{\"image\":\"/media/rich-editor/slidersmarquevu2_420x273_crop_center-628b9255f163a.jpg\",\"alt\":null,\"title\":\"Accessoires d\'Origine : Des pièces sur mesure pour votre véhicule\",\"text\":null,\"url\":\"https://accessoires.volkswagen-utilitaires.fr/pages/accessoires-d-origine\",\"label\":\"En savoir plus\",\"cta_style\":\"link\"},{\"image\":\"/media/rich-editor/utilitaire_720x500_55c45a8a0a624bb6baf07432b9cd4b16_420x273_crop_center-628b9255f1a1c.jpg\",\"alt\":null,\"title\":\"Découvrez nos promotions du moment!\",\"text\":null,\"url\":\"https://accessoires.volkswagen-utilitaires.fr/collections/nos-promotions\",\"label\":\"En savoir plus\",\"cta_style\":\"link\"}]}},{\"code\":\"sections.push_products\",\"data\":{\"title\":\"Les promotions du moment\",\"collection\":\"accessories\",\"count\":\"10\"}},{\"code\":\"sections.section_pushes\",\"data\":{\"blocks\":[{\"image\":\"/media/rich-editor/cv1035vwcaravellefrontviewstage_2_720x500_crop_center-628b92cf43386.jpg\",\"alt\":null,\"title\":\"Plus de style !\",\"text\":\"Besoin de personnaliser votre Volkswagen à votre image ou de l\'équiper d\'accessoires parfaitement adaptés à votre quotidien ?\",\"url\":\"https://accessoires.volkswagen-utilitaires.fr/collections/design\",\"label\":\"Découvrir\",\"cta_style\":\"button\"},{\"image\":\"/media/rich-editor/portevelossurbarredetoit0_2_420x294_crop_center-628b9305b4de4.jpg\",\"alt\":null,\"title\":\"En toute liberté\",\"text\":\"Des accessoires pour toujours plus de possibilités\",\"url\":\"https://accessoires.volkswagen-utilitaires.fr/collections/transport/porte-velos\",\"label\":\"Découvrir\",\"cta_style\":\"button\"}]}},{\"code\":\"sections.section_pushes\",\"data\":{\"blocks\":[{\"image\":\"/media/rich-editor/tableplianteavecportegobelet0_2_420x294_crop_center-628b93ab35975.jpg\",\"alt\":null,\"title\":\"Du confort pour tous les besoins\",\"text\":\"Des accessoires pour votre confort jusqu’au moindre détail\",\"url\":\"https://accessoires.volkswagen-utilitaires.fr/collections/confort\",\"label\":\"Découvrir\",\"cta_style\":\"button\"},{\"image\":\"/media/rich-editor/vwu_ban_hp_hiver_1_720x500_crop_center-628b936a22aa3.jpg\",\"alt\":null,\"title\":\"Prenez de l’avance sur les pistes\",\"text\":\"Les accessoires hiver pour tous types de situations\",\"url\":\"https://accessoires.volkswagen-utilitaires.fr/collections/hiver\",\"label\":\"Découvrir\",\"cta_style\":\"button\"}]}}]','Volkswagen Utilitaires',NULL,'Accessoires d’origine Volkswagen Véhicules Utilitaires - Volkswagen Officiel','fr_FR');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monsieurbiz_menu`
--

LOCK TABLES `monsieurbiz_menu` WRITE;
/*!40000 ALTER TABLE `monsieurbiz_menu` DISABLE KEYS */;
INSERT INTO `monsieurbiz_menu` (`id`, `created_at`, `updated_at`, `code`, `is_system`) VALUES (1,'2022-03-04 15:11:16','2022-03-07 12:23:15','footer',1),(3,'2022-04-04 07:37:19','2022-04-04 07:37:19','sidebar',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monsieurbiz_menu_item`
--

LOCK TABLES `monsieurbiz_menu_item` WRITE;
/*!40000 ALTER TABLE `monsieurbiz_menu_item` DISABLE KEYS */;
INSERT INTO `monsieurbiz_menu_item` (`id`, `menu_id`, `parent_id`, `created_at`, `updated_at`, `position`) VALUES (1,1,NULL,'2022-03-04 15:11:39','2023-10-19 09:30:07',1),(2,1,1,'2022-03-07 12:23:41','2023-10-19 09:30:07',1),(3,1,1,'2022-03-07 12:23:51','2023-10-19 09:30:07',2),(4,1,NULL,'2022-03-07 12:23:57','2023-10-19 09:30:07',2),(5,1,4,'2022-03-07 12:24:09','2023-10-19 09:30:07',1),(6,1,4,'2022-03-07 12:24:23','2023-10-19 09:30:07',2),(7,1,NULL,'2022-03-07 12:24:29','2023-10-19 09:30:07',3),(8,1,7,'2022-03-07 12:24:37','2023-10-19 09:30:07',1),(9,1,7,'2022-03-07 12:24:47','2023-10-19 09:30:07',2),(10,1,NULL,'2022-03-07 12:24:52','2023-10-19 09:30:07',4),(11,1,10,'2022-03-07 12:25:06','2023-10-19 09:30:07',1),(12,1,10,'2022-03-07 12:25:18','2023-10-19 09:30:07',5),(13,3,NULL,'2022-04-04 07:37:40','2023-10-19 09:30:07',1),(14,1,10,'2022-05-11 10:09:35','2023-10-19 09:30:07',6),(15,1,10,'2022-05-11 10:10:09','2023-10-19 09:30:07',7),(16,1,10,'2022-05-11 10:10:26','2023-10-19 09:30:07',8),(17,1,7,'2022-05-11 10:23:35','2023-10-19 09:30:07',3),(18,1,7,'2022-05-11 10:24:02','2023-10-19 09:30:07',4),(19,1,7,'2022-05-11 10:24:24','2023-10-19 09:30:07',5),(20,1,4,'2022-05-11 10:25:04','2023-10-19 09:30:07',3),(21,1,4,'2022-05-11 10:25:28','2023-10-19 09:30:07',4),(24,1,4,'2022-07-11 11:49:31','2023-10-19 09:30:07',5);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monsieurbiz_menu_item_translation`
--

LOCK TABLES `monsieurbiz_menu_item_translation` WRITE;
/*!40000 ALTER TABLE `monsieurbiz_menu_item_translation` DISABLE KEYS */;
INSERT INTO `monsieurbiz_menu_item_translation` (`id`, `translatable_id`, `url`, `label`, `locale`) VALUES (1,1,NULL,'Volkswagen Véhicules Utilitaires','fr_FR'),(2,2,'https://volkswagengroup.fr/','Volkswagen Group France','fr_FR'),(3,3,'https://www.volkswagen-utilitaires.fr/fr.html#/Europe','Volkswagen International','fr_FR'),(4,4,NULL,'Aller plus loin','fr_FR'),(5,5,'https://www.volkswagen-utilitaires.fr/fr/achat/offres.html','Offres du moment','fr_FR'),(6,6,'https://www.volkswagen-utilitaires.fr/fr/trouvez-votre-partenaire-volkswagen.html','Le Réseau','fr_FR'),(7,7,NULL,'À propos','fr_FR'),(8,8,'https://www.volkswagen-utilitaires.fr/fr/vw/contact.html','Contact','fr_FR'),(9,9,'https://www.volkswagen-utilitaires.fr/fr/vw/informations-legales.html','Informations légales','fr_FR'),(10,10,NULL,'Réseaux sociaux','fr_FR'),(11,11,'https://www.facebook.com/Volkswagen.Vehicules.Utilitaires','Facebook','fr_FR'),(12,12,'https://twitter.com/utilitairesvw','Twitter','fr_FR'),(13,13,'https://www.volkswagen-utilitaires.fr/','www.volkswagen-utilitaires.fr','fr_FR'),(14,14,'https://www.instagram.com/volkswagen_utilitaires/','Instagram','fr_FR'),(15,15,'https://www.youtube.com/channel/UC3kdyhkkTbQT16-fAQpFkRA','Youtube','fr_FR'),(16,16,'https://www.linkedin.com/company/volkswagen-v%C3%A9hicules-utilitaires','LinkedIn','fr_FR'),(17,17,'/pages/votre-consentement','Gestion de vos préférences de cookies','fr_FR'),(18,18,'https://www.volkswagen-utilitaires.fr/fr/vw/politique-de-confidentialite.html','Politique de confidentialité','fr_FR'),(19,19,'https://www.volkswagen-utilitaires.fr/fr/vw/normes-wltp-ndec.html','Normes WLTP & NEDC','fr_FR'),(20,20,'https://www.volkswagen-utilitaires.fr/app/local/?intcmp=footer','Prendre rendez-vous','fr_FR'),(21,21,'https://www.volkswagen-utilitaires.fr/fr/vw/maintenance-stocks.html','Véhicules neufs en stock','fr_FR'),(24,24,'https://www.volkswagen-utilitaires.fr/fr/achat/documentations.html','Documentations','fr_FR');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_admin_user`
--

LOCK TABLES `sylius_admin_user` WRITE;
/*!40000 ALTER TABLE `sylius_admin_user` DISABLE KEYS */;
INSERT INTO `sylius_admin_user` (`id`, `username`, `username_canonical`, `enabled`, `salt`, `password`, `last_login`, `password_reset_token`, `password_requested_at`, `email_verification_token`, `verified_at`, `locked`, `expires_at`, `credentials_expire_at`, `roles`, `email`, `email_canonical`, `created_at`, `updated_at`, `first_name`, `last_name`, `locale_code`, `encoder_name`) VALUES (1,'alaska','alaska',1,'lxf9l7268moo4gckwk8wg0kogcgc040','$argon2i$v=19$m=65536,t=4,p=1$bkwvOTAuU1JhY1REazFGVQ$u5V2pdREuHUgUiZKVOZPlW9IYQXGPxWUS1uXuA2B6FA','2023-10-19 09:28:09',NULL,NULL,NULL,NULL,0,NULL,NULL,'a:2:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";i:1;s:15:\"ROLE_API_ACCESS\";}','jerome@alaska.fr','jerome@alaska.fr','2022-03-04 12:59:51','2023-10-19 09:28:09',NULL,NULL,'fr_FR','argon2i'),(2,'oyez','oyez',1,'6fhi9pw3cigw8840sc0sss88wkc808o','$argon2i$v=19$m=65536,t=4,p=1$NTZFOHlMblVzS0FIR01kWA$f1o2+bJYxfGJmg+F1UBOWuyGEd7M3sSGYgNPP1MXSIs','2023-09-25 10:03:58',NULL,NULL,NULL,NULL,0,NULL,NULL,'a:2:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";i:1;s:15:\"ROLE_API_ACCESS\";}','dev@oyez.fr','dev@oyez.fr','2022-03-07 17:27:54','2023-09-25 10:03:58',NULL,NULL,'fr_FR','argon2i'),(3,'Eliott','eliott',1,'chu0q3mcgso4kk0ss08gwkwgcs4wsgg','$argon2i$v=19$m=65536,t=4,p=1$RWtsTDJMdW5qOVQ1WWtnOA$Jp9h/NexBib0a2Oi0JG0c9xQalqvkl6o0wdG2uS0aV4','2022-10-24 14:11:35',NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}','eliott.devanssay@oyez.fr','eliott.devanssay@oyez.fr','2022-05-11 10:29:37','2022-10-24 14:11:35','Eliott','de Vanssay','fr_FR','argon2i'),(4,'yassine.hajouji','yassine.hajouji',1,'lfmuvo1xx3448ccw8o0kkoosk0soc8k','$argon2i$v=19$m=65536,t=4,p=1$OVA4bnJ4anpkTVQ3eVFSRw$9nxqfmNuYJz/IrvSyDsLrUwmGs6OiQXsNb6GRofm5WA','2023-10-19 09:30:14',NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}','yassine.hajouji@inventiv-it.fr','yassine.hajouji@inventiv-it.fr','2023-10-19 09:29:28','2023-10-19 09:30:14',NULL,NULL,'fr_FR','argon2i');
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
) ENGINE=InnoDB AUTO_INCREMENT=1568 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_pricing`
--

LOCK TABLES `sylius_channel_pricing` WRITE;
/*!40000 ALTER TABLE `sylius_channel_pricing` DISABLE KEYS */;
INSERT INTO `sylius_channel_pricing` (`id`, `product_variant_id`, `price`, `channel_code`, `original_price`) VALUES (1341,1341,3200,'default',3200),(1342,1342,3800,'default',3800),(1343,1343,3500,'default',3500),(1344,1344,2500,'default',2500),(1345,1345,3000,'default',3000),(1346,1346,3400,'default',3400),(1347,1347,3000,'default',3000),(1348,1349,4200,'default',4200),(1349,1350,3800,'default',3800),(1350,1351,3700,'default',3700),(1351,1352,4000,'default',4000),(1352,1353,3500,'default',3500),(1353,1354,16500,'default',16500),(1354,1355,70000,'default',70000),(1355,1356,88000,'default',88000),(1356,1358,14000,'default',14000),(1357,1359,60000,'default',60000),(1358,1360,70000,'default',70000),(1359,1361,85000,'default',85000),(1360,1366,12200,'default',12200),(1361,1369,3300,'default',3300),(1362,1370,5300,'default',5300),(1363,1371,36500,'default',36500),(1364,1372,14900,'default',14900),(1365,1373,4100,'default',4100),(1366,1374,2600,'default',2600),(1367,1375,101000,'default',101000),(1368,1376,59000,'default',59000),(1369,1377,20000,'default',20000),(1370,1378,50000,'default',50000),(1371,1379,75200,'default',75200),(1372,1380,61800,'default',61800),(1373,1381,73700,'default',73700),(1374,1382,69400,'default',69400),(1375,1383,68400,'default',68400),(1376,1384,5300,'default',5300),(1377,1385,5300,'default',5300),(1378,1386,9300,'default',9300),(1379,1387,5000,'default',5000),(1380,1388,3100,'default',3100),(1381,1389,35800,'default',35800),(1382,1390,74000,'default',74000),(1383,1391,83300,'default',83300),(1384,1392,31500,'default',31500),(1385,1393,10600,'default',10600),(1386,1394,193000,'default',193000),(1387,1395,384600,'default',384600),(1388,1396,320500,'default',320500),(1389,1397,320500,'default',320500),(1390,1398,320500,'default',320500),(1391,1399,320500,'default',320500),(1392,1400,320500,'default',320500),(1393,1401,320500,'default',320500),(1394,1402,55100,'default',55100),(1395,1404,6400,'default',6400),(1396,1405,6700,'default',6700),(1397,1408,3300,'default',3300),(1398,1409,3300,'default',3300),(1399,1410,34900,'default',34900),(1400,1411,8000,'default',8000),(1401,1415,3100,'default',3100),(1402,1417,9300,'default',9300),(1403,1418,8300,'default',8300),(1404,1419,4700,'default',4700),(1405,1421,4500,'default',4500),(1406,1422,7900,'default',7900),(1407,1423,4800,'default',4800),(1408,1424,4500,'default',4500),(1409,1426,6500,'default',6500),(1410,1427,13800,'default',13800),(1411,1428,13800,'default',13800),(1412,1429,12800,'default',12800),(1413,1432,12300,'default',12300),(1414,1433,10300,'default',10300),(1415,1435,12800,'default',12800),(1416,1436,32000,'default',32000),(1417,1437,5700,'default',5700),(1418,1442,13600,'default',13600),(1419,1443,12600,'default',12600),(1420,1444,24100,'default',24100),(1421,1447,4200,'default',4200),(1422,1448,4200,'default',4200),(1423,1449,4000,'default',4000),(1424,1452,6000,'default',6000),(1425,1453,9400,'default',9400),(1426,1456,3600,'default',3600),(1427,1457,5500,'default',5500),(1428,1458,78000,'default',78000),(1429,1463,36100,'default',36100),(1430,1464,20000,'default',20000),(1431,1465,12200,'default',12200),(1432,1466,13000,'default',13000),(1433,1467,35000,'default',35000),(1434,1468,1900,'default',1900),(1435,1469,13000,'default',13000),(1436,1473,10100,'default',10100),(1437,1474,8000,'default',8000),(1438,1475,14300,'default',14300),(1439,1476,7200,'default',7200),(1440,1479,6200,'default',6200),(1441,1481,10100,'default',10100),(1442,1482,13300,'default',13300),(1443,1485,30800,'default',30800),(1444,1486,30800,'default',30800),(1445,1489,13800,'default',13800),(1446,1490,12600,'default',12600),(1447,1492,72100,'default',72100),(1448,1493,92900,'default',92900),(1449,1494,4000,'default',4000),(1450,1495,8000,'default',8000),(1451,1496,19500,'default',19500),(1452,1497,8200,'default',8200),(1453,1498,5500,'default',5500),(1454,1501,11200,'default',11200),(1455,1509,7500,'default',7500),(1456,1510,30800,'default',30800),(1457,1511,5500,'default',5500),(1458,1512,23900,'default',23900),(1459,1513,2600,'default',2600),(1460,1515,30400,'default',30400),(1461,1516,42900,'default',42900),(1462,1518,7900,'default',7900),(1463,1521,13500,'default',13500),(1464,1522,8500,'default',8500),(1465,1523,8700,'default',8700),(1466,1524,5500,'default',5500),(1467,1526,4600,'default',4600),(1468,1527,42900,'default',42900),(1469,1529,5500,'default',5500),(1470,1532,5500,'default',5500),(1471,1533,4500,'default',4500),(1472,1534,4000,'default',4000),(1473,1535,4000,'default',4000),(1474,1536,4000,'default',4000),(1475,1537,10600,'default',10600),(1476,1538,7500,'default',7500),(1477,1539,34500,'default',34500),(1478,1540,3100,'default',3100),(1479,1541,3000,'default',3000),(1480,1542,3400,'default',3400),(1481,1543,8100,'default',8100),(1482,1544,5300,'default',5300),(1483,1545,5300,'default',5300),(1484,1546,10000,'default',10000),(1485,1547,4400,'default',4400),(1486,1548,6900,'default',6900),(1487,1549,5100,'default',5100),(1488,1550,4700,'default',4700),(1489,1551,5200,'default',5200),(1490,1552,6600,'default',6600),(1491,1553,13600,'default',13600),(1492,1554,12600,'default',12600),(1493,1555,3100,'default',3100),(1494,1556,800,'default',800),(1495,1557,2900,'default',2900),(1496,1558,4700,'default',4700),(1497,1559,3000,'default',3000),(1498,1560,62000,'default',62000),(1499,1561,10600,'default',10600),(1500,1562,85300,'default',85300),(1501,1563,4200,'default',4200),(1502,1564,3700,'default',3700),(1503,1565,5000,'default',5000),(1504,1566,4500,'default',4500),(1505,1567,24900,'default',24900),(1506,1568,9600,'default',9600),(1507,1569,3300,'default',3300),(1508,1570,6400,'default',6400),(1509,1571,800,'default',800),(1510,1348,3700,'default',3700),(1511,1416,10100,'default',10100),(1512,1420,4600,'default',4600),(1513,1441,29700,'default',29700),(1514,1454,3600,'default',3600),(1515,1455,4800,'default',4800),(1516,1528,6100,'default',6100),(1517,1525,5200,'default',5200),(1518,1362,1400,'default',1400),(1519,1407,11400,'default',11400),(1520,1434,4700,'default',4700),(1521,1440,6200,'default',6200),(1522,1488,10300,'default',10300),(1523,1491,6600,'default',6600),(1524,1500,5000,'default',5000),(1525,1514,77200,'default',77200),(1526,1367,850,'default',850),(1527,1502,1900,'default',1900),(1528,1503,7600,'default',7600),(1529,1504,2800,'default',2800),(1530,1505,3200,'default',3200),(1531,1506,4500,'default',4500),(1532,1507,9200,'default',9200),(1533,1508,5900,'default',5900),(1534,1357,12200,'default',12200),(1535,1406,27500,'default',27500),(1536,1430,18100,'default',18100),(1537,1445,33400,'default',33400),(1538,1446,33400,'default',33400),(1539,1517,22800,'default',22800),(1540,1403,23700,'default',23700),(1541,1412,26000,'default',26000),(1542,1413,32300,'default',32300),(1543,1414,50400,'default',50400),(1544,1425,44500,'default',44500),(1545,1431,42300,'default',42300),(1546,1438,10800,'default',10800),(1547,1439,31900,'default',31900),(1548,1450,31800,'default',31800),(1549,1451,56000,'default',56000),(1550,1470,33100,'default',33100),(1551,1471,33600,'default',33600),(1552,1472,33100,'default',33100),(1553,1477,29200,'default',29200),(1554,1478,29400,'default',29400),(1555,1480,38200,'default',38200),(1556,1483,28600,'default',28600),(1557,1484,29400,'default',29400),(1558,1487,28100,'default',28100),(1559,1499,12100,'default',12100),(1560,1519,21500,'default',21500),(1561,1520,54100,'default',54100),(1562,1530,12100,'default',12100),(1563,1531,37200,'default',37200),(1564,1572,65200,'default',65200),(1565,1573,30800,'default',30800),(1566,1574,84800,'default',84800),(1567,1575,31300,'default',31300);
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
INSERT INTO `sylius_migrations` (`version`, `executed_at`, `execution_time`) VALUES ('App\\Migrations\\Version20220304142445','2022-03-04 15:24:55',376),('App\\Migrations\\Version20220304145919','2022-03-04 16:04:12',319),('App\\Migrations\\Version20220404075217','2022-04-04 09:07:17',349),('App\\Migrations\\Version20220404075721','2022-04-04 09:07:18',1092),('App\\Migrations\\Version20220404082150','2022-04-04 09:07:19',80),('App\\Migrations\\Version20220414094502','2022-04-14 11:45:27',217),('App\\Migrations\\Version20220425094731','2022-04-26 08:19:51',1845),('App\\Migrations\\Version20220425125531','2022-04-26 08:19:53',4983),('App\\Migrations\\Version20220425144223','2022-04-26 08:19:58',5779),('App\\Migrations\\Version20221017144929','2022-11-24 09:21:43',92),('MonsieurBiz\\SyliusCmsPagePlugin\\Migrations\\Version20210311101300','2022-03-04 16:15:41',306),('MonsieurBiz\\SyliusHomepagePlugin\\Migrations\\Version20210311135118','2022-03-04 16:16:12',272),('MonsieurBiz\\SyliusMenuPlugin\\Migrations\\Version20210416121344','2022-03-04 15:10:37',342),('MonsieurBiz\\SyliusSettingsPlugin\\Migrations\\Version20210507153200','2022-03-07 12:28:33',78),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161202011555','2022-03-04 12:59:29',5074),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161209095131','2022-03-04 12:59:34',8),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161214153137','2022-03-04 12:59:34',89),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161215103325','2022-03-04 12:59:34',33),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161219160441','2022-03-04 12:59:34',84),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161220092422','2022-03-04 12:59:34',32),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161221133514','2022-03-04 12:59:34',21),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161223091334','2022-03-04 12:59:34',40),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161223164558','2022-03-04 12:59:34',29),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170103120334','2022-03-04 12:59:34',25),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170109143010','2022-03-04 12:59:35',25),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170110120125','2022-03-04 12:59:35',40),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170116215417','2022-03-04 12:59:35',68),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170117075436','2022-03-04 12:59:35',31),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170120164250','2022-03-04 12:59:35',39),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170124221955','2022-03-04 12:59:35',23),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170201094058','2022-03-04 12:59:35',64),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170206122839','2022-03-04 12:59:35',19),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170206141520','2022-03-04 12:59:35',37),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170208102345','2022-03-04 12:59:35',40),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170208103250','2022-03-04 12:59:35',23),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170214095710','2022-03-04 12:59:35',74),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170214104908','2022-03-04 12:59:35',28),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170215143031','2022-03-04 12:59:35',9),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170217141621','2022-03-04 12:59:35',68),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170220150813','2022-03-04 12:59:35',32),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170223071604','2022-03-04 12:59:35',90),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170301135010','2022-03-04 12:59:35',105),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170303170201','2022-03-04 12:59:35',30),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170321131352','2022-03-04 12:59:35',36),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170327135945','2022-03-04 12:59:35',73),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170401200415','2022-03-04 12:59:36',30),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170518123056','2022-03-04 12:59:36',1),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170824124122','2022-03-04 12:59:36',47),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170913125128','2022-03-04 12:59:36',32),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20171003103916','2022-03-04 12:59:36',9),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20180102140039','2022-03-04 12:59:36',10),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20180226142349','2022-03-04 12:59:36',47),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190109095211','2022-03-04 12:59:36',128),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190109160409','2022-03-04 12:59:36',44),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190204092544','2022-03-04 12:59:36',11),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190416073011','2022-03-04 12:59:36',22),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190607135638','2022-03-04 12:59:36',52),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20191024065651','2022-03-04 12:59:36',49),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200110132702','2022-03-04 12:59:36',125),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200122082429','2022-03-04 12:59:36',104),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200202104152','2022-03-04 12:59:36',23),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200309172908','2022-03-04 12:59:36',31),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200325075815','2022-03-04 12:59:36',28),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200916093101','2022-03-04 12:59:36',24),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20201017150005','2022-03-04 12:59:36',39),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20201104085538','2022-03-04 12:59:36',43),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20201130071338','2022-03-04 12:59:36',356),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20201204071301','2022-03-04 12:59:37',252),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20201208105207','2022-03-04 12:59:37',1),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20210311142134','2022-03-04 12:59:37',40),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20210408131321','2022-03-04 12:59:37',11),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20210422105530','2022-03-04 12:59:37',28),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20211018130725','2022-03-04 12:59:37',1),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20220210135918','2022-03-10 17:57:52',269),('Sylius\\PayPalPlugin\\Migrations\\Version20200907102535','2022-03-04 12:59:37',48);
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
) ENGINE=InnoDB AUTO_INCREMENT=407 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=928 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=4957 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=1569 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product`
--

LOCK TABLES `sylius_product` WRITE;
/*!40000 ALTER TABLE `sylius_product` DISABLE KEYS */;
INSERT INTO `sylius_product` (`id`, `main_taxon_id`, `code`, `created_at`, `updated_at`, `enabled`, `variant_selection_method`, `average_rating`, `synced_at`) VALUES (1334,50,'000051446AB','2022-05-24 09:09:18','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1335,50,'000051446AC','2022-05-24 09:09:18','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1336,50,'000051446AD','2022-05-24 09:09:19','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1337,50,'000051446AE','2022-05-24 09:09:19','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1338,50,'000051446AQ','2022-05-24 09:09:19','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1339,50,'000051446AR','2022-05-24 09:09:19','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1340,50,'000051446AS','2022-05-24 09:09:20','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1341,50,'000051446BA','2022-05-24 09:09:20','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1342,50,'000051446BB','2022-05-24 09:09:20','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1343,50,'000051446BC','2022-05-24 09:09:20','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1344,50,'000051446BD','2022-05-24 09:09:21','2023-09-25 10:02:08',1,'choice',0,'2023-09-25 10:02:08'),(1345,50,'000051446BN','2022-05-24 09:09:21','2023-09-25 10:02:08',1,'choice',0,'2023-09-25 10:02:08'),(1346,50,'000051446BP','2022-05-24 09:09:21','2023-09-25 10:02:08',1,'choice',0,'2023-09-25 10:02:08'),(1347,25,'000065400F','2022-05-24 09:09:21','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1348,26,'000071105G','2022-05-24 09:09:21','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1349,26,'000071105J','2022-05-24 09:09:21','2023-09-25 10:02:08',1,'choice',0,'2023-09-25 10:02:08'),(1350,10,'000071120HA','2022-05-24 09:09:22','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1351,26,'000071128F','2022-05-24 09:09:23','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1352,32,'000071200AD','2022-05-24 09:09:23','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1353,32,'000071200AE','2022-05-24 09:09:23','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1354,32,'000071200AF','2022-05-24 09:09:24','2023-09-25 10:02:08',1,'choice',0,'2023-09-25 10:02:08'),(1355,45,'000093059B','2022-05-24 09:09:25','2023-09-25 10:02:14',1,'choice',0,'2023-09-25 10:02:12'),(1356,NULL,'000096166A','2022-05-24 09:09:25','2022-06-02 21:14:32',0,'choice',0,'2022-05-24 09:09:18'),(1357,NULL,'000096304J','2022-05-24 09:09:25','2022-06-02 21:14:32',0,'choice',0,'2022-05-24 09:09:18'),(1358,NULL,'000096311L','2022-05-24 09:09:25','2022-06-02 21:14:32',0,'choice',0,'2022-05-24 09:09:18'),(1359,26,'1K0071127A','2022-05-24 09:09:26','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1360,40,'211087511A','2022-05-24 09:09:26','2023-09-25 10:02:14',1,'choice',0,'2023-09-25 10:02:12'),(1361,40,'231087317','2022-05-24 09:09:27','2022-06-02 21:14:32',0,'choice',0,'2022-05-24 09:09:18'),(1362,45,'2E0017242','2022-05-24 09:09:27','2023-09-25 10:02:08',1,'choice',0,'2023-09-25 10:02:08'),(1363,45,'2E0017244A','2022-05-24 09:09:27','2023-09-25 10:02:08',1,'choice',0,'2023-09-25 10:02:08'),(1364,10,'2E0071126A','2022-05-24 09:09:27','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1365,10,'2E0071126B','2022-05-24 09:09:28','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1366,12,'2H0061276_WGK','2022-05-24 09:09:28','2023-09-25 10:02:11',1,'choice',0,'2023-09-25 10:02:10'),(1367,12,'2H0061512_82V','2022-05-24 09:09:28','2023-09-25 10:02:11',1,'choice',0,'2023-09-25 10:02:10'),(1368,40,'2H0071000C_72A','2022-05-24 09:09:28','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1369,40,'2H0071000E_NP1','2022-05-24 09:09:28','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1370,36,'2H0071496B_8Z8','2022-05-24 09:09:28','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1371,36,'2H0071499_AX1','2022-05-24 09:09:28','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1372,40,'2H0071691B','2022-05-24 09:09:29','2023-09-25 10:02:10',1,'choice',0,'2023-09-25 10:02:08'),(1373,40,'2H0071691E_72A','2022-05-24 09:09:29','2023-09-25 10:02:10',1,'choice',0,'2023-09-25 10:02:08'),(1374,40,'2H0071691L_041','2022-05-24 09:09:29','2023-09-25 10:02:17',1,'choice',0,'2023-09-25 10:02:17'),(1375,40,'2H0071693A','2022-05-24 09:09:29','2023-09-25 10:02:10',1,'choice',0,'2023-09-25 10:02:08'),(1376,40,'2H0071693C_72A','2022-05-24 09:09:29','2023-09-25 10:02:10',1,'choice',0,'2023-09-25 10:02:08'),(1377,14,'2H0075101B','2022-05-24 09:09:29','2023-09-25 10:02:11',1,'choice',0,'2023-09-25 10:02:10'),(1378,14,'2H0075111D','2022-05-24 09:09:29','2023-09-25 10:02:11',1,'choice',0,'2023-09-25 10:02:10'),(1379,12,'2H1061270_WGK','2022-05-24 09:09:29','2023-09-25 10:02:11',1,'choice',0,'2023-09-25 10:02:10'),(1380,12,'2H1061500A_82V','2022-05-24 09:09:29','2023-09-25 10:02:11',1,'choice',0,'2023-09-25 10:02:10'),(1381,12,'2H1061502_82V','2022-05-24 09:09:29','2023-09-25 10:02:11',1,'choice',0,'2023-09-25 10:02:10'),(1382,43,'2H6061166','2022-05-24 09:09:30','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1383,40,'2H6071691_041','2022-05-24 09:09:30','2023-09-25 10:02:10',1,'choice',0,'2023-09-25 10:02:10'),(1384,40,'2H6071691A_72A','2022-05-24 09:09:30','2023-09-25 10:02:10',1,'choice',0,'2023-09-25 10:02:10'),(1385,11,'2H7061162D','2022-05-24 09:09:30','2023-09-25 10:02:11',1,'choice',0,'2023-09-25 10:02:10'),(1386,12,'2H7061275__WGK','2022-05-24 09:09:31','2023-09-25 10:02:11',1,'choice',0,'2023-09-25 10:02:10'),(1387,40,'2H7071774C_041','2022-05-24 09:09:31','2023-09-25 10:02:17',1,'choice',0,'2023-09-25 10:02:17'),(1388,40,'2H7071776H_A5W','2022-05-24 09:09:31','2023-09-25 10:02:11',1,'choice',0,'2023-09-25 10:02:10'),(1389,40,'2H7071776H_A7W','2022-05-24 09:09:32','2023-09-25 10:02:17',1,'choice',0,'2023-09-25 10:02:17'),(1390,40,'2H7071776H_C9X','2022-05-24 09:09:32','2023-09-25 10:02:17',1,'choice',0,'2023-09-25 10:02:17'),(1391,40,'2H7071776H_H8W','2022-05-24 09:09:32','2023-09-25 10:02:17',1,'choice',0,'2023-09-25 10:02:17'),(1392,40,'2H7071776H_R7H','2022-05-24 09:09:32','2023-09-25 10:02:17',1,'choice',0,'2023-09-25 10:02:17'),(1393,40,'2H7071776H_T5U','2022-05-24 09:09:32','2023-09-25 10:02:17',1,'choice',0,'2023-09-25 10:02:17'),(1394,40,'2H7071776H_WKF','2022-05-24 09:09:32','2023-09-25 10:02:17',1,'choice',0,'2023-09-25 10:02:17'),(1395,40,'2H7071778A','2022-05-24 09:09:32','2023-09-25 10:02:12',1,'choice',0,'2023-09-25 10:02:10'),(1396,10,'2K0055204D','2022-05-24 09:09:32','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1397,11,'2K0061160','2022-05-24 09:09:32','2023-09-25 10:02:12',1,'choice',0,'2023-09-25 10:02:10'),(1398,11,'2K0061162','2022-05-24 09:09:33','2023-09-25 10:02:12',1,'choice',0,'2023-09-25 10:02:10'),(1399,10,'2K0061172','2022-05-24 09:09:33','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1400,13,'2K0061195','2022-05-24 09:09:33','2023-09-25 10:02:14',1,'choice',0,'2023-09-25 10:02:12'),(1401,12,'2K0061512_82V','2022-05-24 09:09:34','2023-09-25 10:02:12',1,'choice',0,'2023-09-25 10:02:10'),(1402,14,'2K006151282V','2022-05-24 09:09:34','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1403,10,'2K0071126','2022-05-24 09:09:34','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1404,43,'2K0072193B','2022-05-24 09:09:34','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1405,10,'2K0092101C','2022-05-24 09:09:35','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1406,10,'2K0092101D','2022-05-24 09:09:35','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1407,10,'2K0092155C','2022-05-24 09:09:35','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1408,12,'2K1061161_71N','2022-05-24 09:09:35','2023-09-25 10:02:12',1,'choice',0,'2023-09-25 10:02:10'),(1409,12,'2K1061270__WGK','2022-05-24 09:09:35','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1410,12,'2K1061270_WGK','2022-05-24 09:09:35','2022-06-21 01:08:01',0,'choice',0,'2022-06-20 01:07:16'),(1411,12,'2K1061275PBRYJ','2022-05-24 09:09:36','2023-09-25 10:02:12',1,'choice',0,'2023-09-25 10:02:10'),(1412,12,'2K1061276PARYJ','2022-05-24 09:09:36','2023-09-25 10:02:12',1,'choice',0,'2023-09-25 10:02:10'),(1413,12,'2K1061404__WGK','2022-05-24 09:09:36','2023-09-25 10:02:14',1,'choice',0,'2023-09-25 10:02:12'),(1414,12,'2K1061404_WGK','2022-05-24 09:09:37','2022-06-21 01:08:01',0,'choice',0,'2022-06-20 01:07:16'),(1415,12,'2K1061500B_82V','2022-05-24 09:09:38','2023-09-25 10:02:12',1,'choice',0,'2023-09-25 10:02:10'),(1416,12,'2K1061502A_82V','2022-05-24 09:09:39','2023-09-25 10:02:12',1,'choice',0,'2023-09-25 10:02:10'),(1417,12,'2K1061550_041','2022-05-24 09:09:39','2023-09-25 10:02:12',1,'choice',0,'2023-09-25 10:02:10'),(1418,10,'2K3055204B','2022-05-24 09:09:39','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1419,11,'2K3061160','2022-05-24 09:09:39','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1420,11,'2K3061161','2022-05-24 09:09:39','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1421,11,'2K3061161A','2022-05-24 09:09:39','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1422,11,'2K3061210','2022-05-24 09:09:39','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1423,10,'2K3071126__041','2022-05-24 09:09:40','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1424,10,'2K5055204','2022-05-24 09:09:40','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1425,11,'2K5061161','2022-05-24 09:09:40','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1426,13,'2K5061195','2022-05-24 09:09:40','2023-09-25 10:02:10',1,'choice',0,'2023-09-25 10:02:10'),(1427,13,'2K5061197','2022-05-24 09:09:40','2023-09-25 10:02:14',1,'choice',0,'2023-09-25 10:02:12'),(1428,11,'2K5061210','2022-05-24 09:09:41','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1429,10,'2K5071151B','2022-05-24 09:09:41','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1430,14,'2K5075101','2022-05-24 09:09:41','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1431,10,'2K7055202','2022-05-24 09:09:42','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1432,10,'2K7055204','2022-05-24 09:09:42','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1433,11,'2K7061160','2022-05-24 09:09:42','2023-09-25 10:02:14',1,'choice',0,'2023-09-25 10:02:12'),(1434,11,'2K7061162','2022-05-24 09:09:43','2023-09-25 10:02:14',1,'choice',0,'2023-09-25 10:02:12'),(1435,12,'2K7061195','2022-05-24 09:09:43','2023-09-25 10:02:10',1,'choice',0,'2023-09-25 10:02:10'),(1436,13,'2K7061195A','2022-05-24 09:09:44','2023-09-25 10:02:10',1,'choice',0,'2023-09-25 10:02:10'),(1437,43,'2K7064365','2022-05-24 09:09:44','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1438,10,'2K7071126','2022-05-24 09:09:45','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1439,10,'2K7071126B','2022-05-24 09:09:45','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1440,14,'2K7075101','2022-05-24 09:09:45','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1441,14,'2K7075101A','2022-05-24 09:09:45','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1442,14,'2K7075111','2022-05-24 09:09:46','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1443,10,'2K7092101','2022-05-24 09:09:46','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1444,10,'2K7092155','2022-05-24 09:09:46','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1445,13,'2K8061197','2022-05-24 09:09:47','2023-09-25 10:02:10',1,'choice',0,'2023-09-25 10:02:10'),(1446,12,'2K8061270__WGK','2022-05-24 09:09:47','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1447,12,'2K8061404__WGK','2022-05-24 09:09:49','2023-09-25 10:02:14',1,'choice',0,'2023-09-25 10:02:12'),(1448,12,'2K8061502__82V','2022-05-24 09:09:50','2023-09-25 10:02:14',1,'choice',0,'2023-09-25 10:02:12'),(1449,12,'2K8061502_82V','2022-05-24 09:09:51','2022-06-23 15:51:48',0,'choice',0,'2022-06-23 01:05:04'),(1450,12,'2K806150282V','2022-05-24 09:09:51','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1451,26,'3C0071105B','2022-05-24 09:09:52','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1452,40,'5DB084130A_530','2022-05-24 09:09:53','2022-06-02 21:14:32',0,'choice',0,'2022-05-24 09:09:18'),(1453,40,'5DB084130B_530','2022-05-24 09:09:53','2022-06-02 21:14:32',0,'choice',0,'2022-05-24 09:09:18'),(1454,40,'5DB084130C_530','2022-05-24 09:09:53','2022-06-02 21:14:32',0,'choice',0,'2022-05-24 09:09:18'),(1455,40,'5DB084130D_530','2022-05-24 09:09:54','2022-06-02 21:14:32',0,'choice',0,'2022-05-24 09:09:18'),(1456,45,'7C0017230','2022-05-24 09:09:54','2023-09-25 10:02:08',1,'choice',0,'2023-09-25 10:02:08'),(1457,45,'7C0017231','2022-05-24 09:09:54','2023-09-25 10:02:08',1,'choice',0,'2023-09-25 10:02:08'),(1458,45,'7C0017233','2022-05-24 09:09:55','2023-09-25 10:02:08',1,'choice',0,'2023-09-25 10:02:08'),(1459,45,'7C0017233A','2022-05-24 09:09:55','2023-09-25 10:02:08',1,'choice',0,'2023-09-25 10:02:08'),(1460,45,'7C0017234','2022-05-24 09:09:55','2023-09-25 10:02:08',1,'choice',0,'2023-09-25 10:02:08'),(1461,45,'7C0017238','2022-05-24 09:09:56','2023-09-25 10:02:08',1,'choice',0,'2023-09-25 10:02:08'),(1462,45,'7C0017737','2022-05-24 09:09:56','2023-09-25 10:02:08',1,'choice',0,'2023-09-25 10:02:08'),(1463,10,'7C0055204','2022-05-24 09:09:56','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1464,10,'7C0055204A','2022-05-24 09:09:57','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1465,10,'7C0055204B','2022-05-24 09:09:57','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1466,40,'7C0072193','2022-05-24 09:09:57','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1467,13,'7C0075101','2022-05-24 09:09:57','2023-09-25 10:02:11',1,'choice',0,'2023-09-25 10:02:10'),(1468,14,'7C0075101A','2022-05-24 09:09:57','2023-09-25 10:02:11',1,'choice',0,'2023-09-25 10:02:10'),(1469,14,'7C0075111','2022-05-24 09:09:57','2023-09-25 10:02:11',1,'choice',0,'2023-09-25 10:02:10'),(1470,10,'7C0092115','2022-05-24 09:09:58','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1471,10,'7C0092115A','2022-05-24 09:09:58','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1472,12,'7C1061502A_82V','2022-05-24 09:09:58','2023-09-25 10:02:11',1,'choice',0,'2023-09-25 10:02:10'),(1473,10,'7C3055204','2022-05-24 09:09:59','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1474,14,'7CA075101','2022-05-24 09:10:00','2023-09-25 10:02:11',1,'choice',0,'2023-09-25 10:02:10'),(1475,14,'7CA075101A','2022-05-24 09:10:00','2023-09-25 10:02:11',1,'choice',0,'2023-09-25 10:02:10'),(1476,10,'7CA092115','2022-05-24 09:10:00','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1477,10,'7CA092115A','2022-05-24 09:10:00','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1478,51,'7E0054802','2022-05-24 09:10:01','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1479,51,'7E0054802A','2022-05-24 09:10:01','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1480,10,'7E0055204B','2022-05-24 09:10:01','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1481,13,'7E0061195__HV9','2022-05-24 09:10:01','2023-09-25 10:02:14',1,'choice',0,'2023-09-25 10:02:12'),(1482,13,'7E0061195A','2022-05-24 09:10:01','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1483,13,'7E0061195B','2022-05-24 09:10:02','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1484,13,'7E0061197','2022-05-24 09:10:02','2023-09-25 10:02:14',1,'choice',0,'2023-09-25 10:02:12'),(1485,26,'7E0071104','2022-05-24 09:10:02','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1486,26,'7E0071104B','2022-05-24 09:10:03','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1487,145,'7E0071310_19A','2022-05-24 09:10:03','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1488,27,'7E0071360','2022-05-24 09:10:03','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1489,36,'7E0071496_8Z8','2022-05-24 09:10:03','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1490,40,'7E0072193_HU3','2022-05-24 09:10:04','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1491,12,'7E1061275A_WGK','2022-05-24 09:10:04','2023-09-25 10:02:11',1,'choice',0,'2023-09-25 10:02:10'),(1492,10,'7E5055202A','2022-05-24 09:10:05','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1493,11,'7E5061160','2022-05-24 09:10:05','2023-09-25 10:02:14',1,'choice',0,'2023-09-25 10:02:12'),(1494,11,'7E5061161','2022-05-24 09:10:05','2023-09-25 10:02:11',1,'choice',0,'2023-09-25 10:02:10'),(1495,40,'7E9069604','2022-05-24 09:10:05','2023-09-25 10:02:14',1,'choice',0,'2023-09-25 10:02:12'),(1496,40,'7E9069621','2022-05-24 09:10:06','2023-09-25 10:02:14',1,'choice',0,'2023-09-25 10:02:12'),(1497,40,'7E9069644','2022-05-24 09:10:06','2023-09-25 10:02:14',1,'choice',0,'2023-09-25 10:02:12'),(1498,40,'7E9069691','2022-05-24 09:10:07','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1499,40,'7E9084500','2022-05-24 09:10:07','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1500,40,'7E9087300','2022-05-24 09:10:07','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1501,40,'7E9087511A','2022-05-24 09:10:08','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1502,14,'7F0075101','2022-05-24 09:10:08','2023-09-25 10:02:11',1,'choice',0,'2023-09-25 10:02:10'),(1503,51,'7H0054830','2022-05-24 09:10:08','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1504,11,'7H0061160','2022-05-24 09:10:08','2023-09-25 10:02:11',1,'choice',0,'2023-09-25 10:02:10'),(1505,11,'7H0061170','2022-05-24 09:10:10','2023-09-25 10:02:11',1,'choice',0,'2023-09-25 10:02:10'),(1506,12,'7H0061580_82V','2022-05-24 09:10:10','2023-09-25 10:02:11',1,'choice',0,'2023-09-25 10:02:10'),(1507,26,'7H0071104','2022-05-24 09:10:10','2023-09-25 10:02:14',1,'choice',0,'2023-09-25 10:02:12'),(1508,10,'7H0071126','2022-05-24 09:10:11','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1509,10,'7H0071126A','2022-05-24 09:10:11','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1510,10,'7H0071126E','2022-05-24 09:10:11','2023-09-25 10:02:15',1,'choice',0,'2023-09-25 10:02:15'),(1511,14,'7H0075111','2022-05-24 09:10:12','2023-09-25 10:02:11',1,'choice',0,'2023-09-25 10:02:10'),(1512,10,'7H0092101B','2022-05-24 09:10:12','2023-09-25 10:02:16',1,'choice',0,'2023-09-25 10:02:15'),(1513,10,'7H0092155B','2022-05-24 09:10:12','2023-09-25 10:02:16',1,'choice',0,'2023-09-25 10:02:15'),(1514,12,'7H1061245E_RUY','2022-05-24 09:10:13','2023-09-25 10:02:11',1,'choice',0,'2023-09-25 10:02:10'),(1515,12,'7H1061500C_82V','2022-05-24 09:10:13','2023-09-25 10:02:11',1,'choice',0,'2023-09-25 10:02:10'),(1516,12,'7H1061500D_82V','2022-05-24 09:10:13','2023-09-25 10:02:09',1,'choice',0,'2023-09-25 10:02:08'),(1517,12,'7H1061502B_82V','2022-05-24 09:10:13','2023-09-25 10:02:11',1,'choice',0,'2023-09-25 10:02:10'),(1518,12,'7H1061502C_82V','2022-05-24 09:10:13','2023-09-25 10:02:14',1,'choice',0,'2023-09-25 10:02:12'),(1519,12,'7H1061551D_041','2022-05-24 09:10:14','2023-09-25 10:02:11',1,'choice',0,'2023-09-25 10:02:10'),(1520,10,'7H7071126','2022-05-24 09:10:14','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1521,12,'7L1061275__WGK','2022-05-24 09:10:14','2023-09-25 10:02:14',1,'choice',0,'2023-09-25 10:02:12'),(1522,11,'7L1061275_WGK','2022-05-24 09:10:14','2022-06-23 15:51:48',0,'choice',0,'2022-06-23 01:05:04'),(1523,10,'7LA055202','2022-05-24 09:10:15','2023-09-25 10:02:16',1,'choice',0,'2023-09-25 10:02:15'),(1524,10,'7LA055204','2022-05-24 09:10:15','2023-09-25 10:02:16',1,'choice',0,'2023-09-25 10:02:15'),(1525,12,'7T1061275_WGK','2022-05-24 09:10:16','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1526,12,'7T1061420__WGK','2022-05-24 09:10:16','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1527,12,'7T1061420_WGK','2022-05-24 09:10:16','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1528,12,'7T1061502_82V','2022-05-24 09:10:16','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1529,12,'7T106150282V','2022-05-24 09:10:16','2023-09-25 10:02:13',1,'choice',0,'2023-09-25 10:02:12'),(1530,12,'2H7061275_WGK','2022-06-23 15:51:47','2023-09-25 10:02:16',1,'choice',0,'2023-09-25 10:02:15'),(1531,12,'2K8061270_WGK','2022-06-23 15:51:47','2023-09-25 10:02:16',1,'choice',0,'2023-09-25 10:02:15'),(1532,33,'000071129AB','2022-09-01 22:02:57','2023-09-25 10:02:16',1,'choice',0,'2023-09-25 10:02:15'),(1533,NULL,'7E9069604A','2022-09-01 22:02:58','2023-09-25 10:02:16',1,'choice',0,'2023-09-25 10:02:15'),(1534,NULL,'1H4087325','2022-09-01 22:02:58','2023-09-25 10:02:16',1,'choice',0,'2023-09-25 10:02:15'),(1535,12,'2H1061502__82V','2022-09-01 22:02:58','2023-09-25 10:02:16',1,'choice',0,'2023-09-25 10:02:15'),(1536,12,'2K8061500__82V','2022-09-01 22:02:58','2023-09-25 10:02:16',1,'choice',0,'2023-09-25 10:02:15'),(1537,14,'2H0075111E','2022-09-01 22:02:58','2023-09-25 10:02:16',1,'choice',0,'2023-09-25 10:02:15'),(1538,14,'2H0075101C','2022-09-01 22:02:58','2023-09-25 10:02:16',1,'choice',0,'2023-09-25 10:02:15'),(1539,14,'7C0075101B','2022-09-01 22:02:58','2023-09-25 10:02:16',1,'choice',0,'2023-09-25 10:02:15'),(1540,45,'000093059M','2022-09-01 22:02:58','2023-09-25 10:02:16',1,'choice',0,'2023-09-25 10:02:15'),(1541,12,'7T1061551__041','2022-09-01 22:02:58','2023-09-25 10:02:16',1,'choice',0,'2023-09-25 10:02:15'),(1542,12,'7T1061502__82V','2022-09-01 22:02:58','2023-09-25 10:02:16',1,'choice',0,'2023-09-25 10:02:15'),(1543,14,'7T0075111','2022-09-01 22:02:58','2023-09-25 10:02:17',1,'choice',0,'2023-09-25 10:02:17'),(1544,14,'7T0075101','2022-09-01 22:02:58','2023-09-25 10:02:17',1,'choice',0,'2023-09-25 10:02:17'),(1545,13,'7T0061197','2022-09-01 22:02:58','2023-09-25 10:02:17',1,'choice',0,'2023-09-25 10:02:17'),(1546,13,'7T0061195','2022-09-01 22:02:58','2023-09-25 10:02:17',1,'choice',0,'2023-09-25 10:02:17'),(1547,13,'7T0061195A','2022-09-01 22:02:58','2023-09-25 10:02:17',1,'choice',0,'2023-09-25 10:02:17'),(1548,58,'000096352L','2022-09-01 22:02:58','2023-09-25 10:02:17',1,'choice',0,'2023-09-25 10:02:17'),(1549,58,'000096311B','2022-09-01 22:02:58','2023-09-25 10:02:18',1,'choice',0,'2023-09-25 10:02:17'),(1550,45,'93059','2022-09-01 22:02:58','2023-09-25 10:02:17',1,'choice',0,'2023-09-25 10:02:17'),(1551,12,'2H0061276__WGK','2022-09-01 22:02:58','2023-09-25 10:02:17',1,'choice',0,'2023-09-25 10:02:17'),(1552,12,'2H0061512__82V','2022-09-01 22:02:59','2023-09-25 10:02:17',1,'choice',0,'2023-09-25 10:02:17'),(1553,36,'2H0071499__AX1','2022-09-01 22:02:59','2023-09-25 10:02:17',1,'choice',0,'2023-09-25 10:02:17'),(1554,12,'2H1061270__WGK','2022-09-01 22:02:59','2023-09-25 10:02:17',1,'choice',0,'2023-09-25 10:02:17'),(1555,40,'2H6071691__041','2022-09-01 22:02:59','2023-09-25 10:02:17',1,'choice',0,'2023-09-25 10:02:17'),(1556,14,'2K0061512__82V','2022-09-01 22:02:59','2023-09-25 10:02:17',1,'choice',0,'2023-09-25 10:02:17'),(1557,12,'2K1061161__71N','2022-09-01 22:02:59','2023-09-25 10:02:17',1,'choice',0,'2023-09-25 10:02:17'),(1558,12,'2K1061550__041','2022-09-01 22:02:59','2023-09-25 10:02:17',1,'choice',0,'2023-09-25 10:02:17'),(1559,145,'7E0071310__19A','2022-09-01 22:02:59','2023-09-25 10:02:17',1,'choice',0,'2023-09-25 10:02:17'),(1560,36,'7E0071496__8Z8','2022-09-01 22:02:59','2023-09-25 10:02:17',1,'choice',0,'2023-09-25 10:02:17'),(1561,40,'7E0072193__HU3','2022-09-01 22:02:59','2023-09-25 10:02:17',1,'choice',0,'2023-09-25 10:02:17'),(1562,12,'7H0061580__82V','2022-09-01 22:02:59','2023-09-25 10:02:18',1,'choice',0,'2023-09-25 10:02:17'),(1563,12,'7T1061275__WGK','2022-09-01 22:02:59','2023-09-25 10:02:18',1,'choice',0,'2023-09-25 10:02:17'),(1564,58,'000096311M','2022-10-20 22:01:30','2023-09-25 10:02:17',1,'choice',0,'2023-09-25 10:02:17'),(1565,34,'7T0092155','2023-01-02 22:04:41','2023-09-25 10:02:16',1,'choice',0,'2023-09-25 10:02:15'),(1566,34,'7C0092115B','2023-01-02 22:04:41','2023-09-25 10:02:16',1,'choice',0,'2023-09-25 10:02:15'),(1567,34,'7T0092161','2023-01-02 22:04:41','2023-05-25 22:04:26',0,'choice',0,'2023-05-25 10:05:10'),(1568,34,'7T0055204','2023-01-02 22:04:41','2023-09-25 10:02:16',1,'choice',0,'2023-09-25 10:02:15');
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
) ENGINE=InnoDB AUTO_INCREMENT=660 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_attribute_value`
--

LOCK TABLES `sylius_product_attribute_value` WRITE;
/*!40000 ALTER TABLE `sylius_product_attribute_value` DISABLE KEYS */;
INSERT INTO `sylius_product_attribute_value` (`id`, `product_id`, `attribute_id`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `locale_code`) VALUES (509,1334,6,'Non renseigné',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(510,1335,6,'Non renseigné',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(511,1336,6,'Non renseigné',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(512,1337,6,'Non renseigné',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(513,1338,6,'Non renseigné',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(514,1339,6,'Non renseigné',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(515,1340,6,'Non renseigné',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(516,1341,6,'Non renseigné',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(517,1342,6,'Non renseigné',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(518,1343,6,'Non renseigné',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(519,1344,6,'Non renseigné',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(520,1345,6,'Non renseigné',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(521,1346,6,'Non renseigné',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(522,1347,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(523,1348,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(524,1349,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(525,1351,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(526,1352,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(527,1353,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(528,1354,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(529,1359,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(530,1362,6,'Non renseigné',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(531,1363,6,'Non renseigné',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(532,1364,6,'Gris',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(533,1365,6,'Gris',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(534,1366,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(535,1367,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(536,1368,6,'Gris',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(537,1369,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(538,1370,6,'Gris',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(539,1371,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(540,1372,6,'Gris',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(541,1373,6,'Gris',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(542,1374,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(543,1375,6,'Gris',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(544,1376,6,'Gris',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(545,1377,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(546,1378,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(547,1379,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(548,1380,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(549,1381,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(550,1382,6,'Non renseigné',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(551,1383,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(552,1384,6,'Gris',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(553,1385,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(554,1386,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(555,1387,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(556,1388,6,'Bleu',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(557,1389,6,'Gris',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(558,1390,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(559,1391,6,'Marron',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(560,1392,6,'Gris',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(561,1393,6,'Bleu',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(562,1394,6,'Blanc',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(563,1395,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(564,1397,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(565,1398,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(566,1401,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(567,1402,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(568,1403,6,'Gris',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(569,1404,6,'Gris',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(570,1408,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(571,1410,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(572,1411,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(573,1412,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(574,1414,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(575,1415,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(576,1416,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(577,1417,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(578,1419,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(579,1420,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(580,1421,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(581,1422,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(582,1425,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(583,1426,6,'Gris',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(584,1428,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(585,1429,6,'Gris',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(586,1430,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(587,1435,6,'Argent',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(588,1436,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(589,1437,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(590,1440,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(591,1441,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(592,1442,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(593,1445,6,'Transparent',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(594,1446,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(595,1449,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(596,1450,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(597,1451,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(598,1456,6,'Non renseigné',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(599,1457,6,'Non renseigné',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(600,1458,6,'Non renseigné',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(601,1459,6,'Non renseigné',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(602,1460,6,'Non renseigné',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(603,1461,6,'Non renseigné',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(604,1462,6,'Non renseigné',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(605,1466,6,'Gris',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(606,1467,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(607,1468,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(608,1469,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(609,1472,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(610,1474,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(611,1475,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(612,1478,6,'Non renseigné',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(613,1479,6,'Non renseigné',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(614,1482,6,'Gris',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(615,1483,6,'Gris',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(616,1485,6,'Gris',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(617,1486,6,'Gris',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(618,1487,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(619,1488,6,'Gris',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(620,1489,6,'Gris',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(621,1490,6,'Gris',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(622,1491,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(623,1494,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(624,1502,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(625,1503,6,'Non renseigné',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(626,1504,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(627,1505,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(628,1506,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(629,1508,6,'Gris',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(630,1509,6,'Gris',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(631,1511,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(632,1514,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(633,1515,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(634,1516,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(635,1517,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(636,1519,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(637,1520,6,'Gris',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(638,1522,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(639,1525,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(640,1526,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(641,1527,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(642,1528,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(643,1529,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(644,1530,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(645,1531,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(646,1551,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(647,1552,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(648,1553,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(649,1554,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(650,1555,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(651,1556,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(652,1557,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(653,1558,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(654,1559,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(655,1560,6,'Gris',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(656,1561,6,'Gris',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(657,1562,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(658,1563,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(659,1535,6,'Noir',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `sylius_product_channels` (`product_id`, `channel_id`) VALUES (1334,1),(1335,1),(1336,1),(1337,1),(1338,1),(1339,1),(1340,1),(1341,1),(1342,1),(1343,1),(1344,1),(1345,1),(1346,1),(1347,1),(1348,1),(1349,1),(1350,1),(1351,1),(1352,1),(1353,1),(1354,1),(1355,1),(1356,1),(1357,1),(1358,1),(1359,1),(1360,1),(1361,1),(1362,1),(1363,1),(1364,1),(1365,1),(1366,1),(1367,1),(1368,1),(1369,1),(1370,1),(1371,1),(1372,1),(1373,1),(1374,1),(1375,1),(1376,1),(1377,1),(1378,1),(1379,1),(1380,1),(1381,1),(1382,1),(1383,1),(1384,1),(1385,1),(1386,1),(1387,1),(1388,1),(1389,1),(1390,1),(1391,1),(1392,1),(1393,1),(1394,1),(1395,1),(1396,1),(1397,1),(1398,1),(1399,1),(1400,1),(1401,1),(1402,1),(1403,1),(1404,1),(1405,1),(1406,1),(1407,1),(1408,1),(1409,1),(1410,1),(1411,1),(1412,1),(1413,1),(1414,1),(1415,1),(1416,1),(1417,1),(1418,1),(1419,1),(1420,1),(1421,1),(1422,1),(1423,1),(1424,1),(1425,1),(1426,1),(1427,1),(1428,1),(1429,1),(1430,1),(1431,1),(1432,1),(1433,1),(1434,1),(1435,1),(1436,1),(1437,1),(1438,1),(1439,1),(1440,1),(1441,1),(1442,1),(1443,1),(1444,1),(1445,1),(1446,1),(1447,1),(1448,1),(1449,1),(1450,1),(1451,1),(1452,1),(1453,1),(1454,1),(1455,1),(1456,1),(1457,1),(1458,1),(1459,1),(1460,1),(1461,1),(1462,1),(1463,1),(1464,1),(1465,1),(1466,1),(1467,1),(1468,1),(1469,1),(1470,1),(1471,1),(1472,1),(1473,1),(1474,1),(1475,1),(1476,1),(1477,1),(1478,1),(1479,1),(1480,1),(1481,1),(1482,1),(1483,1),(1484,1),(1485,1),(1486,1),(1487,1),(1488,1),(1489,1),(1490,1),(1491,1),(1492,1),(1493,1),(1494,1),(1495,1),(1496,1),(1497,1),(1498,1),(1499,1),(1500,1),(1501,1),(1502,1),(1503,1),(1504,1),(1505,1),(1506,1),(1507,1),(1508,1),(1509,1),(1510,1),(1511,1),(1512,1),(1513,1),(1514,1),(1515,1),(1516,1),(1517,1),(1518,1),(1519,1),(1520,1),(1521,1),(1522,1),(1523,1),(1524,1),(1525,1),(1526,1),(1527,1),(1528,1),(1529,1),(1530,1),(1531,1),(1532,1),(1533,1),(1534,1),(1535,1),(1536,1),(1537,1),(1538,1),(1539,1),(1540,1),(1541,1),(1542,1),(1543,1),(1544,1),(1545,1),(1546,1),(1547,1),(1548,1),(1549,1),(1550,1),(1551,1),(1552,1),(1553,1),(1554,1),(1555,1),(1556,1),(1557,1),(1558,1),(1559,1),(1560,1),(1561,1),(1562,1),(1563,1),(1564,1),(1565,1),(1566,1),(1567,1),(1568,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=1359 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_image`
--

LOCK TABLES `sylius_product_image` WRITE;
/*!40000 ALTER TABLE `sylius_product_image` DISABLE KEYS */;
INSERT INTO `sylius_product_image` (`id`, `owner_id`, `type`, `path`, `updated_at`, `synced_at`) VALUES (1062,1338,NULL,'ae/18/137e9c1b0ea6c765a7456ec4e10e.jpg','2022-06-20 12:53:14','2023-09-25 10:02:08'),(1063,1339,NULL,'df/bf/e1bc2d1427625fd6e19ac1b7323e.jpg','2022-06-20 12:53:14','2023-09-25 10:02:08'),(1065,1341,NULL,'3c/5d/fc728325a104701e6715ff327559.jpg','2022-07-07 16:50:02','2023-09-25 10:02:08'),(1072,1350,NULL,'b4/7f/c093528238af9d8a2ecaab1b8188.jpg','2022-09-05 08:50:13','2023-01-02 10:04:36'),(1073,1352,NULL,'ea/ef/de3d0271c599f45f4e27ce0a0dac.jpg','2022-07-07 16:50:02','2023-09-25 10:02:12'),(1075,1354,NULL,'68/75/d2ebe98be1a7fbbe91040e33e1cf.jpg','2022-07-07 16:50:02','2023-09-25 10:02:08'),(1076,1355,NULL,'49/f3/421c8701056a0764d3f2a7ec0605.jpg','2022-09-05 09:06:37','2023-01-02 10:04:34'),(1077,1356,NULL,'8d/92/cdbd5abf1d2a2fe12740b81ae628.jpg','2022-03-22 14:32:01','2022-05-24 09:09:18'),(1078,1357,NULL,'63/41/cd74434f9cd4b459e43f89516c03.jpg','2022-03-22 14:30:52','2022-05-24 09:09:18'),(1079,1358,NULL,'ae/f2/7b96975dbc9155567e789356f272.jpg','2022-03-22 14:32:10','2022-05-24 09:09:18'),(1081,1360,NULL,'2c/b3/5b9292552cff9107d1a32f55904e.jpg','2022-09-05 09:25:37','2023-01-02 10:04:34'),(1082,1361,NULL,'31/c7/16cb3b49c8b2f28ccc0cf793f826.jpg','2022-04-01 08:13:44','2022-05-24 09:09:18'),(1084,1363,NULL,'de/04/77779f6a2aba7ca8ecf0a950642d.jpg','2022-06-20 12:53:16','2023-09-25 10:02:08'),(1089,1380,NULL,'56/c6/d5ee8a12f216fa7b5c717b1dc181.jpg','2022-06-20 12:53:16','2023-01-02 10:04:31'),(1090,1381,NULL,'ed/3a/0dabab033057b5dfe277d537ab1a.jpg','2022-07-07 16:49:59','2023-09-25 10:02:10'),(1095,1396,NULL,'48/44/f6039a8300aec67af070886a6514.jpg','2022-03-22 14:41:22','2022-05-24 09:09:18'),(1098,1399,NULL,'18/52/4574ffe6300bdaeb6f0ebdfb4fc8.jpg','2022-03-22 14:41:54','2022-05-24 09:09:18'),(1099,1400,NULL,'cb/c9/103c04b4ab3155b21a6888f9cdde.jpg','2022-03-22 14:41:58','2022-05-24 09:09:18'),(1102,1405,NULL,'d4/6f/0399d268c0f68dfc27ac1cff69d1.jpg','2022-03-22 14:42:25','2022-05-24 09:09:18'),(1103,1406,NULL,'4b/46/fb98c6d8cc77a152523729b2d162.jpg','2022-03-22 14:42:31','2022-05-24 09:09:18'),(1104,1407,NULL,'e5/55/4981c017f831f32a7a81f02cc24b.jpg','2022-03-22 14:42:32','2022-05-24 09:09:18'),(1105,1409,NULL,'d6/c2/e62ab98d3f8887e75ff170a76e42.jpg','2022-07-07 16:49:59','2023-01-02 10:04:34'),(1108,1413,NULL,'8f/ea/a3ab62d9ca8ff0869ecfca6dc073.jpg','2022-07-07 16:49:59','2023-01-02 10:04:34'),(1112,1418,NULL,'8d/92/2a7a1bf26fb24159ba17ec01b198.jpg','2022-03-22 14:43:40','2022-05-24 09:09:18'),(1115,1423,NULL,'df/39/a28ebcf7e9c81c179aabfe4779f1.jpg','2022-03-22 14:43:43','2022-05-24 09:09:18'),(1116,1424,NULL,'fc/58/91d5bfbb4ecf1a64356025937559.jpg','2022-03-22 14:43:44','2022-05-24 09:09:18'),(1118,1427,NULL,'9a/bb/e3fb3c52c85f0f7073f6eb94f3c6.jpg','2022-03-22 14:44:22','2022-05-24 09:09:18'),(1122,1431,NULL,'26/3f/4d0d3729fc6f4c3e52261d939a72.jpg','2022-03-22 14:44:35','2022-05-24 09:09:18'),(1123,1432,NULL,'ee/8f/5d66a116a4483085cb0429752ecc.jpg','2022-03-22 14:44:35','2022-05-24 09:09:18'),(1124,1433,NULL,'85/9c/0bf35f3fe3283f15d92dda918573.jpg','2022-03-22 14:44:39','2022-05-24 09:09:18'),(1125,1434,NULL,'09/5b/be7ffda1f65dc51cf624d33a67bc.jpg','2022-03-22 14:44:46','2022-05-24 09:09:18'),(1129,1438,NULL,'c6/c9/b267e16376c713a28685e2f6d52b.jpg','2022-03-22 14:45:13','2022-05-24 09:09:18'),(1130,1439,NULL,'2e/e0/6f3d0179bc89fc0b4a4e80d33b8a.jpg','2022-04-01 08:01:55','2022-05-24 09:09:18'),(1132,1441,NULL,'94/9a/f3a804f69f321bec5382948a2e2a.jpg','2022-07-07 16:50:00','2023-09-25 10:02:08'),(1134,1443,NULL,'6e/da/4dfcdc89aae20119b3c8e0441fa0.jpg','2022-04-01 08:13:44','2022-05-24 09:09:18'),(1135,1444,NULL,'34/04/a3e92dc782c9ff890fa928eb8c84.jpg','2022-04-01 08:13:44','2022-05-24 09:09:18'),(1137,1446,NULL,'30/48/be1e09a66e55506e9b5464773684.jpg','2022-07-07 16:50:00','2023-01-02 10:04:34'),(1140,1447,NULL,'cd/ed/d48e9da0055dc580620afc7549f6.jpg','2022-03-22 14:46:54','2022-05-24 09:09:18'),(1141,1447,NULL,'19/90/2868c7ef631e5ca4f4abcb664253.jpg','2022-03-22 14:46:42','2022-05-24 09:09:18'),(1142,1448,NULL,'42/d8/70b28525b587241b4bda9c597f4e.png','2022-07-07 16:50:00','2023-01-02 10:04:34'),(1143,1449,NULL,'e4/2a/4c0a9204115c74249a2a6436e673.jpg','2022-03-22 14:48:37','2022-06-22 01:05:06'),(1144,1450,NULL,'70/da/141b5aeb62a61fab086bdf25d77e.png','2022-07-07 16:50:00','2023-09-25 10:02:12'),(1146,1452,NULL,'3e/b2/7cf9298182f79212ab3f5d4d3c68.jpg','2022-04-01 08:13:44','2022-05-24 09:09:18'),(1147,1453,NULL,'ca/08/170e4468050a75a7e2c841b9f101.jpg','2022-03-22 14:48:28','2022-05-24 09:09:18'),(1148,1454,NULL,'58/00/8d5bdb81cc93f6a5f71345bcfecb.jpg','2022-04-01 08:13:44','2022-05-24 09:09:18'),(1149,1455,NULL,'9b/0f/94e6d8dceee6c05c121b87351ea8.jpg','2022-03-22 14:48:28','2022-05-24 09:09:18'),(1157,1463,NULL,'e2/e9/e6dce72b31e772c433e2dea7d31a.jpg','2022-03-22 14:49:15','2022-05-24 09:09:18'),(1158,1464,NULL,'89/e4/26f606476ac09ef10dcd700c8281.jpg','2022-03-22 14:49:15','2022-05-24 09:09:18'),(1159,1465,NULL,'0a/6a/f37f01af7b08399f5652ff7e6b77.jpg','2022-04-01 08:13:44','2022-05-24 09:09:18'),(1161,1469,NULL,'de/7f/4fd7c556950cb1a47ea5c080ae3e.jpg','2022-06-20 12:53:18','2023-09-25 10:02:10'),(1162,1470,NULL,'0c/9f/5cd715c465316427c2799cba350a.jpg','2022-03-22 14:50:12','2022-05-24 09:09:18'),(1163,1471,NULL,'16/a9/1da317bea739924ecf25f1aaa423.jpg','2022-04-01 08:13:44','2022-05-24 09:09:18'),(1165,1473,NULL,'7d/31/b2beef1257aea2a93c37c9ae62cb.jpg','2022-03-22 14:50:18','2022-05-24 09:09:18'),(1166,1474,NULL,'09/75/b516d266d8b7ca24bd7ab0f4a4fa.jpg','2022-03-22 14:50:38','2022-06-22 01:05:06'),(1167,1475,NULL,'8e/b4/b8d0f9505ae6a4624ab60f6bd433.jpg','2022-07-07 16:50:00','2023-09-25 10:02:10'),(1168,1476,NULL,'d7/5c/3f9b0f5d72fd0486e412b88d8933.jpg','2022-03-22 14:50:15','2022-05-24 09:09:18'),(1169,1477,NULL,'35/e3/9d0bc9a4b729afaf36e5d0a2cabe.jpg','2022-04-01 08:13:44','2022-05-24 09:09:18'),(1170,1480,NULL,'48/4a/3ca11974cb6762d099259c3364cc.jpg','2022-03-22 14:50:20','2022-05-24 09:09:18'),(1171,1481,NULL,'be/80/fdcd21ba22ebcbd62fd6bc7d2b44.jpg','2022-03-22 14:50:52','2022-05-24 09:09:18'),(1173,1483,NULL,'36/54/0fd9164b02b3bcd1d71bf9207b45.jpg','2022-06-20 12:53:18','2023-09-25 10:02:08'),(1174,1484,NULL,'62/0c/cf923056101e08a976f74deb0759.jpg','2022-03-22 14:51:21','2022-05-24 09:09:18'),(1177,1487,NULL,'fc/63/506674bc0226afffbb545e39ba8b.jpg','2022-07-07 16:50:01','2023-09-25 10:02:08'),(1179,1490,NULL,'8d/f8/d111f7b5dfe2d0a5b778106b28a2.jpg','2022-07-07 16:50:01','2023-09-25 10:02:08'),(1180,1491,NULL,'50/48/4902f87702a2999a117a402e3234.jpg','2022-07-07 16:50:01','2023-01-02 10:04:31'),(1181,1492,NULL,'a8/62/454ac68662eba184987bcfa0ff9a.jpg','2022-03-22 14:52:39','2022-05-24 09:09:18'),(1182,1493,NULL,'9e/33/f8e18749fe63179149432fd34dd8.jpg','2022-03-22 14:53:02','2022-05-24 09:09:18'),(1184,1495,NULL,'b4/ae/356cc4a0a4e3ee373d47a9d871db.jpg','2022-03-22 14:54:46','2022-05-24 09:09:18'),(1185,1496,NULL,'33/84/4ae6c9b0e1635ef7d980787dea4b.jpg','2022-03-22 14:55:07','2022-05-24 09:09:18'),(1186,1497,NULL,'84/59/7bf76b7467fa5c3b0e5fa04e0712.jpg','2022-03-22 14:55:19','2022-05-24 09:09:18'),(1187,1498,NULL,'a6/51/9502c3f69fac4a18bfdf67692f94.jpg','2022-03-22 14:56:06','2022-05-24 09:09:18'),(1188,1499,NULL,'90/cd/a94e88ee4ee959d75b1e7ca7e164.jpg','2022-03-22 14:56:44','2022-05-24 09:09:18'),(1189,1500,NULL,'58/2c/7e4bd16687679d5bf418a63e8ea7.jpg','2022-03-22 14:57:20','2022-05-24 09:09:18'),(1190,1501,NULL,'29/8d/59b4c8e67b0996c7029ce9f5bf65.jpg','2022-03-22 14:58:01','2022-05-24 09:09:18'),(1191,1504,NULL,'f6/3f/32ecfca2405107dfe4441e771983.jpg','2022-06-23 15:45:06','2023-09-25 10:02:10'),(1193,1507,NULL,'30/b9/32fcd3f5d800278ca1d26f7d4b11.jpg','2022-03-22 14:22:22','2022-05-24 09:09:18'),(1196,1510,NULL,'c0/30/3b88f8037f6f8f671e006f6fcf51.jpg','2022-07-07 16:50:03','2023-09-25 10:02:15'),(1197,1512,NULL,'2a/97/12d9e2e13b174cc20402f87257ac.jpg','2022-07-07 16:50:03','2023-09-25 10:02:15'),(1198,1513,NULL,'90/4e/f17d9f643483c90ec1cde64e16f7.jpg','2022-07-07 16:50:03','2023-09-25 10:02:15'),(1199,1516,NULL,'6d/8f/0f07a88a4d92de26a340509e58ed.jpg','2022-06-23 15:46:11','2023-09-25 10:02:08'),(1200,1518,NULL,'a8/91/245c1e1c130369fccbae5c167820.jpg','2022-04-01 08:13:44','2022-05-24 09:09:18'),(1201,1521,NULL,'03/28/324a329b78f509426273749f3b5c.jpg','2022-03-22 14:25:33','2023-01-02 10:04:34'),(1202,1522,NULL,'2f/c2/124a5748f0028c3bb9c03e6f950a.jpg','2022-03-22 14:25:33','2022-06-23 01:05:04'),(1203,1523,NULL,'4a/55/c5eb4469e7bc5c06a42da39a2149.jpg','2022-04-01 08:13:44','2022-05-24 09:09:18'),(1204,1524,NULL,'25/d4/1f813c01717368f0818b8dd3472b.jpg','2022-04-01 08:13:44','2022-05-24 09:09:18'),(1205,1529,NULL,'53/5a/bf0d9f5deb0b2c3cbfc1a39332d8.jpg','2022-06-22 14:16:17','2023-09-25 10:02:12'),(1206,1417,NULL,'1a/3f/8c8e74fde75d0c6d7d88d178dac8.jpg','2022-07-07 16:50:00','2023-09-25 10:02:10'),(1207,1419,NULL,'36/2c/9af8f81938caee51f0dd1ab5cfb5.jpg','2022-07-07 16:49:59','2023-09-25 10:02:12'),(1208,1425,NULL,'8a/b7/0b84856ac20826edc517a37b9419.jpg','2022-07-07 16:49:59','2023-09-25 10:02:12'),(1209,1348,NULL,'3a/e5/a262a92ecbcb2c22fb6879211c0f.jpg','2022-06-22 14:17:05','2023-09-25 10:02:12'),(1211,1382,NULL,'34/2a/709bb9a3b3857697ae9382c44eff.jpg','2022-07-07 16:49:58','2023-09-25 10:02:12'),(1212,1403,NULL,'3d/3c/d5b099dd750d04eced090d2b9644.jpg','2022-07-07 16:49:59','2023-09-25 10:02:12'),(1213,1528,NULL,'6e/3c/d89d588e588e194545aba45a80c0.jpg','2022-03-22 14:23:14','2023-09-25 10:02:12'),(1214,1527,NULL,'1c/45/46d77320220e73a82f79e5ba7c47.jpg','2022-06-22 14:15:27','2023-09-25 10:02:12'),(1215,1525,NULL,'30/eb/ef238dbfc0a13a013586edd22dc8.jpg','2022-03-22 14:21:21','2023-09-25 10:02:12'),(1219,1526,NULL,'92/2e/723bfc6439367c5b29f097d1d5c1.jpg','2022-06-22 14:15:27','2023-01-02 10:04:34'),(1220,1503,NULL,'c9/8f/f9a0106efbb4dbeca7450f9b1365.jpg','2022-07-07 16:50:01','2023-09-25 10:02:08'),(1221,1488,NULL,'91/e3/945bc94ae80418e8cea6c03dbd7e.jpg','2022-07-07 16:50:01','2023-09-25 10:02:08'),(1222,1368,NULL,'d3/8d/05b4a79375be5ce13baa3334a164.jpg','2022-07-07 16:49:57','2023-01-02 10:04:29'),(1223,1369,NULL,'05/d7/3b7db3e8cfe335656439b899e5af.jpg','2022-07-07 16:49:57','2023-01-02 10:04:29'),(1224,1370,NULL,'b2/43/227de6bf503b6a24dfc7a299c6a1.jpg','2022-07-07 16:49:57','2023-01-02 10:04:29'),(1225,1372,NULL,'07/80/ce584f686afa1618ce56dbd8b458.jpg','2022-07-07 16:49:58','2023-09-25 10:02:08'),(1226,1373,NULL,'c7/d2/3eee400589f91c4705b214062822.jpg','2022-07-07 16:49:58','2023-01-02 10:04:29'),(1227,1375,NULL,'42/73/0f19d9e5ccbd1550edd077dde5f6.jpg','2022-07-07 16:49:58','2023-09-25 10:02:08'),(1228,1376,NULL,'2f/4f/ac381330f4100cbc57fe4bcf5a07.jpg','2022-07-07 16:49:58','2023-09-25 10:02:08'),(1229,1384,NULL,'91/bb/a5207b0a44af07be92c9cfec4226.jpg','2022-07-07 16:49:58','2023-01-02 10:04:31'),(1231,1347,NULL,'07/75/c237ef793e33eb571d4c03bcb6b7.png','2022-07-05 16:28:02','2023-09-25 10:02:08'),(1232,1478,NULL,'c9/57/6efaa4024e366ba988c5416c44f0.jpg','2022-07-07 16:50:01','2023-09-25 10:02:08'),(1233,1479,NULL,'66/2b/2653aafbf51dbd80486041fc9f46.jpg','2022-07-07 16:50:01','2023-09-25 10:02:08'),(1234,1467,NULL,'cc/8e/7c10e79f2ac96133f76b9920e1d4.jpg','2022-07-07 16:50:00','2023-09-25 10:02:10'),(1235,1468,NULL,'cc/ec/7987f961cfef9aa8f762494e7541.jpg','2022-07-07 16:50:00','2023-09-25 10:02:10'),(1237,1505,NULL,'f9/ba/4c8d6e86a407f327003a001e0f6f.jpg','2022-07-07 16:50:02','2023-09-25 10:02:10'),(1238,1378,NULL,'52/57/a198d3741f36de032593a4db304c.jpg','2022-07-07 16:49:58','2023-09-25 10:02:10'),(1239,1395,NULL,'a3/b6/7cc7ac05d41b3467a04457b37160.jpg','2022-07-07 16:49:58','2023-09-25 10:02:10'),(1240,1412,NULL,'90/f3/d205d0dc20bb3a52fbb0063ab87a.jpg','2022-07-07 16:49:59','2023-09-25 10:02:10'),(1241,1351,NULL,'40/0e/5c51ec984e0c692c0912ec354ea9.jpg','2022-07-07 16:50:02','2023-09-25 10:02:12'),(1242,1532,NULL,'4a/78/b9dc748153577bb6c7256f29b1e2.jpg','2022-09-05 08:54:39','2023-01-02 10:04:36'),(1243,1534,NULL,'9b/c2/0a6ce5cbe7bc7fe36f6e74a2c556.jpg','2022-09-05 09:25:26','2023-01-02 10:04:36'),(1244,1537,NULL,'56/ce/f334fbed68afebfcce59349cf226.jpg','2022-09-05 09:25:32','2023-01-02 10:04:36'),(1245,1538,NULL,'71/d7/0ab4997c78207f80611afe71bd1a.jpg','2022-09-05 09:25:25','2023-01-02 10:04:36'),(1246,1540,NULL,'1f/61/6a31eac041b6a113f227177d913d.jpg','2022-09-05 09:25:23','2023-01-02 10:04:36'),(1247,1548,NULL,'64/43/a1a9dde332a78e1179d751a69554.jpg','2022-09-05 09:25:34','2023-01-02 10:04:36'),(1248,1550,NULL,'5a/a2/16d6ce7e95cfd2c0a278561ccce7.jpg','2022-09-05 08:48:03','2022-09-28 22:01:28'),(1249,1374,NULL,'05/70/e59b5937401ae04f794522e38932.jpg','2022-07-05 11:05:34','2023-09-25 10:02:08'),(1250,1506,NULL,'cf/52/b6976191aea32d10833fe5bbc3d9.jpg','2022-07-07 16:50:02','2023-09-25 10:02:10'),(1251,1514,NULL,'c5/e5/8945f185603803023d0f084f520b.jpg','2022-07-07 16:50:02','2023-01-02 10:04:31'),(1252,1515,NULL,'af/8a/b53f2a5326b6bba27b1315d4214e.jpg','2022-07-07 16:50:02','2023-01-02 10:04:31'),(1253,1517,NULL,'e3/88/9dcb041bc229caf7b6382e63ae68.jpg','2022-07-07 16:50:02','2023-01-02 10:04:31'),(1254,1519,NULL,'8b/0f/c6a493948309eac32fcdf6b2a0dd.jpg','2022-07-07 16:50:02','2023-01-02 10:04:31'),(1255,1366,NULL,'5f/31/5709d0d7f910d87b227e6b0caeb1.jpg','2022-07-07 16:49:57','2023-09-25 10:02:10'),(1256,1367,NULL,'74/05/cd251c2ca6b46d358301c6271e24.jpg','2022-07-07 16:49:58','2023-09-25 10:02:10'),(1257,1379,NULL,'1a/ba/e50d9e3bb9b17b289f19ecd60094.jpg','2022-07-07 16:49:58','2023-09-25 10:02:10'),(1258,1387,NULL,'04/72/5f3d4234c50ea190f0ab6aef4068.jpg','2022-07-05 11:06:34','2023-09-25 10:02:10'),(1259,1389,NULL,'c1/c8/c7a14849652c233b32d6efcc084d.jpg','2022-07-05 11:07:44','2023-09-25 10:02:17'),(1260,1390,NULL,'41/d3/abe47d5582c9363db5d174b32c0a.jpg','2022-07-05 11:08:09','2023-09-25 10:02:17'),(1261,1391,NULL,'ff/b6/8af6f01a330da956af96246b4a62.jpg','2022-07-05 11:05:04','2023-09-25 10:02:17'),(1262,1392,NULL,'e6/a6/86f72384d9c264f9a31f84ceeb1e.jpg','2022-07-05 11:09:42','2023-09-25 10:02:17'),(1263,1393,NULL,'4e/cc/3c6c263ec15ce8a7409fc9e1aaa1.jpg','2022-07-05 11:10:44','2023-09-25 10:02:17'),(1264,1394,NULL,'87/38/e43fd15a8f3a0a1f415055ae59a2.jpg','2022-07-05 11:11:05','2023-09-25 10:02:17'),(1265,1408,NULL,'b4/64/9192e6101ed40ffa0d056decbe4e.jpg','2022-07-07 16:50:00','2023-09-25 10:02:10'),(1266,1530,NULL,'90/ca/dcb470332879d87f8667e75fe653.jpg','2022-07-07 16:49:58','2023-09-25 10:02:15'),(1267,1531,NULL,'de/f1/28ed37959c84fa5b5f81a96d439f.jpg','2022-07-07 16:50:00','2023-09-25 10:02:15'),(1268,1535,NULL,'a4/85/a46b5ccbdffa98174f8d40010cc4.jpg','2022-07-07 16:49:59','2023-01-02 10:04:36'),(1269,1551,NULL,'75/0f/feb436b561b53bfaeaf06a360b55.jpg','2022-07-07 16:49:57','2023-01-02 10:04:36'),(1270,1552,NULL,'f4/0c/33f944fb7754e44568e58bdfdc6f.jpg','2022-07-07 16:49:58','2023-01-02 10:04:36'),(1271,1553,NULL,'44/5b/7783e35984eef649ccc652866613.jpg','2022-07-07 16:49:57','2023-01-02 10:04:36'),(1272,1554,NULL,'a3/ce/43b6823fb254009b5af7b3fd95ba.jpg','2022-07-07 16:49:58','2023-01-02 10:04:36'),(1273,1555,NULL,'9d/27/76dde8011c83d447b615b3793e71.jpg','2022-07-07 16:49:59','2023-01-02 10:04:36'),(1274,1557,NULL,'3c/d2/7d903593281ca1a88775d51f2490.jpg','2022-07-07 16:50:00','2023-01-02 10:04:36'),(1275,1558,NULL,'55/16/6565ccd80e1b35a0207c7ba779c0.jpg','2022-07-07 16:50:00','2023-01-02 10:04:36'),(1276,1559,NULL,'ee/3d/afc1547ccd0bf1068a7f28bd790c.jpg','2022-07-07 16:50:01','2023-01-02 10:04:36'),(1277,1560,NULL,'13/5c/f9c4dd232ee0be41f187beece277.jpg','2022-07-07 16:50:01','2023-01-02 10:04:36'),(1278,1561,NULL,'43/fd/7c19abd9e7522f351c20a197b502.jpg','2022-07-07 16:50:01','2023-01-02 10:04:36'),(1279,1562,NULL,'7f/84/24e7f3fc4ce49677ed3fa5a77cf6.jpg','2022-07-07 16:50:02','2023-01-02 10:04:38'),(1280,1563,NULL,'56/f3/41afca1eb6a6d904f071aa3c2843.jpg','2022-03-22 14:21:21','2023-01-02 10:04:38'),(1281,1564,NULL,'9e/a2/88992646722c941c8bf04481f8b0.jpg','2022-10-20 14:03:23','2023-09-25 10:02:17'),(1282,1349,NULL,'12/3c/d70ac70d3d8d5ecfb3efd06b9f5f.jpg','2022-09-02 09:58:43','2023-01-02 10:04:29'),(1283,1457,NULL,'bd/f0/1ccd94db7e286e409373c5828b75.jpg','2022-07-07 16:50:00','2023-09-25 10:02:08'),(1284,1362,NULL,'16/96/0939dee50fde9aa9241b14167213.jpg','2022-07-07 16:49:57','2023-09-25 10:02:08'),(1285,1461,NULL,'09/74/cd3069463f724d62f7625e9c5326.jpg','2022-07-07 16:50:00','2023-09-25 10:02:08'),(1286,1456,NULL,'07/22/c71c8d826eaa494fd0c4f9a0d2ef.jpg','2022-07-07 16:50:00','2023-09-25 10:02:08'),(1287,1458,NULL,'1a/d6/8d0ea1e213b278d0b096bdf4eacd.jpg','2022-07-07 16:50:00','2023-09-25 10:02:08'),(1288,1462,NULL,'17/39/c4fcb846e34fe46b4d48bbbd9b9e.jpg','2022-07-07 16:50:00','2023-09-25 10:02:08'),(1289,1459,NULL,'ba/a6/0047eeb4f5af1c3509f5de715e26.jpg','2022-07-07 16:50:00','2023-09-25 10:02:08'),(1290,1460,NULL,'b7/83/3031423ec3694bf13d1de2f736cf.jpg','2022-07-07 16:50:00','2023-09-25 10:02:08'),(1291,1345,NULL,'5a/fc/9f2032d9ebd3aab6b8755bc4837f.jpg','2022-07-07 16:50:02','2023-09-25 10:02:08'),(1292,1346,NULL,'3f/8d/b94c0e7cdd1d9579086c9946bd78.jpg','2022-07-07 16:50:02','2023-09-25 10:02:08'),(1293,1344,NULL,'a2/f9/77b2e3fd349796ce48f61a578b27.jpg','2022-07-07 16:50:02','2023-09-25 10:02:08'),(1294,1343,NULL,'51/99/107a265b32e56ec1c61ee054c8da.jpg','2022-07-07 16:50:02','2023-09-25 10:02:08'),(1295,1342,NULL,'c6/de/5b8695754c83297f01abf42626a8.jpg','2022-07-07 16:50:02','2023-09-25 10:02:08'),(1296,1340,NULL,'cc/1e/69199308e38893a8600176794fa2.jpg','2022-07-07 16:50:02','2023-09-25 10:02:08'),(1297,1337,NULL,'5d/dc/5e9bdca335eaa9a8267563842c9d.jpg','2022-07-07 16:50:02','2023-09-25 10:02:08'),(1298,1336,NULL,'15/c6/eacc4270ba7b09ef04de9d0b132a.jpg','2022-07-07 16:50:02','2023-09-25 10:02:08'),(1299,1335,NULL,'cd/b1/332f0be848860a1f5fb6d970af93.jpg','2022-07-07 16:50:02','2023-09-25 10:02:08'),(1300,1334,NULL,'3a/fb/1683b766a6275c8dd1e31b77a7ec.jpg','2022-07-07 16:50:02','2023-09-25 10:02:08'),(1301,1442,NULL,'c3/34/91cdb135681f74fb231b5547d17a.jpg','2022-07-07 16:50:00','2023-09-25 10:02:08'),(1302,1440,NULL,'ee/4e/7314ce40d20ea8086fd11204e924.jpg','2022-07-07 16:50:00','2023-09-25 10:02:08'),(1303,1466,NULL,'7e/5a/029b2884cfc44c7574a8a6753ef7.jpg','2022-07-07 16:50:00','2023-09-25 10:02:08'),(1304,1404,NULL,'f9/da/91c6fcee1efc21f1b571592581cc.jpg','2022-07-07 16:49:59','2023-09-25 10:02:08'),(1305,1437,NULL,'f6/b9/f910bb2a8e533bf3762f91cbf145.jpg','2022-07-07 16:50:00','2023-09-25 10:02:08'),(1306,1482,NULL,'37/64/2e50f6b60bb8ac8036357af32fb5.jpg','2022-07-07 16:50:01','2023-09-25 10:02:08'),(1307,1489,NULL,'e7/76/884507e1c5b5aab4cf117fd54c1a.jpg','2022-07-07 16:50:01','2023-09-25 10:02:08'),(1308,1371,NULL,'f1/46/25250f48dfd8730dc42e9bcfe3d0.jpg','2022-07-07 16:49:57','2023-09-25 10:02:08'),(1309,1383,NULL,'ae/50/3f9d385676030c94d7c8061c6db8.jpg','2022-07-07 16:49:59','2023-09-25 10:02:10'),(1310,1426,NULL,'e7/94/78e569637cbfb4d0ac2248bc7592.jpg','2022-07-07 16:49:59','2023-09-25 10:02:10'),(1311,1435,NULL,'26/0b/ff8313e16bc44ccf5e748f195190.jpg','2022-07-07 16:49:59','2023-01-02 10:04:31'),(1312,1436,NULL,'06/8f/f589ff6b91598887d7bc6e8d322d.jpg','2022-07-07 16:49:59','2023-09-25 10:02:10'),(1313,1445,NULL,'9c/74/8501c9351bc13f1e02e73beb47f3.jpg','2022-07-07 16:50:00','2023-09-25 10:02:10'),(1314,1472,NULL,'c9/7a/3bfa5b5259245ea7cc3859b52cd5.jpg','2022-06-20 12:53:18','2023-01-02 10:04:31'),(1315,1494,NULL,'84/25/71e7f283720496a6f6e5e016c65a.jpg','2022-07-07 16:50:01','2023-09-25 10:02:10'),(1316,1502,NULL,'e1/f8/433fc6a0c88b74df7d9a33ed3032.jpg','2022-07-07 16:50:01','2023-09-25 10:02:10'),(1317,1511,NULL,'e5/b0/f90087babbb294c03395143f2095.jpg','2022-07-07 16:50:02','2023-09-25 10:02:10'),(1318,1377,NULL,'04/24/0ee864e74da712965e160c6469fd.jpg','2022-07-07 16:49:58','2023-09-25 10:02:10'),(1319,1385,NULL,'4a/8c/d5c4cd868dce79f82a4f8f1aa5fa.jpg','2022-07-07 16:49:58','2023-09-25 10:02:10'),(1320,1386,NULL,'a6/8a/711670490934711f70ea181f4a1f.jpg','2022-07-07 16:49:58','2023-01-02 10:04:31'),(1321,1388,NULL,'69/99/5242d0f37c6dda7396ed4edccabb.jpg','2022-07-07 16:49:58','2023-09-25 10:02:10'),(1322,1397,NULL,'b9/46/49f27efef4142567ce708f28a3d3.jpg','2022-07-07 16:49:59','2023-09-25 10:02:10'),(1323,1398,NULL,'62/e2/2a39e759bb658be50fac18b97f1e.jpg','2022-07-07 16:49:59','2023-09-25 10:02:10'),(1324,1411,NULL,'b4/ea/272ceb94ff1900798fd79839a0f2.jpg','2022-07-07 16:49:59','2023-09-25 10:02:10'),(1325,1415,NULL,'98/0d/4dda1bda6b299dceffafb8dd4cbe.jpg','2022-07-07 16:49:59','2023-01-02 10:04:31'),(1326,1416,NULL,'16/7e/4d66e291b545b4e645794d566df5.jpg','2022-07-07 16:49:59','2023-01-02 10:04:31'),(1327,1420,NULL,'6c/8e/03f1847716fd4afdfea4d0e6eb6c.jpg','2022-07-07 16:49:59','2023-09-25 10:02:12'),(1328,1421,NULL,'53/5d/e39ba246158ba941d0e1b75993a0.jpg','2022-07-07 16:49:59','2023-09-25 10:02:12'),(1329,1422,NULL,'ca/7e/9cdf1f756e06dda9b2b2040e0331.jpg','2022-07-07 16:49:59','2023-09-25 10:02:12'),(1330,1428,NULL,'98/b5/629624a61cf5055cca8cdbcae832.jpg','2022-07-07 16:49:59','2023-09-25 10:02:12'),(1331,1430,NULL,'61/db/13dea0508f4fde5d9a06b80b07c9.jpg','2022-07-07 16:49:59','2023-09-25 10:02:12'),(1332,1485,NULL,'69/89/96868a0786a0076f9253a2d35e76.jpg','2022-07-07 16:50:01','2023-09-25 10:02:12'),(1333,1486,NULL,'e5/22/94e815c0525f55c55f371010cf0a.jpg','2022-07-07 16:50:01','2023-09-25 10:02:12'),(1334,1508,NULL,'fb/a8/81486c4fccff7271f85f61aec7b1.jpg','2022-07-07 16:50:01','2023-09-25 10:02:12'),(1335,1509,NULL,'1c/22/6bf22f4474e311596bf0419ac94a.jpg','2022-07-07 16:50:02','2023-09-25 10:02:12'),(1336,1520,NULL,'e1/73/d274e4d43b3fa03ce2ac85fe5f4b.jpg','2022-07-07 16:50:02','2023-09-25 10:02:12'),(1337,1353,NULL,'0a/28/c00c692d9292d8d586f826285d09.jpg','2022-07-07 16:50:02','2023-09-25 10:02:12'),(1338,1359,NULL,'c1/94/0c04243124f437ff2431c5cd927c.jpg','2022-07-07 16:49:57','2023-09-25 10:02:12'),(1339,1451,NULL,'ab/89/63f0c11808aa6b6a70307d0ce88b.jpg','2022-07-07 16:50:00','2023-09-25 10:02:12'),(1340,1364,NULL,'68/4e/5d76951e1da7f187a99fcf93e530.jpg','2022-07-07 16:49:57','2023-09-25 10:02:12'),(1341,1365,NULL,'35/bb/a3fc982a7ae111798c384a71575c.jpg','2022-07-07 16:49:57','2023-09-25 10:02:12'),(1342,1429,NULL,'55/40/cda52639ea8af9f6aef638401d7a.jpg','2022-07-07 16:49:59','2023-09-25 10:02:12'),(1343,1347,NULL,'51/1d/7f035a3fbbc2a6900544732acaae.jpg','2022-07-05 16:27:42','2023-09-25 10:02:08'),(1344,1504,NULL,'3c/7a/0426715a0962415743890fd60467.jpg','2022-07-07 16:50:01','2023-09-25 10:02:10'),(1345,1504,NULL,'07/96/0f4acdb68bc2753aa5d3a551523a.jpg','2022-06-23 15:44:36','2023-09-25 10:02:10'),(1346,1511,NULL,'98/fb/80bf750e02ea184cfcfed5a11970.jpg','2022-07-07 16:50:03','2023-09-25 10:02:10'),(1347,1486,NULL,'99/79/aaca7461c1574a1cd49a74840118.jpg','2022-07-07 16:50:01','2023-09-25 10:02:12'),(1348,1508,NULL,'b3/a7/db5221bbc220b3b62be3511b207e.jpg','2022-07-07 16:50:03','2023-09-25 10:02:12'),(1349,1509,NULL,'bb/9c/bb9cd3ab4460224f64744f2ba14a.jpg','2022-07-07 16:50:03','2023-09-25 10:02:12'),(1350,1520,NULL,'30/5a/4259b6efc130e706ef70117532e3.jpg','2022-07-07 16:50:04','2023-09-25 10:02:12'),(1351,1348,NULL,'b2/8c/1f1d687f4bd26036cef439d6abef.jpg','2022-06-22 14:17:08','2023-09-25 10:02:12'),(1352,1348,NULL,'1f/27/6e31d392e9c3359d0b28197d49e0.jpg','2022-06-22 14:17:00','2023-09-25 10:02:12'),(1353,1529,NULL,'c2/47/2ff56fb8647c4f968b8d5d028506.jpg','2022-03-22 14:24:13','2023-09-25 10:02:12'),(1354,1529,NULL,'d1/cf/d61f2d5b907143ed3d410f1a145a.jpg','2022-06-22 14:16:05','2023-09-25 10:02:12'),(1355,1529,NULL,'ec/8d/07b0ebfbc74785dfd02e588a4903.jpg','2022-03-22 14:23:14','2023-09-25 10:02:12'),(1356,1526,NULL,'fd/8a/8bddac43bec357133bceffa98994.jpg','2022-03-22 14:23:39','2023-01-02 10:04:34'),(1357,1563,NULL,'a8/c0/0c43765a0d20af89fcd8f7a5c567.jpg','2022-03-22 14:22:43','2023-01-02 10:04:38'),(1358,1513,NULL,'a4/28/4be71b21c787c264cd0672f6ca27.jpg','2022-07-07 16:50:03','2023-09-25 10:02:15');
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
) ENGINE=InnoDB AUTO_INCREMENT=9809 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_taxon`
--

LOCK TABLES `sylius_product_taxon` WRITE;
/*!40000 ALTER TABLE `sylius_product_taxon` DISABLE KEYS */;
INSERT INTO `sylius_product_taxon` (`id`, `product_id`, `taxon_id`, `position`) VALUES (7883,1334,22,0),(7885,1335,22,1),(7887,1336,22,2),(7889,1337,22,3),(7895,1340,22,4),(7897,1341,22,7),(7898,1341,3,230),(7899,1342,22,8),(7901,1343,22,9),(7903,1344,22,10),(7905,1345,22,11),(7907,1346,22,12),(7909,1348,26,0),(7910,1348,15,53),(7911,1348,3,227),(7912,1349,26,1),(7915,1350,10,0),(7916,1350,15,52),(7917,1350,3,226),(7918,1351,26,2),(7919,1351,15,51),(7920,1351,3,225),(7921,1352,32,0),(7922,1352,15,50),(7923,1352,3,224),(7924,1353,32,1),(7927,1354,32,2),(7928,1354,15,49),(7929,1354,3,223),(7930,1355,45,0),(7931,1355,21,5),(7932,1355,3,222),(7933,1359,26,3),(7936,1360,40,0),(7937,1360,20,41),(7938,1360,3,221),(7939,1361,40,1),(7940,1361,20,40),(7941,1361,3,220),(7942,1362,45,1),(7945,1363,45,2),(7946,1363,21,5),(7947,1363,3,219),(7948,1364,10,1),(7951,1365,10,2),(7954,1366,12,0),(7955,1366,1,99),(7956,1366,3,218),(7957,1367,12,1),(7958,1367,1,98),(7959,1367,3,217),(7960,1368,40,2),(7961,1368,20,39),(7962,1368,3,216),(7963,1369,40,3),(7964,1369,20,38),(7965,1369,3,215),(7966,1372,40,4),(7967,1372,20,37),(7968,1372,3,214),(7969,1373,40,5),(7970,1373,20,36),(7971,1373,3,213),(7972,1374,40,6),(7973,1374,20,35),(7974,1374,3,212),(7975,1375,40,7),(7976,1375,20,34),(7977,1375,3,211),(7978,1376,40,8),(7979,1376,20,33),(7980,1376,3,210),(7981,1377,14,0),(7984,1378,14,1),(7985,1378,1,97),(7986,1378,3,209),(7987,1379,12,2),(7988,1379,1,96),(7989,1379,3,208),(7990,1380,12,3),(7991,1380,1,95),(7992,1380,3,207),(7993,1381,12,4),(7994,1381,1,94),(7995,1381,3,206),(7996,1382,43,0),(7997,1382,19,4),(7998,1382,3,205),(7999,1383,40,9),(8002,1384,40,10),(8003,1384,20,32),(8004,1384,3,204),(8005,1385,11,0),(8008,1386,12,5),(8011,1387,40,11),(8012,1387,20,31),(8013,1387,3,203),(8014,1388,40,12),(8017,1389,40,13),(8018,1389,20,30),(8019,1389,3,202),(8020,1390,40,14),(8021,1390,20,28),(8022,1390,3,201),(8023,1391,40,15),(8024,1391,20,27),(8025,1391,3,200),(8026,1392,40,16),(8027,1392,20,26),(8028,1392,3,199),(8029,1393,40,17),(8030,1393,20,25),(8031,1393,3,198),(8032,1394,40,18),(8033,1394,20,24),(8034,1394,3,197),(8035,1395,40,19),(8036,1395,20,23),(8037,1395,3,196),(8038,1396,10,3),(8039,1396,15,48),(8040,1396,3,195),(8041,1397,11,1),(8044,1398,11,2),(8047,1399,10,4),(8048,1399,15,47),(8049,1399,3,194),(8050,1400,13,0),(8051,1400,1,93),(8052,1400,3,193),(8053,1401,12,6),(8056,1402,14,2),(8057,1402,1,92),(8058,1402,3,192),(8059,1403,10,5),(8060,1403,15,46),(8061,1403,3,191),(8062,1404,43,1),(8065,1405,10,6),(8066,1405,15,44),(8067,1405,3,190),(8068,1406,10,7),(8069,1406,15,43),(8070,1406,3,189),(8071,1407,10,8),(8072,1407,15,42),(8073,1407,3,188),(8074,1408,12,7),(8075,1408,1,91),(8076,1408,3,187),(8077,1409,12,8),(8078,1409,1,90),(8079,1409,3,186),(8080,1410,12,9),(8083,1411,12,10),(8086,1412,12,11),(8087,1412,1,89),(8088,1412,3,185),(8089,1413,12,12),(8090,1413,1,88),(8091,1413,3,184),(8092,1414,12,13),(8095,1415,12,14),(8098,1416,12,15),(8101,1417,12,16),(8102,1417,1,87),(8103,1417,3,183),(8104,1418,10,9),(8105,1418,15,39),(8106,1418,3,182),(8107,1419,11,3),(8108,1419,1,86),(8109,1419,3,181),(8110,1420,11,4),(8113,1421,11,5),(8116,1422,11,6),(8119,1423,10,10),(8120,1423,15,38),(8121,1423,3,180),(8122,1424,10,11),(8123,1424,15,37),(8124,1424,3,179),(8125,1425,11,7),(8126,1425,1,85),(8127,1425,3,178),(8128,1426,13,1),(8131,1427,13,2),(8132,1427,1,84),(8133,1427,3,177),(8134,1428,11,8),(8137,1429,10,12),(8140,1430,14,3),(8143,1431,10,13),(8144,1431,15,36),(8145,1431,3,176),(8146,1432,10,14),(8147,1432,15,35),(8148,1432,3,175),(8149,1433,11,9),(8150,1433,1,83),(8151,1433,3,174),(8152,1434,11,10),(8153,1434,1,82),(8154,1434,3,173),(8155,1435,12,17),(8158,1436,13,3),(8161,1437,43,2),(8164,1438,10,15),(8165,1438,15,34),(8166,1438,3,172),(8167,1439,10,16),(8168,1439,15,33),(8169,1439,3,171),(8170,1440,14,4),(8173,1441,14,5),(8174,1441,1,81),(8175,1441,3,170),(8176,1442,14,6),(8179,1443,10,17),(8180,1443,15,32),(8181,1443,3,169),(8182,1444,10,18),(8183,1444,15,31),(8184,1444,3,168),(8185,1445,13,4),(8188,1446,12,18),(8189,1446,1,80),(8190,1446,3,167),(8191,1447,12,19),(8192,1447,1,79),(8193,1447,3,166),(8194,1448,12,20),(8195,1448,1,78),(8196,1448,3,165),(8197,1449,12,21),(8198,1449,1,77),(8199,1449,3,164),(8200,1450,12,22),(8201,1450,1,76),(8202,1450,3,163),(8203,1451,26,4),(8206,1452,40,20),(8207,1452,20,22),(8208,1452,3,162),(8209,1453,40,21),(8210,1453,20,21),(8211,1453,3,161),(8212,1454,40,22),(8213,1454,20,20),(8214,1454,3,160),(8215,1455,40,23),(8216,1455,20,19),(8217,1455,3,160),(8218,1456,45,3),(8221,1457,45,4),(8224,1458,45,5),(8227,1459,45,6),(8230,1460,45,7),(8233,1461,45,8),(8236,1462,45,9),(8239,1463,10,19),(8240,1463,15,30),(8241,1463,3,158),(8242,1464,10,20),(8243,1464,15,29),(8244,1464,3,157),(8245,1465,10,21),(8246,1465,15,28),(8247,1465,3,156),(8248,1466,40,24),(8251,1467,13,5),(8252,1467,1,75),(8253,1467,3,155),(8254,1468,14,7),(8255,1468,1,74),(8256,1468,3,154),(8257,1469,14,8),(8258,1469,1,73),(8259,1469,3,153),(8260,1470,10,22),(8261,1470,15,27),(8262,1470,3,152),(8263,1471,10,23),(8264,1471,15,26),(8265,1471,3,151),(8266,1472,12,23),(8269,1473,10,24),(8270,1473,15,25),(8271,1473,3,150),(8272,1474,14,9),(8273,1474,1,72),(8274,1474,3,149),(8275,1475,14,10),(8276,1475,1,71),(8277,1475,3,148),(8278,1476,10,25),(8279,1476,15,24),(8280,1476,3,147),(8281,1477,10,26),(8282,1477,15,23),(8283,1477,3,146),(8284,1478,22,13),(8285,1478,3,145),(8286,1479,22,14),(8287,1479,3,128),(8288,1480,10,27),(8289,1480,15,22),(8290,1480,3,144),(8291,1481,13,6),(8292,1481,1,70),(8293,1481,3,143),(8294,1482,13,7),(8297,1483,13,8),(8298,1483,1,69),(8299,1483,3,142),(8300,1484,13,9),(8301,1484,1,68),(8302,1484,3,141),(8303,1485,26,5),(8306,1486,26,6),(8309,1488,27,0),(8310,1488,20,18),(8311,1488,3,140),(8312,1490,40,25),(8313,1490,20,17),(8314,1490,3,139),(8315,1491,12,24),(8316,1491,1,67),(8317,1491,3,138),(8318,1492,10,28),(8319,1492,15,21),(8320,1492,3,137),(8321,1493,11,11),(8322,1493,1,66),(8323,1493,3,136),(8324,1494,11,12),(8327,1495,40,26),(8328,1495,20,16),(8329,1495,3,135),(8330,1496,40,27),(8331,1496,20,15),(8332,1496,3,134),(8333,1497,40,28),(8334,1497,20,14),(8335,1497,3,133),(8336,1498,40,29),(8337,1498,20,12),(8338,1498,3,132),(8339,1499,40,30),(8340,1499,20,11),(8341,1499,3,131),(8342,1500,40,31),(8343,1500,20,9),(8344,1500,3,130),(8345,1501,40,32),(8346,1501,20,4),(8347,1501,3,129),(8348,1502,14,11),(8351,1503,22,15),(8352,1503,3,1),(8353,1504,11,13),(8354,1504,1,65),(8355,1504,3,127),(8356,1505,11,14),(8357,1505,1,64),(8358,1505,3,126),(8359,1506,12,25),(8360,1506,1,63),(8361,1506,3,125),(8362,1507,26,7),(8363,1507,15,20),(8364,1507,3,124),(8365,1508,10,29),(8368,1509,10,30),(8371,1510,10,31),(8372,1510,15,19),(8373,1510,3,123),(8374,1511,14,12),(8377,1512,10,32),(8378,1512,15,18),(8379,1512,3,122),(8380,1513,10,33),(8381,1513,15,14),(8382,1513,3,121),(8383,1514,12,26),(8384,1514,1,62),(8385,1514,3,120),(8386,1515,12,27),(8387,1515,1,61),(8388,1515,3,119),(8389,1516,12,28),(8390,1516,1,60),(8391,1516,3,118),(8392,1517,12,29),(8393,1517,1,59),(8394,1517,3,117),(8395,1518,12,30),(8396,1518,1,58),(8397,1518,3,116),(8398,1519,12,31),(8399,1519,1,57),(8400,1519,3,115),(8401,1520,10,34),(8404,1521,12,32),(8405,1521,1,55),(8406,1521,3,114),(8407,1522,11,15),(8408,1522,1,52),(8409,1522,3,113),(8410,1523,10,35),(8411,1523,15,13),(8412,1523,3,111),(8413,1524,10,36),(8414,1524,15,12),(8415,1524,3,108),(8416,1525,131,0),(8417,1525,12,33),(8418,1525,130,8),(8419,1525,7,143),(8420,1525,1,56),(8421,1525,3,112),(8422,1526,12,34),(8423,1526,1,51),(8424,1526,3,107),(8425,1527,131,1),(8426,1527,12,35),(8427,1527,130,6),(8428,1527,7,139),(8429,1527,1,54),(8430,1527,3,110),(8431,1528,131,2),(8432,1528,12,36),(8433,1528,130,3),(8434,1528,7,138),(8435,1528,1,53),(8436,1528,3,109),(8437,1529,12,37),(8438,1529,1,47),(8439,1529,3,106),(8440,1487,145,0),(8441,1487,1,46),(8442,1487,3,105),(8443,1347,25,0),(8444,1347,19,1),(8445,1347,3,102),(8446,1489,36,0),(8449,1370,36,1),(8450,1370,20,2),(8451,1370,3,100),(8452,1371,36,2),(8455,1354,137,0),(8456,1354,142,0),(8457,1354,125,0),(8458,1354,144,0),(8459,1354,129,0),(8460,1354,119,0),(8461,1354,128,0),(8462,1354,136,0),(8463,1354,139,0),(8464,1354,120,0),(8465,1354,131,3),(8466,1354,135,25),(8467,1354,7,141),(8468,1354,141,37),(8469,1354,124,41),(8470,1354,143,33),(8471,1354,127,71),(8472,1354,118,57),(8473,1354,138,32),(8474,1354,130,35),(8475,1363,129,1),(8476,1363,142,1),(8477,1363,127,65),(8478,1363,7,140),(8479,1363,141,7),(8480,1339,144,1),(8481,1339,137,1),(8482,1339,125,1),(8483,1339,119,1),(8484,1339,128,1),(8485,1339,136,1),(8486,1339,139,1),(8487,1339,120,1),(8488,1339,129,2),(8489,1339,131,4),(8490,1339,142,2),(8491,1339,143,30),(8492,1339,7,147),(8493,1339,135,55),(8494,1339,124,47),(8495,1339,118,58),(8496,1339,127,74),(8497,1339,138,37),(8498,1339,130,38),(8499,1339,141,62),(8500,1338,144,2),(8501,1338,137,2),(8502,1338,125,2),(8503,1338,119,2),(8504,1338,128,2),(8505,1338,136,2),(8506,1338,139,2),(8507,1338,120,2),(8508,1338,129,3),(8509,1338,131,5),(8510,1338,142,3),(8511,1338,143,27),(8512,1338,7,142),(8513,1338,135,53),(8514,1338,124,45),(8515,1338,118,56),(8516,1338,127,72),(8517,1338,138,33),(8518,1338,130,36),(8519,1338,141,60),(8520,1516,122,0),(8521,1516,119,3),(8522,1516,136,3),(8523,1516,121,58),(8524,1516,7,176),(8525,1516,118,84),(8526,1516,135,84),(8527,1483,133,0),(8528,1483,122,1),(8529,1483,120,3),(8530,1483,137,3),(8531,1483,136,4),(8532,1483,132,17),(8533,1483,7,152),(8534,1483,121,23),(8535,1483,118,59),(8536,1483,135,59),(8537,1487,133,1),(8538,1487,122,2),(8539,1487,120,4),(8540,1487,137,4),(8541,1487,136,5),(8542,1487,132,3),(8543,1487,7,137),(8544,1487,121,8),(8545,1487,118,44),(8546,1487,135,46),(8547,1490,122,3),(8548,1490,119,4),(8549,1490,136,6),(8550,1490,121,50),(8551,1490,7,170),(8552,1490,118,77),(8553,1490,135,77),(8554,1347,144,3),(8555,1347,128,3),(8556,1347,139,3),(8557,1347,137,5),(8558,1347,129,4),(8559,1347,120,5),(8560,1347,125,3),(8561,1347,131,6),(8562,1347,119,5),(8563,1347,136,7),(8564,1347,142,4),(8565,1347,143,20),(8566,1347,7,109),(8567,1347,127,64),(8568,1347,138,24),(8569,1347,135,42),(8570,1347,118,48),(8571,1347,124,43),(8572,1347,130,31),(8573,1347,141,55),(8574,1478,139,4),(8575,1478,125,4),(8576,1478,138,35),(8577,1478,7,155),(8578,1478,124,53),(8579,1479,139,5),(8580,1479,125,5),(8581,1479,138,36),(8582,1479,7,156),(8583,1479,124,54),(8584,1488,122,4),(8585,1488,119,6),(8586,1488,136,8),(8587,1488,121,4),(8588,1488,7,107),(8589,1488,118,30),(8590,1488,135,34),(8591,1368,128,4),(8592,1368,129,5),(8593,1368,127,48),(8594,1368,7,110),(8595,1369,128,5),(8596,1369,129,6),(8597,1369,127,62),(8598,1369,7,134),(8599,1370,128,6),(8600,1370,129,7),(8601,1370,127,43),(8602,1370,7,108),(8603,1372,128,7),(8604,1372,129,8),(8605,1372,127,49),(8606,1372,7,111),(8607,1373,128,8),(8608,1373,129,9),(8609,1373,127,51),(8610,1373,7,123),(8611,1374,128,9),(8612,1374,129,10),(8613,1374,127,59),(8614,1374,7,128),(8615,1375,128,10),(8616,1375,129,11),(8617,1375,127,60),(8618,1375,7,130),(8619,1376,128,11),(8620,1376,129,12),(8621,1376,127,61),(8622,1376,7,133),(8623,1384,128,12),(8624,1384,129,13),(8625,1384,127,63),(8626,1384,7,135),(8627,1467,144,4),(8628,1467,142,5),(8629,1467,143,26),(8630,1467,7,114),(8631,1467,141,50),(8632,1468,142,6),(8633,1468,141,48),(8634,1468,7,124),(8635,1469,144,5),(8636,1469,142,7),(8637,1469,143,29),(8638,1469,7,125),(8639,1469,141,54),(8640,1474,142,8),(8641,1474,141,51),(8642,1474,7,126),(8643,1475,142,9),(8644,1475,141,52),(8645,1475,7,127),(8646,1491,133,2),(8647,1491,120,6),(8648,1491,137,6),(8649,1491,132,48),(8650,1491,7,149),(8651,1491,118,73),(8652,1491,135,73),(8653,1504,133,3),(8654,1504,122,5),(8655,1504,120,7),(8656,1504,137,7),(8657,1504,136,9),(8658,1504,132,24),(8659,1504,7,131),(8660,1504,121,26),(8661,1504,118,61),(8662,1504,135,61),(8663,1505,133,4),(8664,1505,122,6),(8665,1505,132,25),(8666,1505,7,132),(8667,1505,121,27),(8668,1506,133,5),(8669,1506,120,8),(8670,1506,137,8),(8671,1506,132,43),(8672,1506,7,144),(8673,1506,118,72),(8674,1506,135,72),(8675,1514,133,6),(8676,1514,122,7),(8677,1514,132,44),(8678,1514,7,145),(8679,1514,121,48),(8680,1515,133,7),(8681,1515,122,8),(8682,1515,132,45),(8683,1515,7,146),(8684,1515,121,49),(8685,1517,133,8),(8686,1517,122,9),(8687,1517,132,47),(8688,1517,7,148),(8689,1517,121,52),(8690,1519,122,10),(8691,1519,119,7),(8692,1519,136,10),(8693,1519,121,51),(8694,1519,7,150),(8695,1519,118,78),(8696,1519,135,78),(8697,1366,128,13),(8698,1366,129,14),(8699,1366,127,35),(8700,1366,7,100),(8701,1367,128,14),(8702,1367,129,15),(8703,1367,127,41),(8704,1367,7,106),(8705,1378,128,15),(8706,1378,129,16),(8707,1378,127,36),(8708,1378,7,102),(8709,1379,128,16),(8710,1379,129,17),(8711,1379,127,37),(8712,1379,7,103),(8713,1380,128,17),(8714,1380,129,18),(8715,1380,127,38),(8716,1380,7,104),(8717,1381,128,18),(8718,1381,129,19),(8719,1381,127,39),(8720,1381,7,105),(8721,1387,128,19),(8722,1387,129,20),(8723,1387,127,50),(8724,1387,7,112),(8725,1389,128,20),(8726,1389,129,21),(8727,1389,127,52),(8728,1389,7,115),(8729,1390,128,21),(8730,1390,129,22),(8731,1390,127,53),(8732,1390,7,116),(8733,1391,128,22),(8734,1391,129,23),(8735,1391,127,54),(8736,1391,7,117),(8737,1392,128,23),(8738,1392,129,24),(8739,1392,127,55),(8740,1392,7,118),(8741,1393,128,24),(8742,1393,129,25),(8743,1393,127,56),(8744,1393,7,119),(8745,1394,128,25),(8746,1394,129,26),(8747,1394,127,57),(8748,1394,7,121),(8749,1395,128,26),(8750,1395,129,27),(8751,1395,127,58),(8752,1395,7,122),(8753,1348,144,6),(8754,1348,139,6),(8755,1348,131,7),(8756,1348,119,8),(8757,1348,125,6),(8758,1348,137,9),(8759,1348,120,9),(8760,1348,142,10),(8761,1348,136,11),(8762,1348,128,27),(8763,1348,129,28),(8764,1348,143,19),(8765,1348,7,99),(8766,1348,138,7),(8767,1348,130,24),(8768,1348,118,41),(8769,1348,124,40),(8770,1348,135,45),(8771,1348,141,47),(8772,1348,127,45),(8773,1351,144,7),(8774,1351,139,7),(8775,1351,131,8),(8776,1351,119,9),(8777,1351,125,7),(8778,1351,137,10),(8779,1351,120,10),(8780,1351,142,11),(8781,1351,136,12),(8782,1351,128,28),(8783,1351,129,29),(8784,1351,143,21),(8785,1351,7,101),(8786,1351,138,23),(8787,1351,130,26),(8788,1351,118,45),(8789,1351,124,42),(8790,1351,135,48),(8791,1351,141,49),(8792,1351,127,47),(8793,1352,144,8),(8794,1352,139,8),(8795,1352,131,9),(8796,1352,119,10),(8797,1352,125,8),(8798,1352,137,11),(8799,1352,120,11),(8800,1352,142,12),(8801,1352,136,13),(8802,1352,128,29),(8803,1352,129,30),(8804,1352,143,18),(8805,1352,7,98),(8806,1352,138,6),(8807,1352,130,10),(8808,1352,118,36),(8809,1352,124,39),(8810,1352,135,43),(8811,1352,141,46),(8812,1352,127,44),(8813,1382,128,30),(8814,1382,129,31),(8815,1382,127,34),(8816,1382,7,97),(8817,1450,125,9),(8818,1450,124,57),(8819,1450,7,120),(8820,1529,131,10),(8821,1529,130,59),(8822,1529,7,136),(8823,1530,128,31),(8824,1530,129,32),(8825,1530,12,38),(8826,1530,127,32),(8827,1530,7,96),(8828,1530,1,50),(8829,1530,3,104),(8830,1531,125,10),(8831,1531,12,39),(8832,1531,124,1),(8833,1531,7,95),(8834,1531,1,49),(8835,1531,3,103),(8836,1478,51,0),(8837,1479,51,1),(8838,1503,51,2),(8839,1446,125,11),(8840,1446,124,51),(8841,1446,7,113),(8842,1526,131,11),(8843,1526,130,55),(8844,1526,7,129),(8845,1532,33,0),(8846,1532,15,5),(8847,1532,3,99),(8848,1535,128,32),(8849,1535,129,33),(8850,1535,12,40),(8851,1535,127,31),(8852,1535,7,94),(8853,1535,1,48),(8854,1535,3,101),(8855,1536,12,41),(8856,1536,1,45),(8857,1536,3,98),(8858,1537,14,13),(8859,1537,1,44),(8860,1537,3,97),(8861,1538,14,14),(8862,1538,1,43),(8863,1538,3,96),(8864,1539,14,15),(8865,1539,1,40),(8866,1539,3,95),(8867,1540,45,10),(8868,1540,21,1),(8869,1540,3,92),(8870,1541,12,42),(8871,1541,1,39),(8872,1541,3,91),(8873,1542,131,12),(8874,1542,12,43),(8875,1542,130,2),(8876,1542,7,93),(8877,1542,1,42),(8878,1542,3,94),(8879,1543,14,16),(8880,1543,1,38),(8881,1543,3,90),(8882,1544,14,17),(8883,1544,1,36),(8884,1544,3,89),(8885,1545,13,10),(8886,1545,1,35),(8887,1545,3,88),(8888,1546,13,11),(8889,1546,1,30),(8890,1546,3,87),(8891,1547,13,12),(8892,1547,1,23),(8893,1547,3,86),(8894,1548,58,0),(8895,1548,57,3),(8896,1548,3,79),(8897,1549,58,1),(8898,1549,57,2),(8899,1549,3,75),(8900,1550,144,9),(8901,1550,139,9),(8902,1550,131,13),(8903,1550,119,11),(8904,1550,137,12),(8905,1550,125,12),(8906,1550,120,12),(8907,1550,136,14),(8908,1550,142,13),(8909,1550,128,33),(8910,1550,129,34),(8911,1550,45,11),(8912,1550,143,17),(8913,1550,7,92),(8914,1550,138,5),(8915,1550,130,7),(8916,1550,118,35),(8917,1550,135,38),(8918,1550,124,38),(8919,1550,141,42),(8920,1550,127,40),(8921,1550,21,18),(8922,1550,3,93),(8923,1551,128,34),(8924,1551,129,35),(8925,1551,12,44),(8926,1551,127,30),(8927,1551,7,91),(8928,1551,1,34),(8929,1551,3,85),(8930,1552,128,35),(8931,1552,129,36),(8932,1552,12,45),(8933,1552,127,29),(8934,1552,7,90),(8935,1552,1,33),(8936,1552,3,84),(8937,1553,128,36),(8938,1553,129,37),(8939,1553,36,3),(8940,1553,127,5),(8941,1553,7,89),(8942,1553,20,6),(8943,1553,3,83),(8944,1554,128,37),(8945,1554,129,38),(8946,1554,12,46),(8947,1554,127,2),(8948,1554,7,87),(8949,1554,1,32),(8950,1554,3,82),(8951,1555,128,38),(8952,1555,129,39),(8953,1555,40,33),(8954,1555,127,1),(8955,1555,7,84),(8956,1555,20,5),(8957,1555,3,81),(8958,1556,14,18),(8959,1556,1,19),(8960,1556,3,74),(8961,1557,12,47),(8962,1557,1,13),(8963,1557,3,66),(8964,1558,12,48),(8965,1558,1,9),(8966,1558,3,49),(8967,1559,133,9),(8968,1559,122,11),(8969,1559,137,13),(8970,1559,120,13),(8971,1559,136,15),(8973,1559,132,2),(8974,1559,7,82),(8975,1559,121,6),(8976,1559,135,33),(8977,1559,118,34),(8978,1559,1,31),(8979,1559,3,80),(8980,1560,122,12),(8981,1560,119,12),(8982,1560,136,16),(8983,1560,36,4),(8984,1560,121,2),(8985,1560,7,78),(8986,1560,118,29),(8987,1560,135,32),(8988,1560,20,8),(8989,1560,3,78),(8990,1561,122,13),(8991,1561,119,13),(8992,1561,136,17),(8993,1561,40,34),(8994,1561,121,1),(8995,1561,7,72),(8996,1561,118,3),(8997,1561,135,28),(8998,1561,20,7),(8999,1561,3,77),(9000,1562,133,10),(9001,1562,137,14),(9002,1562,120,14),(9003,1562,12,49),(9004,1562,132,1),(9005,1562,7,69),(9006,1562,135,24),(9007,1562,118,8),(9008,1562,1,24),(9009,1562,3,76),(9010,1563,131,14),(9011,1563,12,50),(9012,1563,130,1),(9013,1563,7,67),(9014,1563,1,18),(9015,1563,3,68),(9016,1564,58,2),(9017,1564,57,1),(9018,1564,3,26),(9019,1339,50,0),(9020,1339,22,5),(9021,1339,3,71),(9022,1338,50,1),(9023,1338,22,6),(9024,1338,3,73),(9025,1349,120,15),(9026,1349,137,15),(9027,1349,125,13),(9028,1349,129,40),(9029,1349,128,39),(9030,1349,142,14),(9031,1349,119,14),(9032,1349,139,10),(9033,1349,136,18),(9034,1349,131,15),(9035,1349,15,9),(9036,1349,3,38),(9037,1349,118,4),(9038,1349,7,74),(9039,1349,135,29),(9040,1349,124,37),(9041,1349,127,33),(9042,1349,141,44),(9043,1349,138,26),(9044,1349,130,27),(9045,1457,142,15),(9046,1457,21,10),(9047,1457,3,67),(9048,1457,141,38),(9049,1457,7,83),(9050,1362,129,41),(9051,1362,142,16),(9052,1362,21,2),(9053,1362,3,36),(9054,1362,127,6),(9055,1362,7,73),(9056,1362,141,11),(9057,1461,142,17),(9058,1461,21,14),(9059,1461,3,72),(9060,1461,141,43),(9061,1461,7,88),(9062,1456,142,18),(9063,1456,21,4),(9064,1456,3,39),(9065,1456,141,10),(9066,1456,7,77),(9067,1458,142,19),(9068,1458,21,6),(9069,1458,3,50),(9070,1458,141,12),(9071,1458,7,79),(9072,1462,142,20),(9073,1462,21,12),(9074,1462,3,69),(9075,1462,141,40),(9076,1462,7,86),(9077,1459,142,21),(9078,1459,21,7),(9079,1459,3,52),(9080,1459,141,35),(9081,1459,7,80),(9082,1460,142,22),(9083,1460,21,8),(9084,1460,3,53),(9085,1460,141,36),(9086,1460,7,81),(9087,1345,144,10),(9088,1345,137,16),(9089,1345,125,14),(9090,1345,128,40),(9091,1345,119,15),(9092,1345,136,19),(9093,1345,139,11),(9094,1345,120,16),(9095,1345,129,42),(9096,1345,131,16),(9097,1345,142,23),(9098,1345,50,2),(9099,1345,143,16),(9100,1345,7,66),(9101,1345,135,22),(9102,1345,124,32),(9103,1345,127,28),(9104,1345,118,28),(9105,1345,138,22),(9106,1345,130,23),(9107,1345,141,34),(9108,1345,3,65),(9109,1346,144,11),(9110,1346,137,17),(9111,1346,125,15),(9112,1346,128,41),(9113,1346,119,16),(9114,1346,136,20),(9115,1346,139,12),(9116,1346,120,17),(9117,1346,129,43),(9118,1346,131,17),(9119,1346,142,24),(9120,1346,50,3),(9121,1346,143,15),(9122,1346,7,65),(9123,1346,135,21),(9124,1346,124,31),(9125,1346,127,27),(9126,1346,118,27),(9127,1346,138,21),(9128,1346,130,22),(9129,1346,141,33),(9130,1346,3,64),(9131,1344,144,12),(9132,1344,137,18),(9133,1344,125,16),(9134,1344,128,42),(9135,1344,119,17),(9136,1344,136,21),(9137,1344,139,13),(9138,1344,120,18),(9139,1344,129,44),(9140,1344,131,18),(9141,1344,142,25),(9142,1344,50,4),(9143,1344,143,14),(9144,1344,7,64),(9145,1344,135,20),(9146,1344,124,30),(9147,1344,127,26),(9148,1344,118,24),(9149,1344,138,20),(9150,1344,130,21),(9151,1344,141,32),(9152,1344,3,63),(9153,1343,144,13),(9154,1343,137,19),(9155,1343,125,17),(9156,1343,128,43),(9157,1343,119,18),(9158,1343,136,22),(9159,1343,139,14),(9160,1343,120,19),(9161,1343,129,45),(9162,1343,131,19),(9163,1343,142,26),(9164,1343,50,5),(9165,1343,143,13),(9166,1343,7,61),(9167,1343,135,17),(9168,1343,124,27),(9169,1343,127,25),(9170,1343,118,23),(9171,1343,138,19),(9172,1343,130,20),(9173,1343,141,31),(9174,1343,3,62),(9175,1342,144,14),(9176,1342,137,20),(9177,1342,125,18),(9178,1342,128,44),(9179,1342,119,19),(9180,1342,136,23),(9181,1342,139,15),(9182,1342,120,20),(9183,1342,129,46),(9184,1342,131,20),(9185,1342,142,27),(9186,1342,50,6),(9187,1342,143,12),(9188,1342,7,54),(9189,1342,135,13),(9190,1342,124,26),(9191,1342,127,24),(9192,1342,118,21),(9193,1342,138,18),(9194,1342,130,19),(9195,1342,141,30),(9196,1342,3,61),(9197,1341,144,15),(9198,1341,137,21),(9199,1341,125,19),(9200,1341,128,45),(9201,1341,119,20),(9202,1341,136,24),(9203,1341,139,16),(9204,1341,120,21),(9205,1341,129,47),(9206,1341,131,21),(9207,1341,142,28),(9208,1341,50,7),(9209,1341,143,11),(9210,1341,7,50),(9211,1341,135,11),(9212,1341,124,25),(9213,1341,127,21),(9214,1341,118,20),(9215,1341,138,17),(9216,1341,130,18),(9217,1341,141,29),(9218,1340,144,16),(9219,1340,137,22),(9220,1340,125,20),(9221,1340,128,46),(9222,1340,119,21),(9223,1340,136,25),(9224,1340,139,17),(9225,1340,120,22),(9226,1340,129,48),(9227,1340,131,22),(9228,1340,142,29),(9229,1340,50,8),(9230,1340,143,10),(9231,1340,7,49),(9232,1340,135,10),(9233,1340,124,23),(9234,1340,127,20),(9235,1340,118,19),(9236,1340,138,16),(9237,1340,130,17),(9238,1340,141,28),(9239,1340,3,60),(9240,1337,144,17),(9241,1337,137,23),(9242,1337,125,21),(9243,1337,128,47),(9244,1337,119,22),(9245,1337,136,26),(9246,1337,139,18),(9247,1337,120,23),(9248,1337,129,49),(9249,1337,131,23),(9250,1337,142,30),(9251,1337,50,9),(9252,1337,143,7),(9253,1337,7,45),(9254,1337,135,9),(9255,1337,124,22),(9256,1337,127,17),(9257,1337,118,16),(9258,1337,138,15),(9259,1337,130,16),(9260,1337,141,19),(9261,1337,3,59),(9262,1336,144,18),(9263,1336,137,24),(9264,1336,125,22),(9265,1336,128,48),(9266,1336,119,23),(9267,1336,136,27),(9268,1336,139,19),(9269,1336,120,24),(9270,1336,129,50),(9271,1336,131,24),(9272,1336,142,31),(9273,1336,50,10),(9274,1336,143,5),(9275,1336,7,35),(9276,1336,135,5),(9277,1336,124,10),(9278,1336,127,13),(9279,1336,118,14),(9280,1336,138,14),(9281,1336,130,15),(9282,1336,141,16),(9283,1336,3,57),(9284,1335,144,19),(9285,1335,137,25),(9286,1335,125,23),(9287,1335,128,49),(9288,1335,119,24),(9289,1335,136,28),(9290,1335,139,20),(9291,1335,120,25),(9292,1335,129,51),(9293,1335,131,25),(9294,1335,142,32),(9295,1335,50,11),(9296,1335,143,4),(9297,1335,7,5),(9298,1335,135,4),(9299,1335,124,9),(9300,1335,127,12),(9301,1335,118,11),(9302,1335,138,13),(9303,1335,130,14),(9304,1335,141,14),(9305,1335,3,56),(9306,1334,144,20),(9307,1334,137,26),(9308,1334,125,24),(9309,1334,128,50),(9310,1334,119,25),(9311,1334,136,29),(9312,1334,139,21),(9313,1334,120,26),(9314,1334,129,52),(9315,1334,131,26),(9316,1334,142,33),(9317,1334,50,12),(9318,1334,143,3),(9319,1334,7,4),(9320,1334,135,3),(9321,1334,124,4),(9322,1334,127,11),(9323,1334,118,9),(9324,1334,138,12),(9325,1334,130,13),(9326,1334,141,13),(9327,1334,3,55),(9328,1442,125,25),(9329,1442,1,28),(9330,1442,3,51),(9331,1442,124,24),(9332,1442,7,63),(9333,1440,125,26),(9334,1440,1,22),(9335,1440,3,44),(9336,1440,124,13),(9337,1440,7,51),(9338,1466,144,21),(9339,1466,142,34),(9340,1466,20,29),(9341,1466,3,70),(9342,1466,143,32),(9343,1466,7,85),(9344,1466,141,45),(9345,1404,19,2),(9346,1404,3,32),(9347,1437,125,27),(9348,1437,19,3),(9349,1437,3,35),(9350,1437,124,5),(9351,1437,7,46),(9352,1482,133,11),(9353,1482,122,14),(9354,1482,120,27),(9355,1482,137,27),(9356,1482,136,30),(9357,1482,1,25),(9358,1482,3,48),(9359,1482,132,14),(9360,1482,7,58),(9361,1482,121,16),(9362,1482,118,22),(9363,1482,135,23),(9364,1489,122,15),(9365,1489,119,26),(9366,1489,136,31),(9367,1489,20,1),(9368,1489,3,22),(9369,1489,121,3),(9370,1489,7,20),(9371,1489,118,7),(9372,1489,135,8),(9373,1371,128,51),(9374,1371,129,53),(9375,1371,20,3),(9376,1371,3,31),(9377,1371,127,7),(9378,1371,7,38),(9379,1383,128,52),(9380,1383,129,54),(9381,1383,20,10),(9382,1383,3,47),(9383,1383,127,23),(9384,1383,7,55),(9385,1426,1,11),(9386,1426,3,24),(9387,1435,125,28),(9388,1435,1,37),(9389,1435,3,54),(9390,1435,124,35),(9391,1435,7,68),(9392,1436,125,29),(9393,1436,1,15),(9394,1436,3,28),(9395,1436,124,6),(9396,1436,7,44),(9397,1445,1,17),(9398,1445,3,30),(9399,1472,142,35),(9400,1472,1,41),(9401,1472,3,58),(9402,1472,141,41),(9403,1472,7,76),(9404,1494,134,0),(9405,1494,133,12),(9406,1494,1,29),(9407,1494,3,45),(9408,1494,132,21),(9409,1494,7,60),(9410,1502,133,13),(9411,1502,122,16),(9412,1502,120,28),(9413,1502,137,28),(9414,1502,136,32),(9415,1502,1,26),(9416,1502,3,40),(9417,1502,132,18),(9418,1502,7,56),(9419,1502,121,19),(9420,1502,118,25),(9421,1502,135,26),(9422,1511,133,14),(9423,1511,122,17),(9424,1511,120,29),(9425,1511,137,29),(9426,1511,136,33),(9427,1511,1,27),(9428,1511,3,43),(9429,1511,132,19),(9430,1511,7,57),(9431,1511,121,20),(9432,1511,118,26),(9433,1511,135,27),(9434,1377,128,53),(9435,1377,129,55),(9436,1377,1,5),(9437,1377,3,15),(9438,1377,127,4),(9439,1377,7,10),(9440,1385,128,54),(9441,1385,129,56),(9442,1385,1,1),(9443,1385,3,6),(9444,1385,127,3),(9445,1385,7,6),(9446,1386,128,55),(9447,1386,129,57),(9448,1386,1,14),(9449,1386,3,27),(9450,1386,127,8),(9451,1386,7,43),(9452,1388,128,56),(9453,1388,129,58),(9454,1388,20,13),(9455,1388,3,37),(9456,1388,127,22),(9457,1388,7,52),(9458,1397,1,2),(9459,1397,3,10),(9460,1398,1,3),(9461,1398,3,13),(9462,1401,1,12),(9463,1401,3,25),(9464,1411,1,16),(9465,1411,3,29),(9466,1415,1,20),(9467,1415,3,33),(9468,1416,1,21),(9469,1416,3,34),(9470,1420,1,6),(9471,1420,3,19),(9472,1421,1,7),(9473,1421,3,20),(9474,1422,1,8),(9475,1422,3,21),(9476,1428,1,10),(9477,1428,3,23),(9478,1430,1,4),(9479,1430,3,14),(9480,1485,133,15),(9481,1485,122,18),(9482,1485,120,30),(9483,1485,137,30),(9484,1485,136,34),(9485,1485,15,15),(9486,1485,3,16),(9487,1485,132,8),(9488,1485,7,41),(9489,1485,121,10),(9490,1485,118,17),(9491,1485,135,18),(9492,1486,133,16),(9493,1486,122,19),(9494,1486,120,31),(9495,1486,137,31),(9496,1486,136,35),(9497,1486,15,16),(9498,1486,3,17),(9499,1486,132,9),(9500,1486,7,42),(9501,1486,121,11),(9502,1486,118,18),(9503,1486,135,19),(9504,1508,133,17),(9505,1508,122,20),(9506,1508,120,32),(9507,1508,137,32),(9508,1508,136,36),(9509,1508,15,40),(9510,1508,3,41),(9511,1508,132,39),(9512,1508,7,70),(9513,1508,121,42),(9514,1508,118,50),(9515,1508,135,51),(9516,1509,133,18),(9517,1509,122,21),(9518,1509,120,33),(9519,1509,137,33),(9520,1509,136,37),(9521,1509,15,41),(9522,1509,3,42),(9523,1509,132,40),(9524,1509,7,71),(9525,1509,121,43),(9526,1509,118,51),(9527,1509,135,52),(9528,1520,120,34),(9529,1520,15,45),(9530,1520,3,46),(9531,1520,118,52),(9532,1520,7,75),(9533,1353,144,22),(9534,1353,139,22),(9535,1353,131,27),(9536,1353,119,27),(9537,1353,125,30),(9538,1353,137,34),(9539,1353,120,35),(9540,1353,142,36),(9541,1353,136,38),(9542,1353,128,57),(9543,1353,129,59),(9544,1353,15,8),(9545,1353,3,9),(9546,1353,143,6),(9547,1353,7,9),(9548,1353,138,8),(9549,1353,130,9),(9550,1353,118,10),(9551,1353,124,12),(9552,1353,135,12),(9553,1353,141,15),(9554,1353,127,16),(9555,1359,144,23),(9556,1359,139,23),(9557,1359,131,28),(9558,1359,119,28),(9559,1359,125,31),(9560,1359,137,35),(9561,1359,120,36),(9562,1359,142,37),(9563,1359,136,39),(9564,1359,128,58),(9565,1359,129,60),(9566,1359,15,10),(9567,1359,3,11),(9568,1359,143,8),(9569,1359,7,11),(9570,1359,138,10),(9571,1359,130,11),(9572,1359,118,12),(9573,1359,124,17),(9574,1359,135,15),(9575,1359,141,17),(9576,1359,127,18),(9577,1451,144,24),(9578,1451,139,24),(9579,1451,131,29),(9580,1451,119,29),(9581,1451,125,32),(9582,1451,137,36),(9583,1451,120,37),(9584,1451,142,38),(9585,1451,136,40),(9586,1451,128,59),(9587,1451,129,61),(9588,1451,15,11),(9589,1451,3,12),(9590,1451,143,9),(9591,1451,7,19),(9592,1451,138,11),(9593,1451,130,12),(9594,1451,118,13),(9595,1451,124,21),(9596,1451,135,16),(9597,1451,141,18),(9598,1451,127,19),(9599,1364,142,39),(9600,1364,15,6),(9601,1364,3,7),(9602,1364,141,4),(9603,1364,7,7),(9604,1365,142,40),(9605,1365,15,7),(9606,1365,3,8),(9607,1365,141,5),(9608,1365,7,8),(9609,1429,15,17),(9610,1429,3,18),(9611,1434,125,33),(9612,1434,124,16),(9613,1434,7,34),(9614,1447,125,34),(9615,1447,124,28),(9616,1447,7,47),(9617,1448,125,35),(9618,1448,124,29),(9619,1448,7,48),(9620,1521,122,22),(9621,1521,119,30),(9622,1521,136,41),(9623,1521,121,40),(9624,1521,7,62),(9625,1521,118,46),(9626,1521,135,47),(9627,1518,122,23),(9628,1518,119,31),(9629,1518,136,42),(9630,1518,121,32),(9631,1518,7,59),(9632,1518,118,43),(9633,1518,135,44),(9634,1355,144,25),(9635,1355,139,25),(9636,1355,131,30),(9637,1355,119,32),(9638,1355,137,37),(9639,1355,125,36),(9640,1355,120,38),(9641,1355,136,43),(9642,1355,142,41),(9643,1355,128,60),(9644,1355,129,62),(9645,1355,143,2),(9646,1355,7,3),(9647,1355,138,4),(9648,1355,130,5),(9649,1355,118,6),(9650,1355,135,7),(9651,1355,124,8),(9652,1355,141,9),(9653,1355,127,10),(9654,1433,125,37),(9655,1433,124,11),(9656,1433,7,13),(9657,1484,133,19),(9658,1484,122,24),(9659,1484,137,38),(9660,1484,120,39),(9661,1484,136,44),(9662,1484,132,10),(9663,1484,7,12),(9664,1484,121,12),(9665,1484,135,14),(9666,1484,118,15),(9667,1493,134,1),(9668,1493,133,20),(9669,1493,132,12),(9670,1493,7,14),(9671,1350,144,26),(9672,1350,139,26),(9673,1350,131,31),(9674,1350,119,33),(9675,1350,137,39),(9676,1350,125,38),(9677,1350,120,40),(9678,1350,142,42),(9679,1350,136,45),(9680,1350,128,61),(9681,1350,129,63),(9682,1350,143,1),(9683,1350,7,2),(9684,1350,138,3),(9685,1350,130,4),(9686,1350,118,5),(9687,1350,135,6),(9688,1350,124,7),(9689,1350,141,8),(9690,1350,127,9),(9691,1438,125,39),(9692,1438,124,20),(9693,1438,7,33),(9694,1510,133,21),(9695,1510,122,25),(9696,1510,137,40),(9697,1510,120,41),(9698,1510,136,46),(9699,1510,132,36),(9700,1510,7,53),(9701,1510,121,34),(9702,1510,135,41),(9703,1510,118,42),(9704,1431,125,40),(9705,1431,124,14),(9706,1431,7,17),(9707,1432,125,41),(9708,1432,124,15),(9709,1432,7,18),(9710,1443,125,42),(9711,1443,124,18),(9712,1443,7,21),(9713,1444,125,43),(9714,1444,124,19),(9715,1444,7,22),(9716,1463,142,43),(9717,1463,141,20),(9718,1463,7,23),(9719,1464,142,44),(9720,1464,141,21),(9721,1464,7,24),(9722,1465,142,45),(9723,1465,141,22),(9724,1465,7,25),(9725,1470,142,46),(9726,1470,141,23),(9727,1470,7,26),(9728,1471,142,47),(9729,1471,141,24),(9730,1471,7,27),(9731,1473,142,48),(9732,1473,141,25),(9733,1473,7,28),(9734,1476,142,49),(9735,1476,141,26),(9736,1476,7,29),(9737,1477,142,50),(9738,1477,141,27),(9739,1477,7,30),(9740,1480,133,22),(9741,1480,137,41),(9742,1480,120,42),(9743,1480,132,28),(9744,1480,7,31),(9745,1480,135,30),(9746,1480,118,31),(9747,1492,133,23),(9748,1492,137,42),(9749,1492,120,43),(9750,1492,132,29),(9751,1492,7,32),(9752,1492,135,31),(9753,1492,118,32),(9754,1512,133,24),(9755,1512,122,26),(9756,1512,137,43),(9757,1512,120,44),(9758,1512,136,47),(9759,1512,132,33),(9760,1512,7,36),(9761,1512,121,35),(9762,1512,135,36),(9763,1512,118,37),(9764,1513,133,25),(9765,1513,122,27),(9766,1513,137,44),(9767,1513,120,45),(9768,1513,136,48),(9769,1513,132,34),(9770,1513,7,37),(9771,1513,121,38),(9772,1513,135,37),(9773,1513,118,40),(9774,1523,122,28),(9775,1523,119,34),(9776,1523,136,49),(9777,1523,121,36),(9778,1523,7,39),(9779,1523,118,38),(9780,1523,135,39),(9781,1524,122,29),(9782,1524,119,35),(9783,1524,136,50),(9784,1524,121,37),(9785,1524,7,40),(9786,1524,118,39),(9787,1524,135,40),(9788,1565,34,0),(9789,1565,15,4),(9790,1565,3,5),(9791,1566,34,1),(9792,1566,15,3),(9793,1566,3,4),(9794,1567,34,2),(9795,1567,15,2),(9796,1567,3,3),(9797,1568,34,3),(9798,1568,15,1),(9799,1568,3,2),(9800,1537,128,62),(9801,1537,129,64),(9802,1537,127,14),(9803,1537,7,15),(9804,1538,128,63),(9805,1538,129,65),(9806,1538,127,15),(9807,1538,7,16),(9808,1559,145,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=1569 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_translation`
--

LOCK TABLES `sylius_product_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_translation` (`id`, `translatable_id`, `name`, `slug`, `description`, `meta_keywords`, `meta_description`, `short_description`, `locale`) VALUES (1334,1334,'Câble USB-C vers Micro-USB 30cm','cable-usb-c-vers-micro-usb-30-cm-000051446ab','Le câble USB haut de gamme (USB-C sur micro-USB) a été spécialement conçu pour connecter un smartphone ou d\'autres appareils mobiles au système d\'infodivertissement de votre Volkswagen. Le câble est enveloppé d\'une gaine textile de haute qualité et dotés de connecteurs en métal chromé portant chacun le logo Volkswagen. Ce câble est idéal pour exploiter les fonctions telles que CarPlay dans AppConnect. La recharge de l\'équipement raccordé est bien sûr également disponible.Longueur[cm] : 30',NULL,NULL,NULL,'fr_FR'),(1335,1335,'Câble USB-C vers Apple Lightning 30cm','cable-usb-c-vers-apple-lightning-30-cm-000051446ac','Le câble USB haut de gamme (USB-C sur Apple Lightning) a été spécialement conçu pour connecter un smartphone ou d\'autres appareils mobiles au système d\'infodivertissement de votre Volkswagen. Le câble est enveloppé d\'une gaine textile de haute qualité et dotés de connecteurs en métal chromé portant chacun le logo Volkswagen. Ce câble est idéal pour exploiter les fonctions telles que CarPlay dans AppConnect. La recharge de l\'équipement raccordé est bien sûr également disponible.Longueur[cm] : 30',NULL,NULL,NULL,'fr_FR'),(1336,1336,'Câble USB-C vers USB-C 30cm','cable-usb-c-vers-usb-c-30-cm-000051446ad','Le câble USB haut de gamme (USB-C sur USB-C) a été spécialement conçu pour connecter un smartphone ou d\'autres appareils mobiles au système d\'infodivertissement de votre Volkswagen. Le câble est enveloppé d\'une gaine textile de haute qualité et dotés de connecteurs en métal chromé portant chacun le logo Volkswagen. Ce câble est idéal pour exploiter les fonctions telles que CarPlay dans AppConnect. La recharge de l\'équipement raccordé est bien sûr également disponible.Longueur[cm] : 30',NULL,NULL,NULL,'fr_FR'),(1337,1337,'Adaptateur USB-C vers USB-A 30 cm','adaptateur-usb-c-vers-usb-a-30-cm-000051446ae','L\'adaptateur USB-C vers USB-A haut de gamme a été spécialement conçu pour connecter un smartphone ou d\'autres appareils mobiles au système d\'infodivertissement de votre Volkswagen. Le câble est enveloppé d\'une gaine textile de haute qualité et dotés de connecteurs en métal chromé portant chacun le logo Volkswagen. Ce câble est idéal pour exploiter les fonctions telles que CarPlay dans AppConnect. La recharge de l\'équipement raccordé est bien sûr également disponible.Longueur[cm] : 30',NULL,NULL,NULL,'fr_FR'),(1338,1338,'Câble USB-A vers micro-USB 30cm','cable-usb-a-vers-micro-usb-30-cm-000051446aq','Le câble USB haut de gamme (USB-A sur micro-USB) a été spécialement conçu pour connecter un smartphone ou d\'autres appareils mobiles au système d\'infodivertissement de votre Volkswagen. Le câble est enveloppé d\'une gaine textile de haute qualité et dotés de connecteurs en métal chromé portant chacun le logo Volkswagen. Ce câble est idéal pour exploiter les fonctions telles que CarPlay dans AppConnect. La recharge de l\'équipement raccordé est bien sûr également disponible.Longueur[cm] : 30',NULL,NULL,NULL,'fr_FR'),(1339,1339,'Câble USB-A vers Apple Lightning 30cm','cable-usb-a-vers-apple-lightning-30-cm-000051446ar','Le câble USB haut de gamme (USB-A sur Apple Lightening) a été spécialement conçu pour connecter un smartphone ou d\'autres appareils mobiles au système d\'infodivertissement de votre Volkswagen. Le câble est enveloppé d\'une gaine textile de haute qualité et dotés de connecteurs en métal chromé portant chacun le logo Volkswagen. Ce câble est idéal pour exploiter les fonctions telles que CarPlay dans AppConnect. La recharge de l\'équipement raccordé est bien sûr également disponible.Longueur[cm] : 30Compatible: Tout véhicules',NULL,NULL,NULL,'fr_FR'),(1340,1340,'Câble USB-A vers USB-C 30cm','cable-usb-a-vers-usb-c-30-cm-000051446as','Le câble USB haut de gamme (USB-A sur USB-C) a été spécialement conçu pour connecter un smartphone ou d\'autres appareils mobiles au système d\'infodivertissement de votre Volkswagen. Le câble est enveloppé d\'une gaine textile de haute qualité et dotés de connecteurs en métal chromé portant chacun le logo Volkswagen. Ce câble est idéal pour exploiter les fonctions telles que CarPlay dans AppConnect. La recharge de l\'équipement raccordé est bien sûr également disponible.Compatible: Tout véhiculesLongueur[cm] : 30',NULL,NULL,NULL,'fr_FR'),(1341,1341,'Câble USB-C vers Micro-USB 70cm','cable-usb-c-vers-micro-usb-70-cm-000051446ba','Le câble USB haut de gamme (USB-C sur micro-USB) a été spécialement conçu pour connecter un smartphone ou d\'autres appareils mobiles au système d\'infodivertissement de votre Volkswagen. Le câble est enveloppé d\'une gaine textile de haute qualité et dotés de connecteurs en métal chromé portant chacun le logo Volkswagen. Ce câble est idéal pour exploiter les fonctions telles que CarPlay dans AppConnect. La recharge de l\'équipement raccordé est bien sûr également disponible.Longueur[cm] : 70',NULL,NULL,NULL,'fr_FR'),(1342,1342,'Câble USB-C vers Apple Lightning 70cm','cable-usb-c-vers-apple-lightning-70-cm-000051446bb','Le câble USB haut de gamme (USB-C sur Apple Lightning) a été spécialement conçu pour connecter un smartphone ou d\'autres appareils mobiles au système d\'infodivertissement de votre Volkswagen. Le câble est enveloppé d\'une gaine textile de haute qualité et dotés de connecteurs en métal chromé portant chacun le logo Volkswagen. Ce câble est idéal pour exploiter les fonctions telles que CarPlay dans AppConnect. La recharge de l\'équipement raccordé est bien sûr également disponible.Longueur[cm] : 70',NULL,NULL,NULL,'fr_FR'),(1343,1343,'Câble USB-C vers USB-C 70cm','cable-usb-c-vers-usb-c-70-cm-000051446bc','Le câble USB haut de gamme (USB-C sur USB-C) a été spécialement conçu pour connecter un smartphone ou d\'autres appareils mobiles au système d\'infodivertissement de votre Volkswagen. Le câble est enveloppé d\'une gaine textile de haute qualité et dotés de connecteurs en métal chromé portant chacun le logo Volkswagen. Ce câble est idéal pour exploiter les fonctions telles que CarPlay dans AppConnect. La recharge de l\'équipement raccordé est bien sûr également disponible.Longueur[cm] : 70',NULL,NULL,NULL,'fr_FR'),(1344,1344,'Adaptateur USB-C vers USB-A 70 cm','adaptateur-usb-c-vers-usb-a-70-cm-000051446bd','L\'adaptateur USB-C vers USB-A haut de gamme a été spécialement conçu pour connecter un smartphone ou d\'autres appareils mobiles au système d\'infodivertissement de votre Volkswagen. Le câble est enveloppé d\'une gaine textile de haute qualité et dotés de connecteurs en métal chromé portant chacun le logo Volkswagen. Ce câble est idéal pour exploiter les fonctions telles que CarPlay dans AppConnect. La recharge de l\'équipement raccordé est bien sûr également disponible.Longueur[cm] : 70',NULL,NULL,NULL,'fr_FR'),(1345,1345,'Câble USB-A vers Apple Lightning 70cm','cable-usb-a-vers-apple-lightning-70-cm-000051446bn','Le câble USB haut de gamme (USB-A sur Apple Lightning) a été spécialement conçu pour connecter un smartphone ou d\'autres appareils mobiles au système d\'infodivertissement de votre Volkswagen. Le câble est enveloppé d\'une gaine textile de haute qualité et dotés de connecteurs en métal chromé portant chacun le logo Volkswagen. Ce câble est idéal pour exploiter les fonctions telles que CarPlay dans AppConnect. La recharge de l\'équipement raccordé est bien sûr également disponible.Compatible: Tout véhiculesLongueur[cm] : 70',NULL,NULL,NULL,'fr_FR'),(1346,1346,'Câble USB-A vers USB-C 70cm','cable-usb-a-vers-usb-c-70-cm-000051446bp','Rechargez votre smartphone et profitez pleinement d\'AppConnect grâce à ce câble USB-C 70cm et très élégant avec ses connecteurs en métal chromés estampillés VolkswagenLongueur[cm] : 70Couleur : noir/argent',NULL,NULL,NULL,'fr_FR'),(1347,1347,'Glacière 25L sur prise 12V','glaciere-25-l-sur-prise-12-v-000065400f','La glacière chauffante vous permet de boire des boissons fraiches mais également de déguster des plats chauds.Dotée d\'une capacité généreuse de 25L, elle garantit toujours la bonne température en se branchant sur une prise 12V volts en voiture ou 230 volts à la maison.Au design exclusif Volkswagen et avec un couvercle isolant elle sera un compagnon appréciable dans toutes les situations.Volume [L]: 24Raccordement électrique 12/230VCouleur : NoirMode de fixation: Fixation à 3 pointsPoids [Kg] : 6Couleur : noirCompatible: Tout véhiculesVéhicule doit être équipé d\'une prise 12V',NULL,NULL,NULL,'fr_FR'),(1348,1348,'Porte-vélos sur attelage 2 vélos avec grand angle de rabattement','porte-velos-sur-attelage-2-velos-avec-grand-angle-de-rabattement-000071105g','Ce porte-vélos pour attelage est idéal pour un transport facile et pratique de 2 vélos.Le très grand angle de rabattement permet d\'accéder aisément au coffre même avec les vélos fixés.De plus les rails espacés permettent de transporter les vélos les plus encombrants comme les versions électriques.Disposant de sécurités anti-vol, ce porte vélos est particulièrement pratique et innovant.Pour transporter 2 bicyclettesCharge : 60 kg maxPoids : 14 kgDistance entre les rails : 22 cmEmpattement vélo : 125 cm maxCouleur : argent / noirPour dispositif d\'attelage avec boule de 50 mmVéhicules compatibles : - Caddy et Caddy Maxi depuis 2015, Caddy et Maxi Van depuis 2015- Transporter Van, Transporter Vitré, Caravelle , Multivan et California de 2015 à 2019- Transporter 6,1 Van, Transporter 6,1 Vitré, Caravelle 6,1 , Multivan 6,1 et California 6,1 à partir de 2019- Crafter depuis 2017- e-Crafter depuis 2019- Amarok de 2016 à 2020',NULL,NULL,NULL,'fr_FR'),(1349,1349,'Porte-vélos sur attelage - 2 vélos','porte-velos-sur-attelage-2-velos-000071105j','Transportez 2 vélos (jusqu\'à 60kg) grâce à un porte-vélos sur attelage ; optimal pour les vélos électriques ; extension possible pour un 3ème vélo.Poids : 15 kg.Charge admissible : 60 kg MAX.Nécessite un attelage.Compatibilité :-Polo depuis 2017 - Golf de 2013-2017 - Golf depuis 2017- Golf SW de 2014 à 2017 - Golf SW depuis 2017- Golf Sportsvan de 2014 à 2018 - Golf Sportsvan depuis 2018- Passat Berline depuis 2015- Passat SW depuis 2015- Arteon depuis 2017.- Touran depuis 2015 - Sharan depuis 2015- T-Roc depuis 2017 - Tiguan depuis 2016 - Tiguan Allspace depuis 2017 .- Touareg depuis 2011 - Touareg depuis 2018',NULL,NULL,NULL,'fr_FR'),(1350,1350,'Porte-planche de surf','porte-planche-de-surf-000071120ha','Porte-planche de surf',NULL,NULL,NULL,'fr_FR'),(1351,1351,'Porte-vélos pour barres de toit','porte-velos-pour-barres-de-toit-000071128f','Le porte-vélos pour barres de toit est pratique, grâce à son design unique, il est très simple d\'y installer et d\'y fixer un vélo.Il se monte facilement sans outils et permet de fixer en toute sécurité un vélo.Crash testé, il répond aux exigences les plus strictes en termes de sécurité.Charge admissible : 20 kgPoids : 4,2 kgCouleur : noirNécessite des barres de toitCompatible : Tout véhiculesNécessite l\'utilisation de barres de toit',NULL,NULL,NULL,'fr_FR'),(1352,1352,'Coffre de toit noir brillant 340L','coffre-de-toit-noir-brillant-340-l-000071200ad','Le coffre de toit 340L a un design spécifique à l\'aérodynamique optimisée qui réduit les bruits désagréables liés au vent, bien fini avec un aspect moderne.Il se monte facilement grâce à un système de fixation rapide préinstallé et permet, grâce à un système innovant, d\'être ouvert des 2 côtés pour plus de praticité.Un système composé de 3 sangles permet au chargement de ne pas bouger dans le coffre.Capacité de charge : 75 kgPoids : 19 kgVolume : 340 LDimensions : Longueur extérieure 1900 mm / Largeur extérieure 750 mm / Hauteur 390 mmCouleur : noirVéhicules compatibles : Tout véhiculesNécessite des barres de toit',NULL,NULL,NULL,'fr_FR'),(1353,1353,'Coffre de toit noir brillant 460L','coffre-de-toit-noir-brillant-460-l-000071200ae','Le coffre de toit 460L a un design spécifique à l\'aérodynamique optimisée qui réduit les bruits désagréables liés au vent, bien fini avec un aspect moderne.Il se monte facilement grâce à un système de fixation rapide préinstallé et permet, grâce à un système innovant, d\'être ouvert des 2 côtés pour plus de praticité.Un système composé de 3 sangles permet au chargement de ne pas bouger dans le coffre.Il est parfaitement adapté aux sports d\'hiver car il permet d\'accueillir toutes les tailles de ski grâce à ses dimensions généreuses. Capacité de charge : 75 kgPoids : 23 kgVolume : 460 LDimensions : Longueur extérieure 2300 mm / Largeur extérieure 750 mm / Hauteur 400 mmCouleur : noirVéhicules compatibles : Tout véhiculesNécessite des barres de toit',NULL,NULL,NULL,'fr_FR'),(1354,1354,'Coffre de toit Volkswagen 300-500L Urban Loader','coffre-de-toit-volkswagen-300-500-l-urban-loader-000071200af','Augmentez sensiblement votre capactié de stockage avec un coffre de toit Volkswagen à ouverture pratique des 2 côtés et disposant d\'un volume de chargement extensible de 300 à 500 litres.Poids : 15 kg Volume : 300-500 LCapacité charge : 50 kgLongueur extérieure : 1,4 m Largeur extérieure : 0,89 mHauteur : 0,26 - 0,52 mCompatible : - UP! depuis 2012- POLO depuis 2017- GOLF de 2013 à 2017 - GOLF depuis 2017- GOLF SW de 2014 à 2017- GOLF SW depuis 2017- GOLF SPORTSVAN de 2014 à 2018 - GOLF SPORTSVAN depuis 2018- PASSAT BERLINE depuis 2015- PASSAT SW depuis 2015 - ARTEON depuis 2017- TOURAN depuis 2015 - SHARAN depuis 2015- T-ROC depuis 2017- TIGUAN depuis 2016 - TIGUAN ALLSPACE depuis 2017 - TOUAREG depuis 2011- TOUAREG depuis 2018- T-Cross depuis 2019Ce produit nécessite l\'utilisation de barres de toit.',NULL,NULL,NULL,'fr_FR'),(1355,1355,'Pack sécurité Light Volkswagen','pack-securite-light-volkswagen-000093059b','Pack sécurité Light Volkswagen',NULL,NULL,NULL,'fr_FR'),(1356,1356,'Kit de nettoyage Eponges','kit-de-nettoyage-eponges-000096166a','Kit de nettoyage Eponges',NULL,NULL,NULL,'fr_FR'),(1357,1357,'Gel nettoyant pour jantes 500 ml','gel-nettoyant-pour-jantes-500-ml-000096304j','Gel nettoyant pour jantes 500 ml',NULL,NULL,NULL,'fr_FR'),(1358,1358,'Nettoyant pour vitres, liquide 3000 ml','nettoyant-pour-vitres-liquide-3000-ml-000096311l','Nettoyant pour vitres, liquide 3000 ml',NULL,NULL,NULL,'fr_FR'),(1359,1359,'Support pour canoé kayak','support-pour-canoe-kayak-1k0071127a','Le support de canoé kayak permet de transporter votre kayak jusqu\'à 25 kg en toute sécurité sans qu\'il ne bouge grâce à vos barres de toit.Charge admissible : 25 kg maxPoids : 1,6 kgCouleur : argent / noirVéhicules compatibles : tout véhicules (sauf ID.3)Nécessite des barres de toit.',NULL,NULL,NULL,'fr_FR'),(1360,1360,'T1 camper, jouet enfants bleu et blanc','t-1-camper-jouet-enfants-bleu-et-blanc-211087511a','T1 camper, jouet enfants de 36 mois et + bleu et blanc',NULL,NULL,NULL,'fr_FR'),(1361,1361,'Trousse de toilette T1, vert/blanc','trousse-de-toilette-t-1-vertblanc-231087317','Trousse de toilette T1, vert/blanc',NULL,NULL,NULL,'fr_FR'),(1362,1362,'Kit de 4 œillets d\'ancrage amovibles','kit-de-4-illets-dancrage-amovibles-2e0017242','Kit de 4 œillets d\'ancrage amoviblesAvec le système de sécurisation du chargement Volkswagen, vous êtes sûr de transporter tout votre chargement en sécurité. Les œillets d\'ancrage amovibles facilitent la fixation du chargement aux rails d\'arrimage. Livré sans sangle et sans point d\'arrimage individuel.Charge [kg] : 400.Poids [kg] : 0,27.Compatibilité : - Crafter depuis 2017- E-Crafter depuis 2019- Transporter Van de 2015 à 2019- Transporter Van 6.1 depuis 2019Uniquement pour les Crafter équipés de rails d\'arrimage (YDA ou YDH)Uniquement pour les Transporter Van et Transporter 6.1 Van équipé de rails d\'arrimage [ZZ0 ou 6L6]',NULL,NULL,NULL,'fr_FR'),(1363,1363,'Sangle avec points d\'ancrage intégrés','sangle-avec-points-dancrage-integres-2e0017244a','Sangle avec points d\'ancrage intégrésLa sangle avec tendeur à cliquet et points d’ancrage intégrés vous permet de fixer solidement et en toute sécurité le chargement aux rails d’arrimage.Longueur [mm] : 3500.Compatibilité : - Crafter depuis 2016- E-Crafter depuis 2019- Transporter Van de 2015 à 2019- Transporter Van 6.1 depuis 2019Uniquement pour les Crafter équipés de rails d\'arrimage (YDA ou YDH)Uniquement pour les Transporter Van et Transporter 6.1 Van équipé de rails d\'arrimage [ZZ0 ou 6L6]',NULL,NULL,NULL,'fr_FR'),(1364,1364,'Barres de toit pour Crafter avec rails x3','barres-de-toit-pour-crafter-avec-rails-x-3-2e0071126a','Les barres de toit vous permettent de transporter facilement tous types d\'objets. Elles sont crash-testées et ont été développées exclusivement pour votre Crafter.1 set de 3 piècesCharge : 150 kg maxCouleur : argentCompatible : - Crafter depuis 2017- e-Crafter depuis 2019Seulement pour véhicules avec rails de toit',NULL,NULL,NULL,'fr_FR'),(1365,1365,'Barres de toit pour Crafter avec rails x1','barres-de-toit-pour-crafter-avec-rails-x-1-2e0071126b','Les barres de toit vous permettent de transporter facilement tous types d\'objets. Elles sont crash-testées et ont été développées exclusivement pour votre Crafter.1 set de 1 pièceCharge : 150 kg maxCouleur : argentCompatible : - Crafter depuis 2017- e-Crafter depuis 2019Seulement pour véhicules avec rails de toit',NULL,NULL,NULL,'fr_FR'),(1366,1366,'Jeu de 2 tapis textile noir, arrière Amarok','jeu-de-2-tapis-textile-noir-arriere-amarok-2h0061276-wgk','Les tapis textiles sont design et protègent efficacement de tous types de salissures.Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre Amarok.Domaine d\'application 1re rangée de siègesLot de 2Type de tapis : arrièreRevêtement du dessous Tuft antidérapantDessus : velours TFG en 800 g/m²Matière : textileCouleur : noir satinCouleur de l\'insert : noir satinéCompatible : - Amarok de 2009 à 2016- Amarok depuis 2016 à 2020',NULL,NULL,NULL,'fr_FR'),(1367,1367,'Jeu de 2 Tapis caoutchouc « Premium » arrière Amarok','jeu-de-2-tapis-caoutchouc-premium-arriere-amarok-2h0061512-82v','Les tapis caoutchouc sont très résistants et protègent efficacement de tous types de salissures.Ils ont été développés spécifiquement pour votre Amarok.Lot de 2Type de tapis : arrièreMatière : caoutchoucCouleur : noirCompatible : - Amarok de 2009 à 2016- Amarok depuis 2016 à 2020',NULL,NULL,NULL,'fr_FR'),(1368,1368,'Arceau double tube Stylingbar, inox Amarok','arceau-double-tube-stylingbar-inox-amarok-2h0071000c-72a','L\'arceau double tube de 76mm en acier est particulièrement résistant et au design soigné.Il vous permet de personnaliser votre Amarok tout en conservant toute la capacité de chargement de la benne en se fixant sur les bords de cette dernière.Matière : acier inoxydableCouleur : argentDimension : 76 mmCompatible : - Amarok de 2009 à 2016- Amarok depuis 2016 à 2020',NULL,NULL,NULL,'fr_FR'),(1369,1369,'Arceau double tube Stylingbar, noir Amarok','arceau-double-tube-stylingbar-noir-amarok-2h0071000e-np1','L\'arceau double tube de 76mm en acier est particulièrement résistant et au design soigné.Il vous permet de personnaliser votre Amarok tout en conservant toute la capacité de chargement de la benne en se fixant sur les bords de cette dernière.Matière : acierCouleur : noirDimension : 76 mmCompatible : - Amarok de 2009 à 2016- Amarok depuis 2016 à 2020',NULL,NULL,NULL,'fr_FR'),(1370,1370,'Jante alliage 16“ Corvara argent brillant Amarok','jante-alliage-16-corvara-argent-brillant-amarok-2h0071496b-8z8','La jante en alliage 16“ Corvara argent brillant a été conçue exclusivement pour votre Amarok.Résistante et de haute qualité elle lui confère un design exclusif.Crash testée selon les critères les plus stricts du Groupe Volkswagen, elle est l\'assurance d\'une sécurité et d\'une résistance accrue.Charge admissible par essieu : 1860 kg maxNom de la jante : CorvaraMatière : alliage légerCouleur : argent brillantDimensions :Taille de la jante : 6,5J x 16Cercle de trous / Nombre de trous : 120 mm/5Déport de roue : 62 mmTaille du pneu : 245/70 R 16 111T XLCompatible : - Amarok de 2009 à 2016- Amarok depuis 2016 à 2020',NULL,NULL,NULL,'fr_FR'),(1371,1371,'Jante aluminium 19“ Aragonit noir Amarok','jante-aluminium-19-aragonit-noir-amarok-2h0071499-ax1','La jante en aluminium 19“ Aragonit noire a été conçue exclusivement pour votre Amarok.Résistante et de haute qualité elle lui confère un design exclusif.Crash testée selon les critères les plus stricts du Groupe Volkswagen, elle est l\'assurance d\'une sécurité et d\'une résistance accrue.Nom de la jante : AragonitCouleur : NoirTaille de la jante : X819Cercle de trous [mm]/ Nombre de trous : 120/5Déport de roue [mm] : 43Charge max. admissible par essieu : (kg) 1930Couple de serrage boulons de roue [Nm] : 180Taille du pneu : 255/55 R 19 111H XLLivraison Roue: y compris bonnet de moyeuVéhicules compatibles :- Amarok de 2009 à 2016- Amarok depuis 2016 à 2020',NULL,NULL,NULL,'fr_FR'),(1372,1372,'Marchepied plats en aluminium Amarok','marchepied-plats-en-aluminium-amarok-2h0071691b','Les marchepieds confèrent un look exclusif à votre Amarok.Pratiques en facilitant l\'accès au véhicule, ils peuvent supporter jusqu\'à 200kg et se montent sans perçage.Charge admissible : 200 kgMatière : profilé d\'aluminiumCouleur : argentCompatible : - Amarok de 2009 à 2016- Amarok depuis 2016 à 2020',NULL,NULL,NULL,'fr_FR'),(1373,1373,'Marchepied en acier inoxydable avec revêtement antidérapant Amarok','marchepied-en-acier-inoxydable-avec-revetement-antiderapant-amarok-2h0071691e-72a','Les marchepieds confèrent un look exclusif à votre Amarok.Pratiques grâce à une surface de marche intégrée, ils peuvent supporter jusqu\'à 200kg et se montent sans perçage. Charge admissible : 200 kgMatière : acier inoxydable (poli)Couleur : argentCompatible : - Amarok de 2009 à 2016- Amarok depuis 2016 à 2020',NULL,NULL,NULL,'fr_FR'),(1374,1374,'Marchepied noir Amarok','marchepied-noir-amarok-2h0071691l-041','Les marchepieds confèrent un look exclusif à votre Amarok.Pratiques en facilitant l\'accès au véhicule, ils peuvent supporter jusqu\'à 200kg et se montent sans perçage. Charge admissible : 200 kgMatière : acierCouleur : noirCompatible : - Amarok de 2009 à 2016- Amarok depuis 2016 à 2020',NULL,NULL,NULL,'fr_FR'),(1375,1375,'Tube de seuil en inox Amarok','tube-de-seuil-en-inox-amarok-2h0071693a','Les tubes de seuil en inox confèrent un look exclusif à votre Amarok.Pratiques en facilitant l\'accès au véhicule ils peuvent supporter jusqu\'à 200kg, se montent sans perçage. Lot de 2 piècesCharge admissible : 200 kgMatière : acier inoxydable (poli)Couleur : argentCompatible : - Amarok depuis 2009',NULL,NULL,NULL,'fr_FR'),(1376,1376,'Tubes de seuil inox avec LED Amarok','tubes-de-seuil-inox-avec-led-amarok-2h0071693c-72a','Les tubes de seuil en inox confèrent un look exclusif à votre Amarok.Pratiques en facilitant l\'accès au véhicule ils peuvent supporter jusqu\'à 200kg, se montent sans perçage et permettent de protéger le véhicule en off-road.Les leds intégrées dans les marchepieds permettent d\'éclairer l\'accès au véhicule de manière optimale et originale lors du déverrouillage de ce dernier.Lot de 2 piècesCharge admissible : 200 kgMatière : acier inoxydable (poli)Couleur : argentCompatible : - Amarok depuis 2009Nécessite le faisceau 2H6071970',NULL,NULL,NULL,'fr_FR'),(1377,1377,'Pare-boue arrière pour Amarok sans élargisseur de passage de roue','pare-boue-arriere-pour-amarok-sans-elargisseur-de-passage-de-roue-2h0075101b','Parfaitement ajustés, les pare-boues Volkswagen sont très résistants et durables.Ils protègent votre véhicule des projections et de la saleté et ont été testés dans des conditions de conduite extrêmes.Couleur : noirCompatible : - Amarok de 2009 à 2016- Amarok depuis 2016 à 2020',NULL,NULL,NULL,'fr_FR'),(1378,1378,'Pare-boue avant pour Amarok sans élargisseur de passage de roue','pare-boue-avant-pour-amarok-sans-elargisseur-de-passage-de-roue-2h0075111d','Parfaitement ajustés, les pare-boues Volkswagen sont très résistants et durables.Ils protègent votre véhicule des projections et de la saleté et ont été testés dans des conditions de conduite extrêmes. Couleur : noirCompatible : - Amarok de 2009 à 2016- Amarok depuis 2016 à 2020',NULL,NULL,NULL,'fr_FR'),(1379,1379,'Jeu de 2 tapis textile noir, avant Amarok','jeu-de-2-tapis-textile-noir-avant-amarok-2h1061270-wgk','Les tapis textiles sont design et protègent efficacement de tous types de salissures.Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre Amarok.Lot de 2Type de tapis : avant et arrièreMode de fixation : système de bouton poussoirRevêtement du dessous Tuft antidérapantDessus : velours TFG en 800 g/m²Design : avec inscriptionMatière : textileCouleur : noir satinCouleur de l\'insert : noir satinéCompatible : - Amarok de 2009 à 2016- Amarok depuis 2016 à 2020',NULL,NULL,NULL,'fr_FR'),(1380,1380,'Jeu de 4 Tapis caoutchouc « Premium » Amarok','jeu-de-4-tapis-caoutchouc-premium-amarok-2h1061500a-82v','Les tapis caoutchouc sont très résistants et protègent efficacement de tous types de salissures. Fixés au sol grâce au sytème d\'attache, ils ont été développés spécifiquement pour votre Amarok.Couleur : Noir.Type de tapis avant et arrière.Design : avec inscription.Mode de fixation: Système de bouton poussoir.Véhicules compatibles : - Amarok de 2009 à 2016- Amarok depuis 2016 à 2020',NULL,NULL,NULL,'fr_FR'),(1381,1381,'Jeu de 2 Tapis caoutchouc « Premium » avant Amarok','jeu-de-2-tapis-caoutchouc-premium-avant-amarok-2h1061502-82v','Les tapis caoutchouc sont très résistants et protègent efficacement de tous types de salissures. Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre Amarok.Couleur : NoirType de tapis : avantDesign : avec inscriptionVéhicules compatibles :- Amarok de 2009 à 2016- Amarok depuis 2016 à 2020',NULL,NULL,NULL,'fr_FR'),(1382,1382,'Cargo manager pour roll cover','cargo-manager-pour-roll-cover-2h6061166','Pratique et parfaitement adapté, le cargo manager pour le roll cover de l\'Amarok se fixe sur des roulettes dans les rails latéraux.Il se déplace facilement avec une seule main. Si des objets plus longs doivent être transportés, le cargo manager peut-être relevé.Enfin, le chargement peut également se fixer au cargo manager à l\'aide des sangles fournies afin de compartimenter la benne.Compatible : -Amarok de 2009 à 2016- Amarok depuis 2016 à 2020Uniquement en liaison avec : 2H7071774C 041 Couvre-bagages (enroulable), 2H7071774C GN6 Couvre-bagages (enroulable)',NULL,NULL,NULL,'fr_FR'),(1383,1383,'Marchepied noir avec LED Amarok','marchepied-noir-avec-led-amarok-2h6071691-041','Les marchepieds confèrent un look exclusif à votre Amarok.Pratiques grâce à une surface de marche intégrée, ils peuvent supporter jusqu\'à 200kg, se montent sans perçage et permettent de protéger le véhicule en off-road.Les leds intégrées dans les marchepieds permettent d\'éclairer l\'accès au véhicule de manière optimale et originale lors du déverrouillage de ce dernier.Charge admissible : 200 kgMatière : acierCouleur : noirCompatible :- Amarok de 2009 à 2016- Amarok depuis 2016 à 2020Restrictions : Nécessite le faisceau 2H6071970.',NULL,NULL,NULL,'fr_FR'),(1384,1384,'Marchepied en acier inoxydable brillant avec LED Amarok','marchepied-en-acier-inoxydable-brillant-avec-led-amarok-2h6071691a-72a','Les marchepieds confèrent un look exclusif à votre Amarok.Pratiques grâce à une surface de marche intégrée ils peuvent supporter jusqu\'à 200kg, se montent sans perçage et permettent de protéger le véhicule en off-road.Les leds intégrées dans les marchepieds permettent d\'éclairer l\'accès au véhicule de manière optimale et originale lors du déverrouillage de ce dernier.Charge admissible : 200 kgMatière : acier inoxydable (poli)Couleur : argentCompatible : - Amarok de 2009 à 2016- Amarok depuis 2016 à 2020Nécessite le faisceau 2H6071970',NULL,NULL,NULL,'fr_FR'),(1385,1385,'Bac de benne Amarok','bac-de-benne-amarok-2h7061162d','Le bac de benne sans rebords est l\'indispensable de l\'Amarok.Robuste en plastique renforcé il protège efficacement la benne et le hayon de toutes détériorations éventuelles et s\'adapte parfaitement à la forme de la benne.Matière : plastiqueCouleur : noirCompatible : - Amarok de 2009 à 2016- Amarok depuis 2016 à 2020Incompatible avec l‘option usine YHC Roll Cover',NULL,NULL,NULL,'fr_FR'),(1386,1386,'Jeu de 2 tapis textile « premium » noir, avant Amarok','jeu-de-2-tapis-textile-premium-noir-avant-amarok-2h7061275--wgk','Les tapis textiles sont design et protègent efficacement de tous types de salissures.Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre Amarok.Lot de 2Type de tapis : avantMode de fixation : système de bouton poussoirRevêtement du dessous Tuft antidérapantDessus : velours TFG en 800 g/m²Design : avec inscriptionMatière : textileCouleur : noir satinéCompatible : - Amarok de 2009 à 2016- Amarok depuis 2016 à 2020',NULL,NULL,NULL,'fr_FR'),(1387,1387,'Roll Cover (couvre benne enroulable en aluminium) recouvert de vinyl argen','roll-cover-couvre-benne-enroulable-en-aluminium-recouvert-de-vinyl-argen-2h7071774c-041','Le roll Cover (couvre benne enroulable en aluminium) recouvert de vinyle noir est un incontournable de l\'Amarok.Pratique et robuste il est verrouillable et résiste aux intempéries.L\'ouverture du rideau progressive permet le transport d\'objets de grande taille en toute simplicité. Poids : 43 kgCaractéristiques techniques : verrouillableMatière : aluminium / vinyleCouleur : argentCompatible : - Amarok de 2009 à 2016- Amarok depuis 2016 à 2020Nécessite un kit d‘adaptation avec arceau. Incompatible avec Sportsbar d‘Aventura',NULL,NULL,NULL,'fr_FR'),(1388,1388,'Hardtop Bleu Ravenna pour Amarok','hardtop-bleu-ravenna-pour-amarok-2h7071776h-a5w','Le hardtop d\'origine Volkswagen sera un atout de choix si vous souhaitez couvrir votre benne : au design exclusif particulièrement soigné il offre des caractéristiques remarquables : dégivrage de la vitre arrière, joint prévu pour l\'étanchéité, verrouillage centralisé avec la clé du véhicule, déverrouillage électrique des fenêtres latérales qui s\'ouvrent en papillon et éclairage intérieur. Véhicules compatibles :- Amarok de 2009 à 2016- Amarok depuis 2016 à 2020Restrictions :Attention : Incompatible avec Aventura ou arceaux2H7071776H (couleurs disponibles):-Marron Chesnut [+H8W]-Reflet d\'argent [+A7W]-Noir Intense [+C9X]-Gris Indium [+R7H]-Bleu Starlight [+T5U]',NULL,NULL,NULL,'fr_FR'),(1389,1389,'Hardtop Gris Reflex pour Amarok','hardtop-gris-reflex-pour-amarok-2h7071776h-a7w','Le hardtop d\'origine Volkswagen sera un atout de choix si vous souhaitez couvrir votre benne : au design exclusif particulièrement soigné il offre des caractéristiques remarquables : dégivrage de la vitre arrière, joint prévu pour l\'étanchéité, verrouillage centralisé avec la clé du véhicule, déverrouillage électrique des fenêtres latérales qui s\'ouvrent en papillon et éclairage intérieur. Véhicules compatibles :- Amarok de 2009 à 2016- Amarok depuis 2016 à 2020Restrictions :Attention : Incompatible avec Aventura ou arceaux2H7071776H (couleurs disponibles):-Marron Chesnut [+H8W]-Reflet d\'argent [+A7W]-Noir Intense [+C9X]-Gris Indium [+R7H]-Bleu Starlight [+T5U]',NULL,NULL,NULL,'fr_FR'),(1390,1390,'Hardtop Noir Intense pour Amarok','hardtop-noir-intense-pour-amarok-2h7071776h-c9x','Le hardtop d\'origine Volkswagen sera un atout de choix si vous souhaitez couvrir votre benne : au design exclusif particulièrement soigné il offre des caractéristiques remarquables : dégivrage de la vitre arrière, joint prévu pour l\'étanchéité, verrouillage centralisé avec la clé du véhicule, déverrouillage électrique des fenêtres latérales qui s\'ouvrent en papillon et éclairage intérieur. Véhicules compatibles :- Amarok de 2009 à 2016- Amarok depuis 2016 à 2020Restrictions :Attention : Incompatible avec Aventura ou arceaux2H7071776H (couleurs disponibles):-Marron Chesnut [+H8W]-Reflet d\'argent [+A7W]-Noir Intense [+C9X]-Gris Indium [+R7H]-Bleu Starlight [+T5U]',NULL,NULL,NULL,'fr_FR'),(1391,1391,'Hardtop Marron Chestnut pour Amarok','hardtop-marron-chestnut-pour-amarok-2h7071776h-h8w','Le hardtop d\'origine Volkswagen sera un atout de choix si vous souhaitez couvrir votre benne : au design exclusif particulièrement soigné il offre des caractéristiques remarquables : dégivrage de la vitre arrière, joint prévu pour l\'étanchéité, verrouillage centralisé avec la clé du véhicule, déverrouillage électrique des fenêtres latérales qui s\'ouvrent en papillon et éclairage intérieur. Véhicules compatibles :- Amarok de 2009 à 2016- Amarok depuis 2016 à 2020Restrictions :Attention : Incompatible avec Aventura ou arceaux2H7071776H (couleurs disponibles):-Marron Chesnut [+H8W]-Reflet d\'argent [+A7W]-Noir Intense [+C9X]-Gris Indium [+R7H]-Bleu Starlight [+T5U]',NULL,NULL,NULL,'fr_FR'),(1392,1392,'Hardtop Gris Irridium pour Amarok','hardtop-gris-irridium-pour-amarok-2h7071776h-r7h','Le hardtop d\'origine Volkswagen sera un atout de choix si vous souhaitez couvrir votre benne : au design exclusif particulièrement soigné il offre des caractéristiques remarquables : dégivrage de la vitre arrière, joint prévu pour l\'étanchéité, verrouillage centralisé avec la clé du véhicule, déverrouillage électrique des fenêtres latérales qui s\'ouvrent en papillon et éclairage intérieur. Véhicules compatibles :- Amarok de 2009 à 2016- Amarok depuis 2016 à 2020Restrictions :Attention : Incompatible avec Aventura ou arceaux2H7071776H (couleurs disponibles):-Marron Chesnut [+H8W]-Reflet d\'argent [+A7W]-Noir Intense [+C9X]-Gris Indium [+R7H]-Bleu Starlight [+T5U]',NULL,NULL,NULL,'fr_FR'),(1393,1393,'Hardtop Bleu Starlight pour Amarok','hardtop-bleu-starlight-pour-amarok-2h7071776h-t5u','Le hardtop d\'origine Volkswagen sera un atout de choix si vous souhaitez couvrir votre benne : au design exclusif particulièrement soigné il offre des caractéristiques remarquables : dégivrage de la vitre arrière, joint prévu pour l\'étanchéité, verrouillage centralisé avec la clé du véhicule, déverrouillage électrique des fenêtres latérales qui s\'ouvrent en papillon et éclairage intérieur. Véhicules compatibles :- Amarok de 2009 à 2016- Amarok depuis 2016 à 2020Restrictions :Attention : Incompatible avec Aventura ou arceaux2H7071776H (couleurs disponibles):-Marron Chesnut [+H8W]-Reflet d\'argent [+A7W]-Noir Intense [+C9X]-Gris Indium [+R7H]-Bleu Starlight [+T5U]',NULL,NULL,NULL,'fr_FR'),(1394,1394,'Hardtop Blanc Candy pour Amarok','hardtop-blanc-candy-pour-amarok-2h7071776h-wkf','Le hardtop d\'origine Volkswagen sera un atout de choix si vous souhaitez couvrir votre benne : au design exclusif particulièrement soigné il offre des caractéristiques remarquables : dégivrage de la vitre arrière, joint prévu pour l\'étanchéité, verrouillage centralisé avec la clé du véhicule, déverrouillage électrique des fenêtres latérales qui s\'ouvrent en papillon et éclairage intérieur. Véhicules compatibles :- Amarok de 2009 à 2016- Amarok depuis 2016 à 2020Restrictions :Attention : Incompatible avec Aventura ou arceaux2H7071776H (couleurs disponibles):-Marron Chesnut [+H8W]-Reflet d\'argent [+A7W]-Noir Intense [+C9X]-Gris Indium [+R7H]-Bleu Starlight [+T5U]',NULL,NULL,NULL,'fr_FR'),(1395,1395,'Couvre benne bâche et fixation','couvre-benne-bache-et-fixation-2h7071778a','Robuste et étanche, la bâche s\'attache sur un cadre aluminium situé sur le bord de l\'espace de chargement.De cette manière, votre chargement peut être transporté à l\'abri du vent et des intempéries.Deux traverses assurent une bonne stabilité. Si nécessaire, la bâche peut être enroulée et fixée par deux sangles.Compatible : - Amarok de 2009 à 2016- Amarok depuis 2016 à 2020Incompatible : Aventura équipé de Sportsbar et arceaux',NULL,NULL,NULL,'fr_FR'),(1396,1396,'Faisceau pour vhl avec prééquipement','faisceau-pour-vhl-avec-preequipement-2k0055204d','Faisceau 13 pôles pour véhicules avec prééquipement (empattement long)',NULL,NULL,NULL,'fr_FR'),(1397,1397,'Tapis de coffre souple Caddy 4','tapis-de-coffre-souple-caddy-4-2k0061160','Le tapis de coffre souple est léger et très résistant, parfaitement adapté à votre Caddy.Il permet de protéger efficacement le compartiment de chargement mais également d\'empêcher que le chargement ne glisse.Matière : polyéthylèneCouleur : anthraciteCompatible : Caddy depuis 2015Pas compatible avec Caddy Maxi',NULL,NULL,NULL,'fr_FR'),(1398,1398,'Cuve de coffre Caddy','cuve-de-coffre-caddy-2k0061162','La cuve de coffre est très résistante, parfaitement adapté à votre Caddy et avec l\'inscription Volkswagen.Elle permet de protéger efficacement le compartiment de chargement et empêche le chargement de glisser.Couleur : noirCompatible : Caddy depuis 2015Pas compatible avec Caddy Maxi',NULL,NULL,NULL,'fr_FR'),(1399,1399,'Cuve de coffre Fourgonnette','cuve-de-coffre-fourgonnette-2k0061172','Cuve de coffre Fourgonnette',NULL,NULL,NULL,'fr_FR'),(1400,1400,'Protection du seuil de coffre look inox','protection-du-seuil-de-coffre-look-inox-2k0061195','Protection du seuil de coffre Plastique, look inox',NULL,NULL,NULL,'fr_FR'),(1401,1401,'Jeu de 2 Tapis caoutchouc « Premium », arrière Caddy 4, Caddy Van 4','jeu-de-2-tapis-caoutchouc-premium-arriere-caddy-4-caddy-van-4-2k0061512-82v','Les tapis caoutchouc sont très résistants et protègent efficacement de tous types de salissures. Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre Caddy.Couleur : Noir TitaneType de tapis : arrièreVéhicules compatibles :- Caddy et Caddy Maxi depuis 2015, Caddy et Maxi Van depuis 2015',NULL,NULL,NULL,'fr_FR'),(1402,1402,'Jeu de tapis caoutchouc arrière Caddy 4/Caddy Maxi 4','jeu-de-tapis-caoutchouc-arriere-caddy-4-caddy-maxi-4-2k006151282v','Parfaitement ajustés, les pare-boue Volkswagen sont très résitants et durables, ils protègent votre véhicule des projections et de la saleté et ont été testés dans des conditions de conduite extrêmes. <br>Restrictions : Uniquement pour Châssis détaré (roues jumelées).',NULL,NULL,NULL,'fr_FR'),(1403,1403,'Barres de toit pour Caddy 4 sans rails','barres-de-toit-pour-caddy-4-sans-rails-2k0071126','Les barres de toit vous permettent de transporter facilement tous types d\'objets. Elles sont crash-testées et ont été développées exclusivement pour votre Caddy.1 set de 2 piècesCharge : 94 kg maxCouleur : argentCompatible :- Caddy et Caddy Maxi depuis 2015, Caddy et Maxi Van depuis 2015Seulement pour véhicules sans rails de toit',NULL,NULL,NULL,'fr_FR'),(1404,1404,'Déflecteur de portière gris Caddy 4, Caddy Maxi 4','deflecteur-de-portiere-gris-caddy-4-caddy-maxi-4-2k0072193b','Les déflecteurs Volkswagen ont été développés exclusivement pour votre Caddy.Ils s\'adaptent donc parfaitement au véhicule et permettent ainsi une aération agréable et optimale de l\'habitacle pour un confort de conduite accru.Ainsi, ils permettent de profiter de l\'air frais dans toutes les conditions, qu\'il pleuve ou qu\'il neige et permettent l\'évacuation de la chaleur quand il fait trop chaud.Lot de 2 pièces : portes avant droite/gauche.Matière : verre acrylique (teinté)Couleur : gris fuméeCompatible : - Caddy et Caddy Maxi depuis 2015, Caddy Van et Maxi Van depuis 2015',NULL,NULL,NULL,'fr_FR'),(1405,1405,'Attelage Fixe (sauf 4MOTION)','attelage-fixe-sauf-4-motion-2k0092101c','Dispositif d\'attelage Fixe (sauf 4MOTION)',NULL,NULL,NULL,'fr_FR'),(1406,1406,'Attelage Fixe (pour 4MOTION)','attelage-fixe-pour-4-motion-2k0092101d','Dispositif d\'attelage Fixe (pour 4MOTION)',NULL,NULL,NULL,'fr_FR'),(1407,1407,'Attelage amovible (sauf 4MOTION)','attelage-amovible-sauf-4-motion-2k0092155c','Dispositif d\'attelage amovible (sauf 4MOTION)',NULL,NULL,NULL,'fr_FR'),(1408,1408,'Tapis caoutchouc conducteur à bords relevés Caddy 4, Caddy Maxi 4','tapis-caoutchouc-conducteur-a-bords-releves-caddy-4-caddy-maxi-4-2k1061161-71n','Les tapis caoutchouc sont très résistants et protègent efficacement de tous types de salissures.Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre Caddy.Lot de 1 : avant Matière : caoutchoucCouleur : noirCompatible : - Caddy et Caddy Maxi depuis 2015, Caddy et Maxi Van depuis 2015',NULL,NULL,NULL,'fr_FR'),(1409,1409,'Tapis de sol avant en textile (2 tapis)','tapis-de-sol-avant-en-textile-2-tapis-2k1061270--wgk','Tapis de sol avant en textile (2 tapis)',NULL,NULL,NULL,'fr_FR'),(1410,1410,'Jeu de 4 tapis textile « premium » noir, avant et arrière Caddy 4, Maxi Ca','jeu-de-4-tapis-textile-premium-noir-avant-et-arriere-caddy-4-maxi-ca-2k1061270-wgk','Les tapis textiles sont design et protègent efficacement de tous types de salissures.<br/><br/>Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre Caddy.<br/><br/><br/><br/>Lot de 4<br/><br/>Type de tapis : avant et arrière<br/><br/>Mode de fixation : système de bouton poussoir<br/><br/>Revêtement du dessous revêtement antidérapant<br/><br/>Dessus : Velours TFG en 800 g/m²<br/><br/>Design : avec inscription<br/><br/>Matière : textile<br/><br/>Couleur : noir<br/><br/>Couleur de l\'insert : noir<br/><br/><br/><br/>Compatible : <br/><br/>- Caddy et Caddy Maxi depuis 2015, Caddy et Maxi Van depuis 2015',NULL,NULL,NULL,'fr_FR'),(1411,1411,'Jeu de 2 tapis textile « premium » noir, avant Caddy 4, Caddy Maxi 4','jeu-de-2-tapis-textile-premium-noir-avant-caddy-4-caddy-maxi-4-2k1061275pbryj','Les tapis textiles sont design et protègent efficacement de tous types de salissures.Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre Caddy.Lot de 2Type de tapis : avantMode de fixation : système de bouton poussoirRevêtement du dessous non tisséPES mailles cousuesDessus : Velours TFG en 800 g/m²Design : avec inscriptionMatière : textileCouleur : anthraciteCouleur de l\'insert : anthraciteCompatible : - Caddy et Caddy Maxi depuis 2015, Caddy Van et Maxi Van depuis 2015',NULL,NULL,NULL,'fr_FR'),(1412,1412,'Jeu de 2 tapis textile noir, arrière, Caddy 4, Caddy Maxi 4','jeu-de-2-tapis-textile-noir-arriere-caddy-4-caddy-maxi-4-2k1061276paryj','Les tapis textiles sont design et protègent efficacement de tous types de salissures.Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre Caddy.Véhicule : direction à gaucheLot de 2Type de tapis : habitacle arrièreRevêtement du dessous revêtement antidérapantDessus : Velours TFG en 800 g/m²Matière : textileCouleur : anthraciteCouleur de l\'insert : anthraciteCompatible : - Caddy et Caddy Maxi depuis 2015, Caddy Van et Maxi Van depuis 2015',NULL,NULL,NULL,'fr_FR'),(1413,1413,'Tapis de sol textiles avant et arrière, « Plus »','tapis-de-sol-textiles-avant-et-arriere-plus-2k1061404--wgk','Tapis de sol textiles avant et arrière, « Plus »',NULL,NULL,NULL,'fr_FR'),(1414,1414,'Jeu de 4 tapis textile noir, avant et arrière Caddy 4, Maxi Caddy 4','jeu-de-4-tapis-textile-noir-avant-et-arriere-caddy-4-maxi-caddy-4-2k1061404-wgk','Les tapis textiles sont design et protègent efficacement de tous types de salissures.<br/><br/>Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre Caddy.<br/><br/><br/><br/>Lot de 4<br/><br/>Type de tapis : avant et arrière<br/><br/>Mode de fixation : système de bouton poussoir<br/><br/>Revêtement du dessous revêtement antidérapant<br/><br/><br/><br/>Matière : textile<br/><br/>Couleur : noir satin<br/><br/>Couleur de l\'insert : noir satiné<br/><br/><br/><br/>Compatible :<br/><br/>- Caddy et Caddy Maxi depuis 2015, Caddy et Maxi Van depuis 2015',NULL,NULL,NULL,'fr_FR'),(1415,1415,'Jeu de 4 Tapis caoutchouc « Premium » Caddy 4, Caddy Maxi 4','jeu-de-4-tapis-caoutchouc-premium-caddy-4-caddy-maxi-4-2k1061500b-82v','Les tapis caoutchouc sont très résistants et protègent efficacement de tous types de salissures.Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre Caddy.Lot de 4Type de tapis : avant et arrièreMode de fixation : système de bouton poussoirDesign : avec inscriptionMatière : caoutchoucCouleur : noir titaneCompatible : - Caddy et Caddy Maxi depuis 2015, Caddy Van et Maxi Van depuis 2015',NULL,NULL,NULL,'fr_FR'),(1416,1416,'Jeu de 2 Tapis caoutchouc « Premium », avant Caddy 4, Caddy Maxi 4','jeu-de-2-tapis-caoutchouc-premium-avant-caddy-4-caddy-maxi-4-2k1061502a-82v','Les tapis caoutchouc sont très résistants et protègent efficacement de tous types de salissures. Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre Caddy.Lot de 2Type de tapis : AvantDesign : Avec inscriptionCouleur : Noir titaneMode de fixation: Système de bouton poussoirCompatible : - Caddy et Caddy Maxi depuis 2015, Caddy Van et Maxi Van depuis 2015',NULL,NULL,NULL,'fr_FR'),(1417,1417,'Jeu de 4 Tapis caoutchouc « Plus » Caddy 4, Caddy Maxi 4','jeu-de-4-tapis-caoutchouc-plus-caddy-4-caddy-maxi-4-2k1061550-041','Les tapis caoutchouc sont très résistants et protègent efficacement de tous types de salissures.Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre Caddy.Lot de 4Type de tapis : avant et arrièreMode de fixation : système de bouton poussoirMatière : caoutchoucCouleur : noirCompatible :- Caddy et Caddy Maxi depuis 2015, Caddy et Maxi Van depuis 2015',NULL,NULL,NULL,'fr_FR'),(1418,1418,'Faisceau vhl sans prééquipement long','faisceau-vhl-sans-preequipement-long-2k3055204b','Faisceau 13 pôles pour véhicules sans prééquipement (empattement long)',NULL,NULL,NULL,'fr_FR'),(1419,1419,'Tapis de coffre souple Caddy Maxi 4','tapis-de-coffre-souple-caddy-maxi-4-2k3061160','Le tapis de coffre souple est léger et très résistant, parfaitement adapté à votre Caddy.Il permet de protéger efficacement le compartiment de chargement mais également d\'empêcher que le chargement ne glisse.Seulement pour Caddy Maxi depuis 2015',NULL,NULL,NULL,'fr_FR'),(1420,1420,'Tapis de coffre rigide Caddy Maxi 4','tapis-de-coffre-rigide-caddy-maxi-4-2k3061161','Avec un rebord de 4mm, le tapis de coffre rigide est très résistant, parfaitement adapté à votre Caddy il permet de protéger efficacement le compartiment de chargement contre la saleté et l\'humidité mais également d\'empecher que le chargement ne glisse.Couleur : AnthraciteHauteur du bord [mm] : 50Véhicules compatibles :- Caddy depuis 2015Restrictions : Seulement pour Caddy Maxi.',NULL,NULL,NULL,'fr_FR'),(1421,1421,'Tapis de coffre rigide Caddy Maxi 4','tapis-de-coffre-rigide-caddy-maxi-4-2k3061161a','Avec un rebord de 4mm, le tapis de coffre rigide est très résistant, parfaitement adapté à votre Caddy il permet de protéger efficacement le compartiment de chargement contre la saleté et l\'humidité mais également d’empêcher que le chargement ne glisse.Couleur : AnthraciteHauteur du bord [mm] : 40Véhicules compatibles :- Maxi Caddy depuis 2015Restrictions : Seulement pour Maxi Caddy depuis 2015',NULL,NULL,NULL,'fr_FR'),(1422,1422,'Tapis de coffre réversible Caddy Maxi','tapis-de-coffre-reversible-caddy-maxi-2k3061210','Le tapis de coffre réversible est très résistant, parfaitement adapté à votre Caddy.Il permet de protéger efficacement le compartiment de chargement avec au choix en fonction des besoins un revêtement velours ou caoutchouc.Matière :Revêtement du dessous : Nopes en plastiqueDessus : polyamideCouleur : noir satinCompatible : Caddy depuis 2015Seulement pour Caddy Maxi',NULL,NULL,NULL,'fr_FR'),(1423,1423,'Jeu de porteurs Kit de porteur carré','jeu-de-porteurs-kit-de-porteur-carre-2k3071126--041','Jeu de porteurs Kit de porteur carré',NULL,NULL,NULL,'fr_FR'),(1424,1424,'Faisceau vhl sans prééquipement court','faisceau-vhl-sans-preequipement-court-2k5055204','Faisceau 13 pôles pour véhicules sans prééquipement (empattement court)',NULL,NULL,NULL,'fr_FR'),(1425,1425,'Tapis de coffre rigide Caddy 4','tapis-de-coffre-rigide-caddy-4-2k5061161','Avec un rebord de 40 mm, le tapis de coffre rigide est très résistant, parfaitement adapté à votre Caddy.Il permet de protéger efficacement le compartiment de chargement contre la saleté et l\'humidité mais également d\'empêcher que le chargement ne glisse.Matière : polyéthylène (PE)Couleur : anthraciteDimension du rebord : 40 mmCompatible : Caddy depuis 2015Pas compatible avec Caddy Maxi',NULL,NULL,NULL,'fr_FR'),(1426,1426,'Protection pour seuil de chargement effet inox Caddy 4, Caddy Maxi 4','protection-pour-seuil-de-chargement-effet-inox-caddy-4-caddy-maxi-4-2k5061195','La protection pour seuil de chargement vous permet de personnaliser votre Caddy mais également de le protéger des rayures et des chocs lors des chargements dans le coffre.Son design exclusif et sa forme parfaitement adaptée en font un incontournable.Matière : ABS avec revêtement en PMMA, adhésifIndication de montage : se colle sur le pare-chocsCouleur : argentCompatible : - Caddy et Caddy Maxi depuis 2015, Caddy Van et Maxi Van depuis 2015Incompatible : véhicules avec protection arrière grainée',NULL,NULL,NULL,'fr_FR'),(1427,1427,'Protection du seuil de coffre','protection-du-seuil-de-coffre-2k5061197','Protection du seuil de coffre transparent',NULL,NULL,NULL,'fr_FR'),(1428,1428,'Tapis de coffre réversible Caddy 4','tapis-de-coffre-reversible-caddy-4-2k5061210','Le tapis de coffre réversible est très résistant, parfaitement adapté à votre Caddy.Il permet de protéger efficacement le compartiment de chargement avec au choix en fonction des besoins un revêtement velours ou caoutchouc.Matière :Revêtement du dessous : Nopes en plastiqueDessus : veloursCouleur : noir satinDimensions : Longueur 980 mm / Largeur 1125 mmCompatible : Caddy depuis 2015Pas compatible avec Caddy Maxi',NULL,NULL,NULL,'fr_FR'),(1429,1429,'Barres de toit pour Caddy 4 avec rails','barres-de-toit-pour-caddy-4-avec-rails-2k5071151b','Les barres de toit vous permettent de transporter facilement tous types d\'objets. Elles sont crash-testées et ont été développées exclusivement pour votre Caddy.1 set de 2 piècesCharge : 94 kg maxCouleur : argentCompatible : - Caddy et Caddy Maxi depuis 2015, Caddy et Maxi Van depuis 2015Seulement pour véhicules avec rails de toit',NULL,NULL,NULL,'fr_FR'),(1430,1430,'Pare-boue arrière pour Caddy 4, Caddy Van 4','pare-boue-arriere-pour-caddy-4-caddy-van-4-2k5075101','Parfaitement ajustés, les pare-boue Volkswagen sont très résistants et durables, ils protègent votre véhicule des projections et de la saleté et ont été testés dans des conditions de conduite extrêmes. Véhicules compatibles :- Caddy depuis 2015, Caddy Van depuis 2015Restrictions : Non compatible avec Caddy Maxi.',NULL,NULL,NULL,'fr_FR'),(1431,1431,'Faisceau 13 broches Caddy 5','faisceau-13-broches-caddy-5-2k7055202','Faisceau 13 broches Caddy 5: véhicules avec prédispostion attelage (avant semaine de production 25/2022)',NULL,NULL,NULL,'fr_FR'),(1432,1432,'Faisceau 13 broches Caddy 5','faisceau-13-broches-caddy-5-2k7055204','Faisceau 13 broches Caddy 5: véhicules sans prédispostion attelage (avant semaine de production 25/2022)',NULL,NULL,NULL,'fr_FR'),(1433,1433,'Tapis de coffre pour Caddy 5 (5 places)','tapis-de-coffre-pour-caddy-5-5-places-2k7061160','Tapis de coffre enroulable pour Caddy 5 (5 places)',NULL,NULL,NULL,'fr_FR'),(1434,1434,'Cuve de coffre Caddy 5 avec monogramme \"Caddy\" (rebord 1,5cm)','cuve-de-coffre-caddy-5-avec-monogramme-caddy-rebord-15-cm-2k7061162','Cuve de coffre Caddy 5 avec monogramme \"Caddy\" (rebord 1,5cm)',NULL,NULL,NULL,'fr_FR'),(1435,1435,'Tapis de sol tous temps avant, noir titane, Caddy 5','tapis-de-sol-tous-temps-avant-noir-titane-caddy-5-2k7061195','Grâce aux tapis tous temps d\'origine Volkswagen, vous n\'aurez plus de problèmes d\'humidité ni de saleté dans votre véhicule. Ils sont taillés au millimètre près, antidérapants et se lavent facilement. Le monogramme du modèle intégré attire particulièrement l’attention. De plus, ces tapis sont 100% recyclables, très résistants et de longue durée d\'utilisation.<br>Couleur :Noir. et Maxi 5 2019.',NULL,NULL,NULL,'fr_FR'),(1436,1436,'Seuil de coffre aspect noir grainé pour Caddy 5','seuil-de-coffre-aspect-noir-graine-pour-caddy-5-2k7061195a','La protection de seuil de coffre d’origine Volkswagen offre une protection parfaitement adaptée. D\'aspect noir grainée, cette protection de pare-chocs met en valeur le seuil de chargement et le protège contre les rayures et se monte facilement grâce à des fixation avec ruban adhésif préinstallés.Couleur : Noir Matière : Plastique Compatible: Caddy et Maxi 5 depuis 2019',NULL,NULL,NULL,'fr_FR'),(1437,1437,'Pare soleil (kit) 5 pièces, glaces des portes arrière, glaces latérales du','pare-soleil-kit-5-pieces-glaces-des-portes-arriere-glaces-laterales-du-2k7064365','Parfaitement adapté pour les vitres arrière, ce kit protège l’habitacle contre le rayonnement solaire et réduit l\'effet d’éblouissement causé par les autres usagers de la route. Il n’entrave pas la visibilité, ni ne compromet la sécurité routière. Facile à installer et à retirer, ce kit est parfaitement adapté à votre Caddy 5 et s\'utilise également fenêtres ouvertes.Couleur : Noir Matière : Tissu en polyester Incompatible avec Caddy 5 Maxi',NULL,NULL,NULL,'fr_FR'),(1438,1438,'Barres de toit vhl sans mains courantes','barres-de-toit-vhl-sans-mains-courantes-2k7071126','Barres de toit pour véhilcules sans mains courantes',NULL,NULL,NULL,'fr_FR'),(1439,1439,'Barres de toit vhl sans mains courantes','barres-de-toit-vhl-sans-mains-courantes-2k7071126b','Barres de toit pour véhilcules sans mains courantes',NULL,NULL,NULL,'fr_FR'),(1440,1440,'Bavettes pare-boue arrière d\'origine Volkswagen, Caddy 5','bavettes-pare-boue-arriere-dorigine-volkswagen-caddy-5-2k7075101','Les 2 bavettes pare-boue arrière d’origine Volkswagen pour Caddy 5 permettent de protéger les soubassements et les portes du véhicule contre les rayures et les saletés. Elles permettent de réduire les projections d\'eau et de gravillons.Couleur: Noir.Compatible: Caddy 5 depuis 2019.Non-compatible avec le Caddy Maxi 5.',NULL,NULL,NULL,'fr_FR'),(1441,1441,'Bavettes pare-boue arrière d\'origine Volkswagen, Caddy Maxi 5','bavettes-pare-boue-arriere-dorigine-volkswagen-caddy-maxi-5-2k7075101a','Les 2 bavettes pare-boue arrière d’origine Volkswagen pour Caddy Maxi 5 permettent de protéger les soubassements et les portes du véhicule contre les rayures et les saletés. Elles permettent de réduire les projections d\'eau et de gravillons.Couleur: Noir.Compatible: Caddy Maxi 5 depuis 2019.Non-compatible avec le Caddy 5.',NULL,NULL,NULL,'fr_FR'),(1442,1442,'Bavettes pare-boue avant d\'origine Volkswagen, Caddy 5','bavettes-pare-boue-avant-dorigine-volkswagen-caddy-5-2k7075111','Les 2 bavettes pare-boue avant d’origine Volkswagen pour Caddy 5 permettent de protéger les soubassements et les portes du véhicule contre les rayures et les saletés. Elles permettent de réduire les projections d\'eau et de gravillons.Couleur: Noir.Compatible: Caddy et Maxi 5 depuis 2019.',NULL,NULL,NULL,'fr_FR'),(1443,1443,'Caddy 5 - Attelage fixe (position haute)','caddy-5-attelage-fixe-position-haute-2k7092101','Caddy 5 - Dispositif d\'attelage fixe (boule position haute)',NULL,NULL,NULL,'fr_FR'),(1444,1444,'Caddy 5 - dispositif d\'attelage amovible','caddy-5-dispositif-dattelage-amovible-2k7092155','Caddy 5 - dispositif d\'attelage amovible',NULL,NULL,NULL,'fr_FR'),(1445,1445,'Protection du seuil de coffre transparente','protection-du-seuil-de-coffre-transparente-2k8061197','La protection de seuil de coffre d’origine Volkswagen offre une protection parfaitement adaptée. Transparente et discrète, cette protection protège le pare-chocs contre les rayures et se monte facilement.Compatible: Caddy et Maxi 5 depuis 2019',NULL,NULL,NULL,'fr_FR'),(1446,1446,'Tapis de sol textiles avant et arrière, noir/gris, premium pour Caddy 5','tapis-de-sol-textiles-avant-et-arriere-noirgris-premium-pour-caddy-5-2k8061270--wgk','Les tapis de sol textiles premium sont des produits haut de gamme d\'Origine Volkswagen Véhicules Utilitaires. Fabriqués avec du velours de grand qualité, ils sont robustes et résistent dans le temps. Leur utilisation est aisée grâce à leur système de fixation à 2 points et l\'antidérapant.Couleur : Noir Couleur de l\'insert : gris Type de tapis avant et arrière Design : avec inscription Revêtement du dessous revêtement antidérapant 100% recyclableDessus : Velours TFG de 700 g/m² Mode de fixation: Système de bouton poussoir \"Compatible: Caddy et Caddy Maxi 5 Cargo, Caddy et Maxi 5 depuis 2019',NULL,NULL,NULL,'fr_FR'),(1447,1447,'Tapis de sol textiles avant et arrière, « Plus », noir - Caddy 5','tapis-de-sol-textiles-avant-et-arriere-plus-noir-caddy-5-2k8061404--wgk','Tapis de sol textiles avant et arrière, « Plus », noir - Caddy 5',NULL,NULL,NULL,'fr_FR'),(1448,1448,'Tapis de sol tous temps (avant) pour Caddy 5','tapis-de-sol-tous-temps-avant-pour-caddy-5-2k8061502--82v','Tapis de sol tous temps (avant) pour Caddy 5',NULL,NULL,NULL,'fr_FR'),(1449,1449,'Tapis de sol tous temps avant, noir titane, Caddy 5','tapis-de-sol-tous-temps-avant-noir-titane-caddy-5-2k8061502-82v','Grâce aux tapis tous temps d\'origine Volkswagen, vous n\'aurez plus de problèmes d\'humidité ni de saleté dans votre véhicule. Ils sont taillés au millimètre près, antidérapants et se lavent facilement. Le monogramme du modèle intégré attire particulièrement l’attention. De plus, ces tapis sont 100% recyclables, très résistants et de longue durée d\'utilisation.<br/><br/><br/><br/>Couleur : Noir.<br/><br/>Compatible : Caddy et Maxi 5 depuis 2019.',NULL,NULL,NULL,'fr_FR'),(1450,1450,'Jeu de 2 tapis de sol tous temps (avant) pour Caddy 5','jeu-de-2-tapis-de-sol-tous-temps-avant-pour-caddy-5-2k806150282v','Les tapis textiles sont design et protègent efficacement de tous types de salissures. Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre . L\'inscription \"Bulli\" rappellent les origines du T1.',NULL,NULL,NULL,'fr_FR'),(1451,1451,'Porte-vélos sur attelage 2 vélos, rabattable et pliable','porte-velos-sur-attelage-2-velos-rabattable-et-pliable-3c0071105b','Léger, compact et entièrement pliable, le porte-vélos sur attelage vous permet de transporter aisément 2 vélos avec votre attelage.Son mécanisme de pliage permet une ouverture du coffre même avec les vélos et permet un rangement facile dans le coffre.Pour transporter 2 bicyclettesCharge : 60 kg maxPoids : 14 kgDistance entre les rails : 22 cmEmpattement vélo : 125 cm maxCouleur : argent / noirPour dispositif d\'attelage avec boule de 50 mmVéhicules compatibles : - Caddy et Caddy Maxi depuis 2015, Caddy et Maxi Van depuis 2015- Transporter Van, Transporter Vitré, Caravelle , Multivan et California de 2015 à 2019- Transporter 6,1 Van, Transporter 6,1 Vitré, Caravelle 6,1 , Multivan 6,1 et California 6,1 à partir de 2019- Crafter depuis 2017- e-Crafter depuis 2019- Amarok de 2016 à 2020',NULL,NULL,NULL,'fr_FR'),(1452,1452,'Sweat-shirt à capuche bleu foncé, T1 S','sweat-shirt-a-capuche-bleu-fonce-t-1-s-5db084130a-530','Sweat-shirt à capuche, unisexe, bleu foncé, T1 Edition S',NULL,NULL,NULL,'fr_FR'),(1453,1453,'Sweat-shirt à capuche bleu foncé, T1 M','sweat-shirt-a-capuche-bleu-fonce-t-1-m-5db084130b-530','Sweat-shirt à capuche, unisexe, bleu foncé, T1 Edition M',NULL,NULL,NULL,'fr_FR'),(1454,1454,'Sweat-shirt à capuche bleu foncé, T1 L','sweat-shirt-a-capuche-bleu-fonce-t-1-l-5db084130c-530','Sweat-shirt à capuche, unisexe, bleu foncé, T1 Edition L',NULL,NULL,NULL,'fr_FR'),(1455,1455,'Sweat-shirt à capuche bleu foncé, T1 XL','sweat-shirt-a-capuche-bleu-fonce-t-1-xl-5db084130d-530','Sweat-shirt à capuche, unisexe, bleu foncé, T1 Edition XL',NULL,NULL,NULL,'fr_FR'),(1456,1456,'Filet à bagages Filet d\'arrimage ProSafe VOLKSWAGEN','filet-a-bagages-filet-darrimage-pro-safe-volkswagen-7c0017230','Le filet d\'arrimage ProSafe peut se fixer aux points d\'arrimage d\'origine du véhicule ou à n\'importe quelle position des rails Airline intégrés dans le plancher du véhicule à l\'aide des raccords disponibles en accessoires. Poids : 3,64 kgCompatible : - Crafter depuis 2017- E-Crafter depuis 2019Il est recommandé de le commander avec la réf. 2E0017244A (Sangle avec points d\'ancrage intégrés)',NULL,NULL,NULL,'fr_FR'),(1457,1457,'Barre de verrouillage de charge VOLKSWAGEN','barre-de-verrouillage-de-charge-volkswagen-7c0017231','La barre de verrouillage KIM 44 peut s\'utiliser dans tous les fourgons de type Crafter à système de rail grâce à sa plage de réglage variants. Elle peut être mise en place verticalement ou horizontalement.Charge admissible : 250-350 kgLongueur : 1250 – 2100 mmCompatibilité : - Crafter depuis 2017- E-Crafter depuis 2019Il est recommandé d\'utiliser en plus de la barre de verrouillage des sangles et des patins antidérapants fournis dans la mallette de sécurisation du chargement ou un filet d\'arrimage.',NULL,NULL,NULL,'fr_FR'),(1458,1458,'Kit d\'arrimage du chargement Sortimo avec sac de rangement VOLKSWAGEN','kit-darrimage-du-chargement-sortimo-avec-sac-de-rangement-volkswagen-7c0017233','Le kit de sécurisation du chargement comporte un équipement de base pour l\'arrimage dans le véhicule. Il comprend deux sangles d\'arrimage à cliquet et deux sangles à blocage à griffe. Celles-ci peuvent se fixer aux points d\'arrimage d\'origine du véhicule ou, au moyen des raccords disponibles en option, à n\'importe quelle position des rails Airline intégrés dans le plancher du véhicule. En outre 4 tapis antidérapants pour palettes et 4 protèges-arête Flex sont inclus. Conseils pratiques: Sortimo inclus de nombreuses informations utiles sur l\'arrimage du chargement. Le support mural disponible peut-être commandé en association.Poids : 3,89 kgCompatible : - Crafter depuis 2017- E-Crafter depuis 2019Disponible avec la fixation sur paroi réf. 7C0017238',NULL,NULL,NULL,'fr_FR'),(1459,1459,'Attache frontale pour galerie intérieure VOLKSWAGEN','attache-frontale-pour-galerie-interieure-volkswagen-7c0017233a','Le crochet destiné aux barres de toit intérieures permet de sécuriser le chargement. Il peut être fixé aux barres de toit intérieures grâce aux différents points d\'arrimage fournis.Matière : NylonPoids : 2,0 kgCompatible : - Crafter depuis 2017- E-Crafter depuis 2019Nécessite la réf. 7C0017234 (galerie intérieure pour Crafter)',NULL,NULL,NULL,'fr_FR'),(1460,1460,'Galerie intérieure pour Crafter','galerie-interieure-pour-crafter-7c0017234','Galerie intérieure pour CrafterLes barres de toit intérieures sont constituées de 2 profilés en aluminium Airline. Deux coulisseaux déplaçables et verrouillables dans le profilé avec sangle et protection antifrottement en cuir permettent de transporter aisément et en toute sécurité des objets longs d’un poids maximal de 35 kg sous le pavillon du véhicule. Grâce à sa faible hauteur de seulement 7,5 cm, le système est très peu encombrant et ne gêne donc pas lorsqu’il n\'est pas utilisé. Il est idéal aussi dans des véhicules de faible hauteur de pavillon. De plus, il peut se démonter très facilement en desserrant les deux vis. Il est possible aussi d’utiliser le système dans les rails latéraux du véhicule.Compatibilité :- Crafter depuis 2017- E-Crafter depuis 2019Nécessite l\'achat de la référence 7C0017234 (galerie intérieure pour Crafter)',NULL,NULL,NULL,'fr_FR'),(1461,1461,'Fixation murale pour kit de sécurisation du chargement VOLKSWAGEN','fixation-murale-pour-kit-de-securisation-du-chargement-volkswagen-7c0017238','Le support mural sert à ranger le kit de sécurisation du chargement. Il peut être fixé dans le véhicule pour le transport au moyen du matériel de montage fourni.Poids : 0,50 kgCompatible : - Crafter depuis 2017- E-Crafter depuis 2019Nécessite le kit de sécurisation réf. 7C0017233',NULL,NULL,NULL,'fr_FR'),(1462,1462,'Kit de montage pour galerie intérieure','kit-de-montage-pour-galerie-interieure-7c0017737','Kit de montage pour galerie intérieureLe kit de montage pour Galerie intérieure (Crafter) permet d\'installer la galerie intérieure pour les véhicules qui ne sont pas équipés de rail d\'arrimage sur les parois ou le plafond.Poids: 2.4 Kg.Compatibilité :- Crafter depuis 2017- E-Crafter depuis 2019Nécessite l\'achat de la référence 7C0017234 (galerie intérieure pour Crafter)',NULL,NULL,NULL,'fr_FR'),(1463,1463,'Faisceau vhl sans prééquipement','faisceau-vhl-sans-preequipement-7c0055204','Faisceau 13 pôles pour véhicules sans prééquipement (Crafter L3) (avant semaine de production 30/2020)',NULL,NULL,NULL,'fr_FR'),(1464,1464,'Faisceau 13 vhl avec prééquipement','faisceau-13-vhl-avec-preequipement-7c0055204a','Faisceau 13 pôles pour véhicules avec prééquipement',NULL,NULL,NULL,'fr_FR'),(1465,1465,'Faisceau vhl sans prééquipement','faisceau-vhl-sans-preequipement-7c0055204b','Faisceau 13 pôles pour véhicules sans prééquipement (Crafter L3) (à partir de la semaine de production 30/2020)',NULL,NULL,NULL,'fr_FR'),(1466,1466,'Déflecteur de portière gris pour Crafter et Grand California','deflecteur-de-portiere-gris-pour-crafter-et-grand-california-7c0072193','Les déflecteurs Volkswagen ont été développés exclusivement pour votre Crafter.Ils s\'adaptent donc parfaitement au véhicule et permettent ainsi une aération agréable et optimale de l\'habitacle pour un confort de conduite accru.Ainsi, ils permettent de profiter de l\'air frais dans toutes les conditions, qu\'il pleuve ou qu\'il neige et permettent l\'évacuation de la chaleur quand il fait trop chaud.Lot de 2 pièces : portes avant droite/gauche.Matière : verre acrylique (teinté)Couleur : gris fuméeCompatible : - Crafter depuis 2017- e-Crafter depuis 2019- Grand California depuis 2020',NULL,NULL,NULL,'fr_FR'),(1467,1467,'Seuil de coffre inox pour Caddy 5','seuil-de-coffre-inox-pour-caddy-5-7c0075101','La protection de seuil de coffre d’origine Volkswagen offre une protection parfaitement adaptée. D\'aspect acier inoxydable raffiné, cette protection de pare-chocs met en valeur le seuil de chargement et le protège contre les rayures et se monte facilement grâce à des fixation avec ruban adhésif préinstallés.<br>Couleur :Argent Design : Acier inoxydable (look)<br> <br>Matière : Plastique',NULL,NULL,NULL,'fr_FR'),(1468,1468,'Pare-boue arrière pour Crafter Van avec roues simples','pare-boue-arriere-pour-crafter-van-avec-roues-simples-7c0075101a','Parfaitement ajustés, les pare-boue Volkswagen sont très résitants et durables, ils protègent votre véhicule des projections et de la saleté et ont été testés dans des conditions de conduite extrêmes.',NULL,NULL,NULL,'fr_FR'),(1469,1469,'Pare-boue avant pour Crafter','pare-boue-avant-pour-crafter-7c0075111','Parfaitement ajustés, les pare-boue Volkswagen sont très résitants et durables, ils protègent votre véhicule des projections et de la saleté et ont été testés dans des conditions de conduite extrêmes. Véhicules compatibles :- Crafter depuis 2017- e-Crafter depuis 2019- Grand California depuis 2020',NULL,NULL,NULL,'fr_FR'),(1470,1470,'Attelage dévissable (Van RS)','attelage-devissable-van-rs-7c0092115','Dispositif d\'attelage dévissable (pour Van roues simples)',NULL,NULL,NULL,'fr_FR'),(1471,1471,'Attelage dévissable (Van RJ)','attelage-devissable-van-rj-7c0092115a','Dispositif d\'attelage dévissable (pour Van roues jumelées)',NULL,NULL,NULL,'fr_FR'),(1472,1472,'Jeu de 3 tapis caoutchouc avant pour Crafter et Grand California','jeu-de-3-tapis-caoutchouc-avant-pour-crafter-et-grand-california-7c1061502a-82v','Les tapis caoutchouc sont très résistants et protègent efficacement de tous types de salissures. Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre Crafter.Couleur : Noir TitaneType de tapis avantMode de fixation: Système de bouton poussoirVéhicules compatibles :- Crafter depuis 2017- e-Crafter depuis 2019- Grand California depuis 2020',NULL,NULL,NULL,'fr_FR'),(1473,1473,'Faisceau vhl sans prééquipement','faisceau-vhl-sans-preequipement-7c3055204','Faisceau 13 pôles pour véhicules sans prééquipement (Crafter L4/L5) (avant semaine de production 30/2020)',NULL,NULL,NULL,'fr_FR'),(1474,1474,'Pare-boue arrière pour Crafter Châsis avec roues simples','pare-boue-arriere-pour-crafter-chasis-avec-roues-simples-7ca075101','Parfaitement ajustés, les pare-boue Volkswagen sont très résitants et durables, ils protègent votre véhicule des projections et de la saleté et ont été testés dans des conditions de conduite extrêmes. Véhicules compatibles :- Crafter depuis 2017Restrictions : Uniquement pour Crafter Châssis sauf détaré (roues jumelées).',NULL,NULL,NULL,'fr_FR'),(1475,1475,'Pare-boue arrière pour Crafter Van avec roues jumelées','pare-boue-arriere-pour-crafter-van-avec-roues-jumelees-7ca075101a','Parfaitement ajustés, les pare-boue Volkswagen sont très résistants et durables, ils protègent votre véhicule des projections et de la saleté et ont été testés dans des conditions de conduite extrêmes. <br>Restrictions : <br>Uniquement pour détaré (roues jumelées).',NULL,NULL,NULL,'fr_FR'),(1476,1476,'Attelage dévissable (Châssis RS)','attelage-devissable-chassis-rs-7ca092115','Dispositif d\'attelage dévissable (pour Châssis roues simples)',NULL,NULL,NULL,'fr_FR'),(1477,1477,'Attelage dévissable (Châssis RJ)','attelage-devissable-chassis-rj-7ca092115a','Dispositif d\'attelage dévissable (pour Châssis roues jumelées)',NULL,NULL,NULL,'fr_FR'),(1478,1478,'Licence d’activation de la commande vocale pour Composition Media','licence-dactivation-de-la-commande-vocale-pour-composition-media-7e0054802','La licence d’activation de la commande vocale pour Composition Media vous permet d\'utiliser la commande vocale pour le téléphone et l\'autoradio.Compatible : - Caddy et Caddy Maxi depuis 2015, Caddy et Maxi Van depuis 2015- Transporter Van, Transporter Vitré, Caravelle , Multivan et California de 2015 à 2019- Amarok de 2016 à 2020Sous réserve de restrictions, pour plus de détails, contactez votre réparateur agrééUniquement en liaison avec : Caméra de reculUniquement pour : Véhicules équipés en usine d\'un système de sonorisationIncompatible avec- 3G0035819- 3G0035820- 5G0035812- 5G0035819- 5G0035819A- 5G0035820- 5G0035820A',NULL,NULL,NULL,'fr_FR'),(1479,1479,'Licence d’activation de la commande vocale pour Discover Media','licence-dactivation-de-la-commande-vocale-pour-discover-media-7e0054802a','La licence d’activation de la commande vocale pour Discover Media vous permet d\'utiliser la commande vocale pour le téléphone et l\'autoradio.Compatible : - Caddy et Caddy Maxi depuis 2015, Caddy et Maxi Van depuis 2015- Transporter Van, Transporter Vitré, Caravelle , Multivan et California de 2015 à 2019- Amarok de 2016 à 2020Sous réserve de restrictions, pour plus de détails, contactez votre réparateur agrééUniquement en liaison avec : Caméra de reculUniquement pour : Véhicules équipés en usine d\'un système de sonorisation',NULL,NULL,NULL,'fr_FR'),(1480,1480,'Faisceau vhl sans prééquipement','faisceau-vhl-sans-preequipement-7e0055204b','Faisceau 13 pôles pour véhicules sans prééquipement',NULL,NULL,NULL,'fr_FR'),(1481,1481,'Protection du seuil de coffre effet inox','protection-du-seuil-de-coffre-effet-inox-7e0061195--hv9','Protection du seuil de coffre en plastique, effet inox',NULL,NULL,NULL,'fr_FR'),(1482,1482,'Protection pour seuil de chargement effet inox pour la gamme 6.1','protection-pour-seuil-de-chargement-effet-inox-pour-la-gamme-61-7e0061195a','La protection pour seuil de chargement vous permet de personnaliser votre véhicule mais également de le protéger des rayures et des chocs lors des chargements dans le coffre.Son design exclusif et sa forme parfaitement adaptée en font un incontournable.Matière : ABS avec revêtement en PMMA, adhésifIndication de montage : se colle sur le pare-chocsCouleur : argentCompatible : - Transporter Van, Transporter Vitré, Caravelle , Multivan et California de 2015 à 2019- Transporter 6,1 Van, Transporter 6,1 Vitré, Caravelle 6,1 , Multivan 6,1 et California 6,1 à partir de 2019Incompatible : véhicules avec protection arrière grainée',NULL,NULL,NULL,'fr_FR'),(1483,1483,'Protection pour seuil de chargement noir grainé pour la gamme 6.1','protection-pour-seuil-de-chargement-noir-graine-pour-la-gamme-61-7e0061195b','La protection pour seuil de chargement vous permet de personnaliser votre véhicule mais également de le protéger des rayures et des chocs lors des chargements dans le coffre. Son design exclusif et sa forme parfaitement adaptée en font un incontournable.Couleur : Noir.Indication de montage : Se colle sur le pare-chocs.Poids : 0,58 Kg.Compatible :- Transporter Van, Transporter Vitré, Caravelle , Multivan et California de 2015 à 2019.- Transporter 6,1 Van, Transporter 6,1 Vitré, Caravelle 6,1 , Multivan 6,1 et California 6,1 à partir de 2019.- Non compatible avec les véhicules avec protection arrière aspect Inox.',NULL,NULL,NULL,'fr_FR'),(1484,1484,'Protection seuil de coffre transparent','protection-seuil-de-coffre-transparent-7e0061197','Protection du seuil de coffre transparent',NULL,NULL,NULL,'fr_FR'),(1485,1485,'Porte-vélos sur hayon 4 vélos pour la gamme 6.1','porte-velos-sur-hayon-4-velos-pour-la-gamme-61-7e0071104','Le porte-vélos pour hayon est un essentiel du T6, il vous permet de transporter aisément 4 vélos simultanément.Entièrement préassemblé, il se monte aussi facilement que rapidement sur le hayon de votre véhicule et est équipé d\'un dispositif antivol. Il permet de transporter jusqu\'à 4 vélos pour un maximum de 60kg et se monte sur les hayons non électriques. Pour transporter 4 bicyclettesCharge : 60 kg maxPoids CA : 15 kgLargeur du rail de roue : 50 mmProfil de cadre pouvant être serré : Ø 80 mmCouleur : argent / noirCompatible : Transporter Van, Transporter Vitré, Caravelle , Multivan et California de 2015 à 2019, Transporter 6,1 Van, Transporter 6,1 Vitré, Caravelle 6,1 , Multivan 6,1 et California 6,1 à partir de 2019Pas pour hayon électrique',NULL,NULL,NULL,'fr_FR'),(1486,1486,'Porte-vélos sur hayon 4 vélos pour hayon électrique et hayon normal pour l','porte-velos-sur-hayon-4-velos-pour-hayon-electrique-et-hayon-normal-pour-l-7e0071104b','Le porte-vélos pour hayon est un essentiel du T6, il vous permet de transporter aisément 4 vélos simultanément.Entièrement préassemblé, il se monte aussi facilement que rapidement sur le hayon de votre véhicule et est équipé d\'un dispositif antivol. Il permet de transporter jusqu\'à 4 vélos pour un maximum de 60kg et s\'adapte aussi bien sur un hayon électrique que normal. Pour transporter 4 bicyclettesCharge : 60 kg maxPoids CA : 13 kgLargeur du rail de roue : 50 mmProfil de cadre pouvant être serré : Ø 55 mmCouleur : argent / noirCompatible : Transporter Van, Transporter Vitré, Caravelle , Multivan et California de 2015 à 2019, Transporter 6,1 Van, Transporter 6,1 Vitré, Caravelle 6,1 , Multivan 6,1 et California 6,1 à partir de 2019',NULL,NULL,NULL,'fr_FR'),(1487,1487,'Jeu de 2 Films de protection noirs, pour seuil de porte, T5T6T6.1','jeu-de-2-films-de-protection-noirs-pour-seuil-de-porte-t-5-t-6-t-61-7e0071310-19a','Le film de protection des seuils permet d\'assurer la valeur du véhicule, en le protégeant contre les rayures et la saleté en montant et en descendant. Se colle facilement sur les seuils de porte.1 jeu = 2 unités.Couleur : Noir.Emplacement :Porte Avant.Poids : 0,16 Kg.Compatible : - Transporter Van, Transporter Vitré, Caravelle , Multivan et California de 2003 à 2015.- Transporter Van, Transporter Vitré, Caravelle , Multivan et California de 2015 à 2019.- Transporter 6,1 Van, Transporter 6,1 Vitré, Caravelle 6,1 , Multivan 6,1 et California 6,1 à partir de 2019.',NULL,NULL,NULL,'fr_FR'),(1488,1488,'Baguette chromée pour hayon pour la gamme 6.1','baguette-chromee-pour-hayon-pour-la-gamme-61-7e0071360','La baguette chromée pour hayon vous permet de personnaliser votre véhicule mais également de protéger le rebord du hayon.Matière : support auto-adhésifCouleur : argent chroméCompatible : - Transporter Van, Transporter Vitré, Caravelle , Multivan et California de 2015 à 2019- Transporter 6,1 Van, Transporter 6,1 Vitré, Caravelle 6,1 , Multivan 6,1 et California 6,1 à partir de 2019',NULL,NULL,NULL,'fr_FR'),(1489,1489,'Jante alliage Corvara 16\" argent brillant pour la gamme 6.1','jante-alliage-corvara-16-argent-brillant-pour-la-gamme-61-7e0071496-8z8','La jante en alliage 16“ Corvara argent brillant a été conçue exclusivement pour votre véhicule.Résistante et de haute qualité elle lui confère un design exclusif.Crash testée selon les critères les plus stricts du Groupe Volkswagen, elle est l\'assurance d\'une sécurité et d\'une résistance accrue.Charge admissible par essieu : 1720 kg maxBonnet de moyeu avec inscription VWNom de la jante : CorvaraMatière : alliageCouleur : argent brillant Dimensions :Taille de la jante : 6,5J x 16Cercle de trous / Nombre de trous : 120 mm/5Déport de roue : 51 mmCouple de serrage boulons de roue : 180 nmVéhicules compatibles : - Transporter Van, Transporter Vitré, Caravelle , Multivan et California de 2015 à 2019- Transporter 6,1 Van, Transporter 6,1 Vitré, Caravelle 6,1 , Multivan 6,1 et California 6,1 à partir de 2019',NULL,NULL,NULL,'fr_FR'),(1490,1490,'Déflecteur de portière gris pour la gamme T6.1','deflecteur-de-portiere-gris-pour-la-gamme-t-61-7e0072193-hu3','Les déflecteurs Volkswagen ont été développés exclusivement pour votre véhicule.Ils s\'adaptent donc parfaitement au véhicule et permettent ainsi une aération agréable et optimale de l\'habitacle pour un confort de conduite accru.Ainsi, ils permettent de profiter de l\'air frais dans toutes les conditions, qu\'il pleuve ou qu\'il neige et permettent l\'évacuation de la chaleur quand il fait trop chaud.Lot de 2 pièces : portes avant droite/gauche.Matière : verre acrylique (teinté)Couleur : gris fuméeCompatible : - Transporter Van, Transporter Vitré, Caravelle , Multivan et California de 2015 à 2019- Transporter 6,1 Van, Transporter 6,1 Vitré, Caravelle 6,1 , Multivan 6,1 et California 6,1 à partir de 2019',NULL,NULL,NULL,'fr_FR'),(1491,1491,'Jeu de 2 tapis textile « premium » noir, avant pour la gamme T6 (Transport','jeu-de-2-tapis-textile-premium-noir-avant-pour-la-gamme-t-6-transport-7e1061275a-wgk','Les tapis textiles sont design et protègent efficacement de tous types de salissures.Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre véhicule.Lot de 2Type de tapis : avantMode de fixation : système de bouton poussoirRevêtement du dessous revêtement antidérapantDessus : velours TFG en 800 g/m²Matière : textileCouleur : noir satinCouleur de l\'insert : noir satinéCompatible : - Transporter Van, Transporter Vitré, Caravelle, Multivan et California de 2015 à 2019',NULL,NULL,NULL,'fr_FR'),(1492,1492,'Faisceau vhl avec prééquipement','faisceau-vhl-avec-preequipement-7e5055202a','Faisceau 13 pôles pour véhicules avec prééquipement',NULL,NULL,NULL,'fr_FR'),(1493,1493,'Insert de coffre Flexible','insert-de-coffre-flexible-7e5061160','Insert de coffre Flexible',NULL,NULL,NULL,'fr_FR'),(1494,1494,'Tapis de coffre rigide Multivan','tapis-de-coffre-rigide-multivan-7e5061161','Avec un rebord de 40 mm, le tapis de coffre rigide est très résistant, parfaitement adapté à votre Multivan.Il permet de protéger efficacement le compartiment de chargement contre la saleté et l\'humidité mais également d\'empêcher que le chargement ne glisse.Matière : polyéthylène (PE)Couleur : anthraciteDimension du rebord : 40 mmType CoffreCompatible : - Multivan de 2015 à 2019',NULL,NULL,NULL,'fr_FR'),(1495,1495,'Gourde en inox, design T1','gourde-en-inox-design-t-1-7e9069604','Gourde en inox, design T1',NULL,NULL,NULL,'fr_FR'),(1496,1496,'Sac de couchage bleu foncé Motif T1','sac-de-couchage-bleu-fonce-motif-t-1-7e9069621','Sac de couchage bleu foncé Motif T1, longueur 2m20',NULL,NULL,NULL,'fr_FR'),(1497,1497,'Coquetier bleu T1','coquetier-bleu-t-1-7e9069644','Coquetier bleu T1',NULL,NULL,NULL,'fr_FR'),(1498,1498,'Coussin bleu design T1','coussin-bleu-design-t-1-7e9069691','Coussin bleu design T1',NULL,NULL,NULL,'fr_FR'),(1499,1499,'Serviette de bain bleue, design T1','serviette-de-bain-bleue-design-t-1-7e9084500','Serviette de bain bleue, design T1',NULL,NULL,NULL,'fr_FR'),(1500,1500,'Sac de voyages design T1, vert olive','sac-de-voyages-design-t-1-vert-olive-7e9087300','Sac de voyages design T1, vert olive',NULL,NULL,NULL,'fr_FR'),(1501,1501,'Playmobil Combi T1','playmobil-combi-t-1-7e9087511a','Playmobil Combi T1',NULL,NULL,NULL,'fr_FR'),(1502,1502,'Pare-boue arrière pour les gammes T6/T6.1 (Transporter à Multivan)','pare-boue-arriere-pour-les-gammes-t-6-t-61-transporter-a-multivan-7f0075101','Parfaitement ajustés, les pare-boues Volkswagen sont très résistants et durables.Ils protègent votre véhicule des projections et de la saleté et ont été testés dans des conditions de conduite extrêmes. Couleur : noirCompatible : - Transporter Van, Transporter Vitré, Caravelle , Multivan et California de 2015 à 2019- Transporter 6,1 Van, Transporter 6,1 Vitré, Caravelle 6,1 , Multivan 6,1 et California 6,1 à partir de 2019',NULL,NULL,NULL,'fr_FR'),(1503,1503,'Licence d’activation App-Connect (MIB 2)','licence-dactivation-app-connect-mib-2-7h0054830','La licence d’activation App-Connect vous permet de dupliquer l\'interface de votre téléphone portable sur l\'écran du système d\'autoradio ou de radionavigation. Certaines applications Volkswagen telles que « Moniteur Think Blue. », « Shared Audio », « Drive & Track » ou « My Guide » peuvent aussi être utilisées dans la voiture.. Attention, le téléphone utitlisé doit être compatible.Véhicules compatibles :- Transporter Van depuis 2016, Transporter Vitré depuis 2016, Caravelle depuis 2016, Multivan depuis 2016, California depuis 2016, Amarok depuis 2017, Caddy depuis 2015, Caddy Van depuis 2015Restrictions : - Sous réserve de restrictions, pour plus de détails, contactez votre réparateur agréé- Uniquement en liaison avec : numéro PR 7UP- Uniquement en liaison avec : Douille UBS compatible Apple- Uniquement en liaison avec : PR n° I7A',NULL,NULL,NULL,'fr_FR'),(1504,1504,'Tapis de coffre souple pour les gammes T6/T6.1 (Transporter à Multivan)','tapis-de-coffre-souple-pour-les-gammes-t-6-t-61-transporter-a-multivan-7h0061160','Le tapis de coffre souple est léger et très résistant, parfaitement adapté à votre véhicule il permet de protéger efficacement le compartiment de chargement mais également d\'empecher que le chargement ne glisse.Couleur : AnthraciteVéhicules compatibles :- Transporter Vitré, Caravelle, Multivan, California de 2015 à 2019- Transporter 6.1 Vitré, Caravelle 6.1, Multivan 6.1, California 6.1 à partir 2019Restrictions : Transporter version courte',NULL,NULL,NULL,'fr_FR'),(1505,1505,'Cuve de coffre Multivan et Caravelle','cuve-de-coffre-multivan-et-caravelle-7h0061170','La cuve de coffre est très résistante, parfaitement adapté à votre véhicule et avec l\'inscription Volkswagen.Elle permet de protéger efficacement le compartiment de chargement et empêche le chargement de glisser.Couleur : noirType derrière la troisième rangée de siègesCompatible : - Multivan et Caravelle (T5) de 2009 à 2015- Multivan et Caravelle (T6) de 2015 à 2019- Multivan 6.1 et Caravelle 6.1 depuis 2019',NULL,NULL,NULL,'fr_FR'),(1506,1506,'Tapis caoutchouc « Premium », avant milieu pour la gamme T6','tapis-caoutchouc-premium-avant-milieu-pour-la-gamme-t-6-7h0061580-82v','Les tapis caoutchouc sont très résistants et protègent efficacement de tous types de salissures.Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre véhicule.Mode de fixation : système de manetteMatière : caoutchoucCouleur : noir titaneCompatible :- Transporter Van, Transporter Vitré, Caravelle, Multivan et California de 2015 à 2019',NULL,NULL,NULL,'fr_FR'),(1507,1507,'Porte-vélos hayon 4 vélos','porte-velos-hayon-4-velos-7h0071104','Support de bicyclettes pour le hayon 4 vélos maximum, 60 kg maximum',NULL,NULL,NULL,'fr_FR'),(1508,1508,'Barres de toit pour la gamme 6.1 (véhicules sans rails)','barres-de-toit-pour-la-gamme-61-vehicules-sans-rails-7h0071126','Les barres de toit vous permettent de transporter facilement tous types d\'objets. Elles sont crash-testées et ont été développées exclusivement pour votre véhicule.1 set de 2 piècesCharge maximale : 94 kg.Couleur : argentCompatible : - Transporter Van, Transporter Vitré, Caravelle et Multivan de 2015 à 2019- Transporter 6,1 Van, Transporter 6,1 Vitré, Caravelle 6,1 et Multivan 6,1 à partir de 2019',NULL,NULL,NULL,'fr_FR'),(1509,1509,'Barres de toit pour la gamme 6.1 (véhicules avec rails)','barres-de-toit-pour-la-gamme-61-vehicules-avec-rails-7h0071126a','Les barres de toit vous permettent de transporter facilement tous types d\'objets. Elles sont crash-testées et ont été développées exclusivement pour votre véhicule.1 set de 2 piècesCharge maximale : 94 kg.Couleur : argentCompatible : - Transporter Van, Transporter Vitré, Caravelle et Multivan de 2015 à 2019- Transporter 6,1 Van, Transporter 6,1 Vitré, Caravelle 6,1 et Multivan 6,1 à partir de 2019Restrictions véhicules : -Avec rails de toit (PR 354)- Transporter H1- Incompatibles sur California',NULL,NULL,NULL,'fr_FR'),(1510,1510,'Porteur Porteur simple','porteur-porteur-simple-7h0071126e','Porteur Porteur simple, pas pour les véhicules avec rail de fixation sur toit',NULL,NULL,NULL,'fr_FR'),(1511,1511,'Pare-boue avant pour Transporter','pare-boue-avant-pour-transporter-7h0075111','Parfaitement ajustés, les pare-boues Volkswagen sont très résistants et durables.Ils protègent votre véhicule des projections et de la saleté et ont été testés dans des conditions de conduite extrêmes. Couleur : noirCompatible : - Transporter Van, Transporter Vitré, Caravelle , Multivan et California de 2015 à 2019- Transporter 6,1 Van, Transporter 6,1 Vitré, Caravelle 6,1 , Multivan 6,1 et California 6,1 à partir de 2019',NULL,NULL,NULL,'fr_FR'),(1512,1512,'Dispositif d\'attelage Fixe','dispositif-dattelage-fixe-7h0092101b','Dispositif d\'attelage Fixe',NULL,NULL,NULL,'fr_FR'),(1513,1513,'Dispositif d\'attelage amovible','dispositif-dattelage-amovible-7h0092155b','Dispositif d\'attelage amovible',NULL,NULL,NULL,'fr_FR'),(1514,1514,'Jeu de 2 tapis textile noir, avant pour la gamme T6 (Transporter à Mutivan','jeu-de-2-tapis-textile-noir-avant-pour-la-gamme-t-6-transporter-a-mutivan-7h1061245e-ruy','Les tapis textile sont design et protègent efficacement de tous types de salissures. Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre véhicule.Couleur : AnthraciteCouleur de l\'insert : anthraciteType de tapis avantRevêtement du dessous revêtement antidérapantMode de fixation: Système de manetteVéhicules compatibles :- Transporter Van, Transporter Vitré, Caravelle, Multivan et California de 2015 à 2019',NULL,NULL,NULL,'fr_FR'),(1515,1515,'Jeu de 3 Tapis caoutchouc « Premium », avant pour la gamme T6 (Transporter','jeu-de-3-tapis-caoutchouc-premium-avant-pour-la-gamme-t-6-transporter-7h1061500c-82v','Les tapis caoutchouc sont très résistants et protègent efficacement de tous types de salissures.Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre véhicule.Lot de 3Type de tapis : avantMode de fixation : système de bouton poussoirDesign : avec inscriptionMatière : caoutchoucCouleur : noir titaneCompatible :- Transporter Van, Transporter Vitré, Caravelle, Multivan et California de 2015 à 2019',NULL,NULL,NULL,'fr_FR'),(1516,1516,'Jeu de 3 Tapis caoutchouc « Premium », avant pour la gamme 6.1','jeu-de-3-tapis-caoutchouc-premium-avant-pour-la-gamme-61-7h1061500d-82v','Les tapis caoutchouc sont très résistants et protègent efficacement de tous types de salissures. Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre véhicule.Couleur : Noir TitaneType de tapis : avantDesign : avec inscriptionMode de fixation: Système de bouton poussoirVéhicules compatibles :- Transporter 6,1 Van, Transporter 6,1 Vitré, Caravelle 6,1 , Multivan 6,1 et California 6,1 à partir de 2019',NULL,NULL,NULL,'fr_FR'),(1517,1517,'Jeu de 2 Tapis caoutchouc « Premium », avant pour la gamme T6 (Transporter','jeu-de-2-tapis-caoutchouc-premium-avant-pour-la-gamme-t-6-transporter-7h1061502b-82v','Les tapis caoutchouc sont très résistants et protègent efficacement de tous types de salissures.Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre véhicule.Lot de 2Type de tapis : avantDesign : avec inscriptionMatière : caoutchoucCouleur : noir titaneCompatible : - Transporter Van, Transporter Vitré, Caravelle, Multivan et California de 2015 à 2019',NULL,NULL,NULL,'fr_FR'),(1518,1518,'Tapis de sol tous temps avant, 2 pièces, noir titane','tapis-de-sol-tous-temps-avant-2-pieces-noir-titane-7h1061502c-82v','Tapis de sol tous temps avant, 2 pièces, noir titane',NULL,NULL,NULL,'fr_FR'),(1519,1519,'Jeu de 2 Tapis caoutchouc « Plus » , avant pour gamme T6.1','jeu-de-2-tapis-caoutchouc-plus-avant-pour-gamme-t-61-7h1061551d-041','Les tapis caoutchouc sont très résistants et protègent efficacement de tous types de salissures.Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre véhicule.Lot de 2Type de tapis : avantMode de fixation : système de bouton poussoirDesign : avec inscriptionMatière : caoutchoucCouleur : noirCompatible : - Transporter Van, Transporter Vitré, Caravelle , Multivan et California de 2015 à 2019- Transporter 6,1 Van, Transporter 6,1 Vitré, Caravelle 6,1 , Multivan 6,1 et California 6,1 à partir de 2019',NULL,NULL,NULL,'fr_FR'),(1520,1520,'Barres de toit pour California','barres-de-toit-pour-california-7h7071126','Les barres de toit vous permettent de transporter facilement tous types d\'objets. Elles sont crash-testées et ont été développées exclusivement pour votre California.1 set de 2 piècesCharge : 45 kg maxCouleur : argentCompatible : - California de 2016 à 2019- California 6.1 à partir de 2019',NULL,NULL,NULL,'fr_FR'),(1521,1521,'Tapis de sol textiles avant, noir, haut de gamme','tapis-de-sol-textiles-avant-noir-haut-de-gamme-7l1061275--wgk','Tapis de sol textiles avant, noir, haut de gamme',NULL,NULL,NULL,'fr_FR'),(1522,1522,'Jeu de 2 tapis textiles « Premium » noirs, avant, pour gamme T6,1 (Transpo','jeu-de-2-tapis-textiles-premium-noirs-avant-pour-gamme-t-61-transpo-7l1061275-wgk','Les tapis textile sont design et protègent efficacement de tous types de salissures. Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre véhicule.<br/><br/><br/><br/>Couleur : Noir Satin.<br/><br/>Couleur de l\'insert : Gris.<br/><br/>Type de tapis : Avant.<br/><br/>Revêtement du dessous : Antidérapant.<br/><br/>Dessus : Velours TFG en 700 g/m².<br/><br/>Mode de fixation: Système de bouton poussoir.<br/><br/>Poids : 1,58 Kg.<br/><br/><br/><br/>Compatible : <br/><br/>- Transporter Van, Transporter Vitré, Caravelle, Multivan et California à partir de 2019.',NULL,NULL,NULL,'fr_FR'),(1523,1523,'Faisceau pour vhl avec prééquipement','faisceau-pour-vhl-avec-preequipement-7la055202','Faisceau 13 pôles pour véhicules avec prééquipement',NULL,NULL,NULL,'fr_FR'),(1524,1524,'Faisceau pour vhl sans prééquipement','faisceau-pour-vhl-sans-preequipement-7la055204','Faisceau 13 pôles pour véhicules sans prééquipement (avant semaine de production 50/2021)',NULL,NULL,NULL,'fr_FR'),(1525,1525,'Multivan T7 - Jeu de 2 tapis textiles av Premium noirs','multivan-t-7-jeu-de-2-tapis-textiles-av-premium-noirs-7t1061275-wgk','Les tapis textiles sont design et protègent efficacement de tous types de salissures. Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre Multivan. L\'inscription \"Bulli\" rappellent les origines du T1.',NULL,NULL,NULL,'fr_FR'),(1526,1526,'Tapis de sol tous temps avant, en 2 parties, noir','tapis-de-sol-tous-temps-avant-en-2-parties-noir-7t1061420--wgk','Les tapis caoutchouc sont très résistants et protègent efficacement de tous types de salissures. Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre .',NULL,NULL,NULL,'fr_FR'),(1527,1527,'Multivan T7 - Jeu de 2 tapis de sol textiles avant, noir, « Plus »','multivan-t-7-jeu-de-2-tapis-de-sol-textiles-avant-noir-plus-7t1061420-wgk','Les tapis caoutchouc sont très résistants et protègent efficacement de tous types de salissures. Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre .',NULL,NULL,NULL,'fr_FR'),(1528,1528,'Multivan T7 - 2 tapis tous temps avant avec inscription \"Bulli\"','multivan-t-7-2-tapis-tous-temps-avant-avec-inscription-bulli-7t1061502-82v','Les tapis caoutchouc sont très résistants et protègent efficacement de tous types de salissures. Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre Multivan.',NULL,NULL,NULL,'fr_FR'),(1529,1529,'Multivan T7 - 2 tapis tous temps avant avec inscription \"Bulli\"','multivan-t-7-2-tapis-tous-temps-avant-avec-inscription-bulli-7t106150282v','Les tapis caoutchouc sont très résistants et protègent efficacement de tous types de salissures. Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre .<br>Couleur :Noir Titane<br>Type de tapis : arrière',NULL,NULL,NULL,'fr_FR'),(1530,1530,'Jeu de 2 tapis textile « premium » noir, avant Amarok','jeu-de-2-tapis-textile-premium-noir-avant-amarok-2h7061275-wgk','Les tapis textiles sont design et protègent efficacement de tous types de salissures.Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre Amarok.Lot de 2Type de tapis : avantMode de fixation : système de bouton poussoirRevêtement du dessous Tuft antidérapantDessus : velours TFG en 800 g/m²Design : avec inscriptionMatière : textileCouleur : noir satinéCompatible : - Amarok de 2009 à 2016- Amarok depuis 2016 à 2020',NULL,NULL,NULL,'fr_FR'),(1531,1531,'Tapis de sol textiles avant et arrière, noir/gris, premium pour Caddy 5','tapis-de-sol-textiles-avant-et-arriere-noirgris-premium-pour-caddy-5-2k8061270-wgk','Les tapis de sol textiles premium sont des produits haut de gamme d\'Origine Volkswagen Véhicules Utilitaires. Fabriqués avec du velours de grand qualité, ils sont robustes et résistent dans le temps. Leur utilisation est aisée grâce à leur système de fixation à 2 points et l\'antidérapant.Couleur : Noir Couleur de l\'insert : gris Type de tapis avant et arrière Design : avec inscription Revêtement du dessous revêtement antidérapant 100% recyclableDessus : Velours TFG de 700 g/m² Mode de fixation: Système de bouton poussoir \"Compatible: Caddy et Caddy Maxi 5 Cargo, Caddy et Maxi 5 depuis 2019',NULL,NULL,NULL,'fr_FR'),(1532,1532,'Porte-skis et snowboard «, télescopique,  jusqu’à 4 paires de skis ou 2 sn','porte-skis-et-snowboard-telescopique-jusqua-4-paires-de-skis-ou-2-sn-000071129ab','Produit d\'origine Volkswagen',NULL,NULL,NULL,'fr_FR'),(1533,1533,'Récipient isotherme Acier inoxydable, 450ml','recipient-isotherme-acier-inoxydable-450-ml-7e9069604a','Produit d\'origine Volkswagen',NULL,NULL,NULL,'fr_FR'),(1534,1534,'Sac à dos design T1, pour enfants','sac-a-dos-design-t-1-pour-enfants-1h4087325','Produit d\'origine Volkswagen',NULL,NULL,NULL,'fr_FR'),(1535,1535,'Jeu de 2 Tapis caoutchouc « Premium » avant Amarok','jeu-de-2-tapis-caoutchouc-premium-avant-amarok-2h1061502--82v','Les tapis caoutchouc sont très résistants et protègent efficacement de tous types de salissures. Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre Amarok.Couleur : NoirType de tapis : avantDesign : avec inscriptionVéhicules compatibles :- Amarok de 2009 à 2016- Amarok depuis 2016 à 2020',NULL,NULL,NULL,'fr_FR'),(1536,1536,'Tapis de sol tous temps avant et arrière, noir titane','tapis-de-sol-tous-temps-avant-et-arriere-noir-titane-2k8061500--82v','Les tapis caoutchouc sont très résistants et protègent efficacement de tous types de salissures. Fixés au sol grâce au sytème d\'attache, ils ont été développés spécifiquement pour votre véhcule',NULL,NULL,NULL,'fr_FR'),(1537,1537,'Bavettes pare-boue avants d’origine Volkswagen, Amarok (avec élargisseur d','bavettes-pare-boue-avants-dorigine-volkswagen-amarok-avec-elargisseur-d-2h0075111e','Les 2 bavettes pare-boue arrière d’origine Volkswagen permettent de protéger les soubassements et les portes du véhicule contre les rayures et les saletés. Elles permettent de réduire les projections d\'eau et de gravillons',NULL,NULL,NULL,'fr_FR'),(1538,1538,'Bavettes pare-boue arrières d’origine Volkswagen, Amarok (avec élargisseur','bavettes-pare-boue-arrieres-dorigine-volkswagen-amarok-avec-elargisseur-2h0075101c','Les 2 bavettes pare-boue arrière d’origine Volkswagen permettent de protéger les soubassements et les portes du véhicule contre les rayures et les saletés. Elles permettent de réduire les projections d\'eau et de gravillons',NULL,NULL,NULL,'fr_FR'),(1539,1539,'Bavettes pare-boue arrières d’origine Volkswagen, Crafter','bavettes-pare-boue-arrieres-dorigine-volkswagen-crafter-7c0075101b','Les 2 bavettes pare-boue arrière d’origine Volkswagen permettent de protéger les soubassements et les portes du véhicule contre les rayures et les saletés. Elles permettent de réduire les projections d\'eau et de gravillons',NULL,NULL,NULL,'fr_FR'),(1540,1540,'Pack sécurité et dépannage avec 2 gilets de sécurité, gants et lampe de po','pack-securite-et-depannage-avec-2-gilets-de-securite-gants-et-lampe-de-po-000093059m','Pack de sécurité d\'origine Volkswagen',NULL,NULL,NULL,'fr_FR'),(1541,1541,'Tapis de sol en caoutchouc avant, noir','tapis-de-sol-en-caoutchouc-avant-noir-7t1061551--041','Produit d\'origine Volkswagen',NULL,NULL,NULL,'fr_FR'),(1542,1542,'Tapis de sol tous temps avant pour Gamme T7','tapis-de-sol-tous-temps-avant-pour-gamme-t-7-7t1061502--82v','Produit d\'origine Volkswagen',NULL,NULL,NULL,'fr_FR'),(1543,1543,'Bavettes pare-boue avants d’origine Volkswagen, Gamme T7','bavettes-pare-boue-avants-dorigine-volkswagen-gamme-t-7-7t0075111','Produit d\'origine Volkswagen',NULL,NULL,NULL,'fr_FR'),(1544,1544,'Bavettes pare-boue arrières d’origine Volkswagen, Gamme T7','bavettes-pare-boue-arrieres-dorigine-volkswagen-gamme-t-7-7t0075101','Produit d\'origine Volkswagen',NULL,NULL,NULL,'fr_FR'),(1545,1545,'Protection du seuil de coffre transparent','protection-du-seuil-de-coffre-transparent-7t0061197','Produit d\'origine Volkswagen',NULL,NULL,NULL,'fr_FR'),(1546,1546,'Protection du seuil de coffre en plastique, effet inox','protection-du-seuil-de-coffre-en-plastique-effet-inox-7t0061195','Produit d\'origine Volkswagen',NULL,NULL,NULL,'fr_FR'),(1547,1547,'Protection du seuil de coffre noir, aspect grainé','protection-du-seuil-de-coffre-noir-aspect-graine-7t0061195a','Produit d\'origine Volkswagen',NULL,NULL,NULL,'fr_FR'),(1548,1548,'Kit de produit d’entretien Hiver Antigel , dégivrant, entretien du caoutch','kit-de-produit-dentretien-hiver-antigel-degivrant-entretien-du-caoutch-000096352l','Produit d\'origine Volkswagen',NULL,NULL,NULL,'fr_FR'),(1549,1549,'Lave glaces concentré 1:100, 250 ml','lave-glaces-concentre-1100-250-ml-000096311b','Produit d\'origine Volkswagen',NULL,NULL,NULL,'fr_FR'),(1550,1550,'Pack sécurité complet Volkswagen','pack-securite-complet-volkswagen-93059','Pack de sécurité d\'origine Volkswagen',NULL,NULL,NULL,'fr_FR'),(1551,1551,'Jeu de 2 tapis textile noir, arrière Amarok','jeu-de-2-tapis-textile-noir-arriere-amarok-2h0061276--wgk','Les tapis textiles sont design et protègent efficacement de tous types de salissures.Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre Amarok.Domaine d\'application 1re rangée de siègesLot de 2Type de tapis : arrièreRevêtement du dessous Tuft antidérapantDessus : velours TFG en 800 g/m²Matière : textileCouleur : noir satinCouleur de l\'insert : noir satinéCompatible : - Amarok de 2009 à 2016- Amarok depuis 2016 à 2020',NULL,NULL,NULL,'fr_FR'),(1552,1552,'Jeu de 2 Tapis caoutchouc « Premium » arrière Amarok','jeu-de-2-tapis-caoutchouc-premium-arriere-amarok-2h0061512--82v','Les tapis caoutchouc sont très résistants et protègent efficacement de tous types de salissures.Ils ont été développés spécifiquement pour votre Amarok.Lot de 2Type de tapis : arrièreMatière : caoutchoucCouleur : noirCompatible : - Amarok de 2009 à 2016- Amarok depuis 2016 à 2020',NULL,NULL,NULL,'fr_FR'),(1553,1553,'Jante aluminium 19“ Aragonit noir Amarok','jante-aluminium-19-aragonit-noir-amarok-2h0071499--ax1','La jante en aluminium 19“ Aragonit noire a été conçue exclusivement pour votre Amarok.Résistante et de haute qualité elle lui confère un design exclusif.Crash testée selon les critères les plus stricts du Groupe Volkswagen, elle est l\'assurance d\'une sécurité et d\'une résistance accrue.Nom de la jante : AragonitCouleur : NoirTaille de la jante : X819Cercle de trous [mm]/ Nombre de trous : 120/5Déport de roue [mm] : 43Charge max. admissible par essieu : (kg) 1930Couple de serrage boulons de roue [Nm] : 180Taille du pneu : 255/55 R 19 111H XLLivraison Roue: y compris bonnet de moyeuVéhicules compatibles :- Amarok de 2009 à 2016- Amarok depuis 2016 à 2020',NULL,NULL,NULL,'fr_FR'),(1554,1554,'Jeu de 2 tapis textile noir, avant Amarok','jeu-de-2-tapis-textile-noir-avant-amarok-2h1061270--wgk','Les tapis textiles sont design et protègent efficacement de tous types de salissures.Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre Amarok.Lot de 2Type de tapis : avant et arrièreMode de fixation : système de bouton poussoirRevêtement du dessous Tuft antidérapantDessus : velours TFG en 800 g/m²Design : avec inscriptionMatière : textileCouleur : noir satinCouleur de l\'insert : noir satinéCompatible : - Amarok de 2009 à 2016- Amarok depuis 2016 à 2020',NULL,NULL,NULL,'fr_FR'),(1555,1555,'Marchepied noir avec LED Amarok','marchepied-noir-avec-led-amarok-2h6071691--041','Les marchepieds confèrent un look exclusif à votre Amarok.Pratiques grâce à une surface de marche intégrée, ils peuvent supporter jusqu\'à 200kg, se montent sans perçage et permettent de protéger le véhicule en off-road.Les leds intégrées dans les marchepieds permettent d\'éclairer l\'accès au véhicule de manière optimale et originale lors du déverrouillage de ce dernier.Charge admissible : 200 kgMatière : acierCouleur : noirCompatible :- Amarok de 2009 à 2016- Amarok depuis 2016 à 2020Restrictions : Nécessite le faisceau 2H6071970.',NULL,NULL,NULL,'fr_FR'),(1556,1556,'Jeu de tapis caoutchouc arrière Caddy 4/Caddy Maxi 4','jeu-de-tapis-caoutchouc-arriere-caddy-4-caddy-maxi-4-2k0061512--82v','Parfaitement ajustés, les pare-boue Volkswagen sont très résitants et durables, ils protègent votre véhicule des projections et de la saleté et ont été testés dans des conditions de conduite extrêmes. <br>Restrictions : Uniquement pour Châssis détaré (roues jumelées).',NULL,NULL,NULL,'fr_FR'),(1557,1557,'Tapis caoutchouc conducteur à bords relevés Caddy 4, Caddy Maxi 4','tapis-caoutchouc-conducteur-a-bords-releves-caddy-4-caddy-maxi-4-2k1061161--71n','Les tapis caoutchouc sont très résistants et protègent efficacement de tous types de salissures.Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre Caddy.Lot de 1 : avant Matière : caoutchoucCouleur : noirCompatible : - Caddy et Caddy Maxi depuis 2015, Caddy et Maxi Van depuis 2015',NULL,NULL,NULL,'fr_FR'),(1558,1558,'Jeu de 4 Tapis caoutchouc « Plus » Caddy 4, Caddy Maxi 4','jeu-de-4-tapis-caoutchouc-plus-caddy-4-caddy-maxi-4-2k1061550--041','Les tapis caoutchouc sont très résistants et protègent efficacement de tous types de salissures.Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre Caddy.Lot de 4Type de tapis : avant et arrièreMode de fixation : système de bouton poussoirMatière : caoutchoucCouleur : noirCompatible :- Caddy et Caddy Maxi depuis 2015, Caddy et Maxi Van depuis 2015',NULL,NULL,NULL,'fr_FR'),(1559,1559,'Jeu de 2 Films de protection noirs, pour seuil de porte, T5T6T6.1','jeu-de-2-films-de-protection-noirs-pour-seuil-de-porte-t-5-t-6-t-61-7e0071310--19a','Le film de protection des seuils permet d\'assurer la valeur du véhicule, en le protégeant contre les rayures et la saleté en montant et en descendant. Se colle facilement sur les seuils de porte.1 jeu = 2 unités.Couleur : Noir.Emplacement :Porte Avant.Poids : 0,16 Kg.Compatible : - Transporter Van, Transporter Vitré, Caravelle , Multivan et California de 2003 à 2015.- Transporter Van, Transporter Vitré, Caravelle , Multivan et California de 2015 à 2019.- Transporter 6,1 Van, Transporter 6,1 Vitré, Caravelle 6,1 , Multivan 6,1 et California 6,1 à partir de 2019.',NULL,NULL,NULL,'fr_FR'),(1560,1560,'Jante alliage Corvara 16\" argent brillant pour la gamme 6.1','jante-alliage-corvara-16-argent-brillant-pour-la-gamme-61-7e0071496--8z8','La jante en alliage 16“ Corvara argent brillant a été conçue exclusivement pour votre véhicule.Résistante et de haute qualité elle lui confère un design exclusif.Crash testée selon les critères les plus stricts du Groupe Volkswagen, elle est l\'assurance d\'une sécurité et d\'une résistance accrue.Charge admissible par essieu : 1720 kg maxBonnet de moyeu avec inscription VWNom de la jante : CorvaraMatière : alliageCouleur : argent brillant Dimensions :Taille de la jante : 6,5J x 16Cercle de trous / Nombre de trous : 120 mm/5Déport de roue : 51 mmCouple de serrage boulons de roue : 180 nmVéhicules compatibles : - Transporter Van, Transporter Vitré, Caravelle , Multivan et California de 2015 à 2019- Transporter 6,1 Van, Transporter 6,1 Vitré, Caravelle 6,1 , Multivan 6,1 et California 6,1 à partir de 2019',NULL,NULL,NULL,'fr_FR'),(1561,1561,'Déflecteur de portière gris pour la gamme T6.1','deflecteur-de-portiere-gris-pour-la-gamme-t-61-7e0072193--hu3','Les déflecteurs Volkswagen ont été développés exclusivement pour votre véhicule.Ils s\'adaptent donc parfaitement au véhicule et permettent ainsi une aération agréable et optimale de l\'habitacle pour un confort de conduite accru.Ainsi, ils permettent de profiter de l\'air frais dans toutes les conditions, qu\'il pleuve ou qu\'il neige et permettent l\'évacuation de la chaleur quand il fait trop chaud.Lot de 2 pièces : portes avant droite/gauche.Matière : verre acrylique (teinté)Couleur : gris fuméeCompatible : - Transporter Van, Transporter Vitré, Caravelle , Multivan et California de 2015 à 2019- Transporter 6,1 Van, Transporter 6,1 Vitré, Caravelle 6,1 , Multivan 6,1 et California 6,1 à partir de 2019',NULL,NULL,NULL,'fr_FR'),(1562,1562,'Tapis caoutchouc « Premium », avant milieu pour la gamme T6','tapis-caoutchouc-premium-avant-milieu-pour-la-gamme-t-6-7h0061580--82v','Les tapis caoutchouc sont très résistants et protègent efficacement de tous types de salissures.Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre véhicule.Mode de fixation : système de manetteMatière : caoutchoucCouleur : noir titaneCompatible :- Transporter Van, Transporter Vitré, Caravelle, Multivan et California de 2015 à 2019',NULL,NULL,NULL,'fr_FR'),(1563,1563,'Multivan T7 - Jeu de 2 tapis textiles av Premium noirs','multivan-t-7-jeu-de-2-tapis-textiles-av-premium-noirs-7t1061275--wgk','Les tapis textiles sont design et protègent efficacement de tous types de salissures. Fixés au sol grâce au système d\'attache, ils ont été développés spécifiquement pour votre Multivan. L\'inscription \"Bulli\" rappellent les origines du T1.',NULL,NULL,NULL,'fr_FR'),(1564,1564,'Lave glaces concentré 1:100, 250 ml','lave-glaces-concentre-1100-250-ml-000096311m','Produit d\'origine Volkswagen',NULL,NULL,NULL,'fr_FR'),(1565,1565,'Dispositif d\'attelage amovible','dispositif-dattelage-amovible-7t0092155','Dispositif d\'attelage amovible',NULL,NULL,NULL,'fr_FR'),(1566,1566,'Dispositif d\'attelage dévissable (pour Van roues simples)','dispositif-dattelage-devissable-pour-van-roues-simples-7c0092115b','Produit d\'origine Volkswagen',NULL,NULL,NULL,'fr_FR'),(1567,1567,'Dispositif d\'attelage électrique','dispositif-dattelage-electrique-7t0092161','Produit d\'origine Volkswagen',NULL,NULL,NULL,'fr_FR'),(1568,1568,'Kit de montage électrique pour dispositif d\'attelage 13 broches, pour disp','kit-de-montage-electrique-pour-dispositif-dattelage-13-broches-pour-disp-7t0055204','Produit d\'origine Volkswagen',NULL,NULL,NULL,'fr_FR');
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
) ENGINE=InnoDB AUTO_INCREMENT=1576 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_variant`
--

LOCK TABLES `sylius_product_variant` WRITE;
/*!40000 ALTER TABLE `sylius_product_variant` DISABLE KEYS */;
INSERT INTO `sylius_product_variant` (`id`, `product_id`, `tax_category_id`, `shipping_category_id`, `code`, `created_at`, `updated_at`, `on_hold`, `on_hand`, `tracked`, `width`, `height`, `depth`, `weight`, `position`, `shipping_required`, `version`, `enabled`, `synced_at`) VALUES (1341,1334,NULL,NULL,'000051446AB','2022-05-24 09:09:18','2023-09-25 10:02:35',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:34'),(1342,1335,NULL,NULL,'000051446AC','2022-05-24 09:09:18','2023-09-25 10:03:27',0,15,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:27'),(1343,1336,NULL,NULL,'000051446AD','2022-05-24 09:09:19','2023-09-25 10:02:35',0,1,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:34'),(1344,1337,NULL,NULL,'000051446AE','2022-05-24 09:09:19','2023-09-25 10:02:35',0,30,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:34'),(1345,1338,NULL,NULL,'000051446AQ','2022-05-24 09:09:19','2023-09-25 10:03:27',0,74,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:27'),(1346,1339,NULL,NULL,'000051446AR','2022-05-24 09:09:19','2023-09-25 10:03:27',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:27'),(1347,1340,NULL,NULL,'000051446AS','2022-05-24 09:09:20','2023-09-25 10:03:26',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:26'),(1348,1341,NULL,NULL,'000051446BA','2022-05-24 09:09:20','2023-09-25 10:02:34',0,1,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:34'),(1349,1342,NULL,NULL,'000051446BB','2022-05-24 09:09:20','2023-09-25 10:02:35',0,18,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:34'),(1350,1343,NULL,NULL,'000051446BC','2022-05-24 09:09:20','2023-09-25 10:02:35',0,12,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:34'),(1351,1344,NULL,NULL,'000051446BD','2022-05-24 09:09:21','2023-09-25 10:02:35',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:34'),(1352,1345,NULL,NULL,'000051446BN','2022-05-24 09:09:21','2023-09-25 10:02:39',0,176,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:39'),(1353,1346,NULL,NULL,'000051446BP','2022-05-24 09:09:21','2023-09-25 10:02:39',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:39'),(1354,1347,NULL,NULL,'000065400F','2022-05-24 09:09:21','2023-09-25 10:02:27',0,11,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:27'),(1355,1348,NULL,NULL,'000071105G','2022-05-24 09:09:21','2023-09-25 10:03:56',0,33,0,NULL,NULL,NULL,14,0,0,804,1,'2023-09-25 10:03:56'),(1356,1349,NULL,NULL,'000071105J','2022-05-24 09:09:22','2023-09-25 10:02:41',0,7,0,NULL,NULL,NULL,15,0,0,804,1,'2023-09-25 10:02:41'),(1357,1350,NULL,NULL,'000071120HA','2022-05-24 09:09:22','2023-09-25 10:03:52',0,5,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:52'),(1358,1351,NULL,NULL,'000071128F','2022-05-24 09:09:23','2023-09-25 10:03:03',0,3,0,NULL,NULL,NULL,4,0,0,804,1,'2023-09-25 10:03:03'),(1359,1352,NULL,NULL,'000071200AD','2022-05-24 09:09:23','2023-09-25 10:02:44',0,5,0,NULL,NULL,NULL,19,0,0,804,1,'2023-09-25 10:02:44'),(1360,1353,NULL,NULL,'000071200AE','2022-05-24 09:09:23','2023-09-25 10:02:44',0,5,0,NULL,NULL,NULL,23,0,0,804,1,'2023-09-25 10:02:44'),(1361,1354,NULL,NULL,'000071200AF','2022-05-24 09:09:24','2023-09-25 10:03:03',0,0,0,NULL,NULL,NULL,15,0,0,804,1,'2023-09-25 10:03:03'),(1362,1355,NULL,NULL,'000093059B','2022-05-24 09:09:25','2023-09-25 10:03:52',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:52'),(1363,1356,NULL,NULL,'000096166A','2022-05-24 09:09:25','2023-09-25 10:03:56',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:56'),(1364,1357,NULL,NULL,'000096304J','2022-05-24 09:09:25','2023-09-25 10:02:46',0,28,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:46'),(1365,1358,NULL,NULL,'000096311L','2022-05-24 09:09:25','2023-09-25 10:02:45',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:45'),(1366,1359,NULL,NULL,'1K0071127A','2022-05-24 09:09:26','2023-09-25 10:03:49',0,2,0,NULL,NULL,NULL,1,0,0,804,1,'2023-09-25 10:03:49'),(1367,1360,NULL,NULL,'211087511A','2022-05-24 09:09:26','2023-09-25 10:02:55',0,38,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:55'),(1368,1361,NULL,NULL,'231087317','2022-05-24 09:09:27','2023-09-25 10:02:49',0,57,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:49'),(1369,1362,NULL,NULL,'2E0017242','2022-05-24 09:09:27','2023-09-25 10:03:37',0,2,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:37'),(1370,1363,NULL,NULL,'2E0017244A','2022-05-24 09:09:27','2023-09-25 10:02:42',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:42'),(1371,1364,NULL,NULL,'2E0071126A','2022-05-24 09:09:27','2023-09-25 10:02:45',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:44'),(1372,1365,NULL,NULL,'2E0071126B','2022-05-24 09:09:28','2023-09-25 10:02:45',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:44'),(1373,1366,NULL,NULL,'2H0061276_WGK','2022-05-24 09:09:28','2022-05-24 09:09:28',0,0,0,NULL,NULL,NULL,0,0,0,1,1,NULL),(1374,1367,NULL,NULL,'2H0061512_82V','2022-05-24 09:09:28','2022-05-24 09:09:28',0,0,0,NULL,NULL,NULL,0,0,0,1,1,NULL),(1375,1368,NULL,NULL,'2H0071000C_72A','2022-05-24 09:09:28','2023-09-25 10:03:41',0,3,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:41'),(1376,1369,NULL,NULL,'2H0071000E_NP1','2022-05-24 09:09:28','2023-09-25 10:02:48',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:48'),(1377,1370,NULL,NULL,'2H0071496B_8Z8','2022-05-24 09:09:28','2023-09-25 10:02:49',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:49'),(1378,1371,NULL,NULL,'2H0071499_AX1','2022-05-24 09:09:28','2022-05-24 09:09:29',0,0,0,NULL,NULL,NULL,0,0,0,1,1,NULL),(1379,1372,NULL,NULL,'2H0071691B','2022-05-24 09:09:29','2023-09-25 10:03:15',0,1,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:15'),(1380,1373,NULL,NULL,'2H0071691E_72A','2022-05-24 09:09:29','2023-09-25 10:03:05',0,2,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:05'),(1381,1374,NULL,NULL,'2H0071691L_041','2022-05-24 09:09:29','2023-09-25 10:02:48',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:48'),(1382,1375,NULL,NULL,'2H0071693A','2022-05-24 09:09:29','2023-09-25 10:03:41',0,1,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:41'),(1383,1376,NULL,NULL,'2H0071693C_72A','2022-05-24 09:09:29','2023-09-25 10:02:20',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:20'),(1384,1377,NULL,NULL,'2H0075101B','2022-05-24 09:09:29','2023-09-25 10:03:41',0,1,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:41'),(1385,1378,NULL,NULL,'2H0075111D','2022-05-24 09:09:29','2023-09-25 10:03:41',0,2,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:41'),(1386,1379,NULL,NULL,'2H1061270_WGK','2022-05-24 09:09:29','2022-05-24 09:09:29',0,0,0,NULL,NULL,NULL,0,0,0,1,1,NULL),(1387,1380,NULL,NULL,'2H1061500A_82V','2022-05-24 09:09:29','2023-09-25 10:02:58',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:58'),(1388,1381,NULL,NULL,'2H1061502_82V','2022-05-24 09:09:29','2022-05-24 09:09:30',0,0,0,NULL,NULL,NULL,0,0,0,1,1,NULL),(1389,1382,NULL,NULL,'2H6061166','2022-05-24 09:09:30','2023-09-25 10:02:46',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:46'),(1390,1383,NULL,NULL,'2H6071691_041','2022-05-24 09:09:30','2022-05-24 09:09:30',0,0,0,NULL,NULL,NULL,0,0,0,1,1,NULL),(1391,1384,NULL,NULL,'2H6071691A_72A','2022-05-24 09:09:30','2023-09-25 10:02:38',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:38'),(1392,1385,NULL,NULL,'2H7061162D','2022-05-24 09:09:30','2023-09-25 10:02:45',0,24,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:44'),(1393,1386,NULL,NULL,'2H7061275__WGK','2022-05-24 09:09:31','2023-09-25 10:03:02',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:02'),(1394,1387,NULL,NULL,'2H7071774C_041','2022-05-24 09:09:31','2023-09-25 10:03:04',0,6,0,NULL,NULL,NULL,43,0,0,804,1,'2023-09-25 10:03:04'),(1395,1388,NULL,NULL,'2H7071776H_A5W','2022-05-24 09:09:31','2023-09-25 10:02:43',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:43'),(1396,1389,NULL,NULL,'2H7071776H_A7W','2022-05-24 09:09:32','2023-09-25 10:02:43',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:43'),(1397,1390,NULL,NULL,'2H7071776H_C9X','2022-05-24 09:09:32','2023-09-25 10:02:45',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:44'),(1398,1391,NULL,NULL,'2H7071776H_H8W','2022-05-24 09:09:32','2023-09-25 10:02:43',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:43'),(1399,1392,NULL,NULL,'2H7071776H_R7H','2022-05-24 09:09:32','2023-09-25 10:02:43',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:43'),(1400,1393,NULL,NULL,'2H7071776H_T5U','2022-05-24 09:09:32','2023-09-25 10:02:43',0,1,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:43'),(1401,1394,NULL,NULL,'2H7071776H_WKF','2022-05-24 09:09:32','2023-09-25 10:02:43',0,1,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:43'),(1402,1395,NULL,NULL,'2H7071778A','2022-05-24 09:09:32','2023-09-25 10:03:12',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:12'),(1403,1396,NULL,NULL,'2K0055204D','2022-05-24 09:09:32','2023-09-25 10:03:03',0,2,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:03'),(1404,1397,NULL,NULL,'2K0061160','2022-05-24 09:09:32','2023-09-25 10:03:41',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:41'),(1405,1398,NULL,NULL,'2K0061162','2022-05-24 09:09:33','2023-09-25 10:03:41',0,1,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:41'),(1406,1399,NULL,NULL,'2K0061172','2022-05-24 09:09:33','2023-09-25 10:03:41',0,1,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:41'),(1407,1400,NULL,NULL,'2K0061195','2022-05-24 09:09:33','2023-09-25 10:03:09',0,1,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:09'),(1408,1401,NULL,NULL,'2K0061512_82V','2022-05-24 09:09:34','2022-05-24 09:09:34',0,0,0,NULL,NULL,NULL,0,0,0,1,1,NULL),(1409,1402,NULL,NULL,'2K006151282V','2022-05-24 09:09:34','2022-05-24 09:09:34',0,0,0,NULL,NULL,NULL,0,0,0,1,1,NULL),(1410,1403,NULL,NULL,'2K0071126','2022-05-24 09:09:34','2023-09-25 10:03:41',0,5,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:41'),(1411,1404,NULL,NULL,'2K0072193B','2022-05-24 09:09:34','2023-09-25 10:03:02',0,7,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:01'),(1412,1405,NULL,NULL,'2K0092101C','2022-05-24 09:09:35','2023-09-25 10:02:20',0,6,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:20'),(1413,1406,NULL,NULL,'2K0092101D','2022-05-24 09:09:35','2023-09-25 10:02:20',0,2,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:20'),(1414,1407,NULL,NULL,'2K0092155C','2022-05-24 09:09:35','2023-09-25 10:02:47',0,2,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:47'),(1415,1408,NULL,NULL,'2K1061161_71N','2022-05-24 09:09:35','2022-05-24 09:09:35',0,0,0,NULL,NULL,NULL,0,0,0,1,1,NULL),(1416,1409,NULL,NULL,'2K1061270__WGK','2022-05-24 09:09:35','2023-09-25 10:02:57',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:57'),(1417,1410,NULL,NULL,'2K1061270_WGK','2022-05-24 09:09:35','2022-05-24 09:09:36',0,0,0,NULL,NULL,NULL,0,0,0,1,1,NULL),(1418,1411,NULL,NULL,'2K1061275PBRYJ','2022-05-24 09:09:36','2023-09-25 10:03:41',0,4,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:41'),(1419,1412,NULL,NULL,'2K1061276PARYJ','2022-05-24 09:09:36','2023-09-25 10:03:41',0,2,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:41'),(1420,1413,NULL,NULL,'2K1061404__WGK','2022-05-24 09:09:36','2023-09-25 10:03:02',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:01'),(1421,1414,NULL,NULL,'2K1061404_WGK','2022-05-24 09:09:37','2022-05-24 09:09:38',0,0,0,NULL,NULL,NULL,0,0,0,1,1,NULL),(1422,1415,NULL,NULL,'2K1061500B_82V','2022-05-24 09:09:38','2023-09-25 10:03:08',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:08'),(1423,1416,NULL,NULL,'2K1061502A_82V','2022-05-24 09:09:39','2023-09-25 10:03:08',0,3,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:08'),(1424,1417,NULL,NULL,'2K1061550_041','2022-05-24 09:09:39','2022-05-24 09:09:39',0,0,0,NULL,NULL,NULL,0,0,0,1,1,NULL),(1425,1418,NULL,NULL,'2K3055204B','2022-05-24 09:09:39','2023-09-25 10:02:53',0,2,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:53'),(1426,1419,NULL,NULL,'2K3061160','2022-05-24 09:09:39','2023-09-25 10:03:43',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:43'),(1427,1420,NULL,NULL,'2K3061161','2022-05-24 09:09:39','2023-09-25 10:03:12',0,1,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:12'),(1428,1421,NULL,NULL,'2K3061161A','2022-05-24 09:09:39','2023-09-25 10:03:12',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:12'),(1429,1422,NULL,NULL,'2K3061210','2022-05-24 09:09:39','2023-09-25 10:03:43',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:43'),(1430,1423,NULL,NULL,'2K3071126__041','2022-05-24 09:09:40','2023-09-25 10:03:43',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:43'),(1431,1424,NULL,NULL,'2K5055204','2022-05-24 09:09:40','2023-09-25 10:02:53',0,1,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:53'),(1432,1425,NULL,NULL,'2K5061161','2022-05-24 09:09:40','2023-09-25 10:03:10',0,3,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:10'),(1433,1426,NULL,NULL,'2K5061195','2022-05-24 09:09:40','2023-09-25 10:02:57',0,6,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:57'),(1434,1427,NULL,NULL,'2K5061197','2022-05-24 09:09:40','2023-09-25 10:02:57',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:57'),(1435,1428,NULL,NULL,'2K5061210','2022-05-24 09:09:41','2023-09-25 10:02:57',0,2,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:57'),(1436,1429,NULL,NULL,'2K5071151B','2022-05-24 09:09:41','2023-09-25 10:02:57',0,1,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:57'),(1437,1430,NULL,NULL,'2K5075101','2022-05-24 09:09:41','2023-09-25 10:02:57',0,4,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:57'),(1438,1431,NULL,NULL,'2K7055202','2022-05-24 09:09:42','2023-09-25 10:02:27',0,5,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:27'),(1439,1432,NULL,NULL,'2K7055204','2022-05-24 09:09:42','2023-09-25 10:02:27',0,4,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:27'),(1440,1433,NULL,NULL,'2K7061160','2022-05-24 09:09:42','2023-09-25 10:02:33',0,4,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:33'),(1441,1434,NULL,NULL,'2K7061162','2022-05-24 09:09:43','2023-09-25 10:02:30',0,24,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:30'),(1442,1435,NULL,NULL,'2K7061195','2022-05-24 09:09:43','2023-09-25 10:02:33',0,95,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:33'),(1443,1436,NULL,NULL,'2K7061195A','2022-05-24 09:09:44','2023-09-25 10:02:33',0,101,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:33'),(1444,1437,NULL,NULL,'2K7064365','2022-05-24 09:09:44','2023-09-25 10:02:27',0,48,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:27'),(1445,1438,NULL,NULL,'2K7071126','2022-05-24 09:09:45','2023-09-25 10:02:27',0,1,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:27'),(1446,1439,NULL,NULL,'2K7071126B','2022-05-24 09:09:45','2023-09-25 10:02:27',0,2,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:27'),(1447,1440,NULL,NULL,'2K7075101','2022-05-24 09:09:45','2023-09-25 10:02:27',0,1,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:27'),(1448,1441,NULL,NULL,'2K7075101A','2022-05-24 09:09:46','2023-09-25 10:02:27',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:27'),(1449,1442,NULL,NULL,'2K7075111','2022-05-24 09:09:46','2023-09-25 10:02:33',0,4,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:33'),(1450,1443,NULL,NULL,'2K7092101','2022-05-24 09:09:46','2023-09-25 10:02:27',0,56,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:27'),(1451,1444,NULL,NULL,'2K7092155','2022-05-24 09:09:46','2023-09-25 10:02:27',0,162,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:27'),(1452,1445,NULL,NULL,'2K8061197','2022-05-24 09:09:47','2023-09-25 10:02:27',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:27'),(1453,1446,NULL,NULL,'2K8061270__WGK','2022-05-24 09:09:47','2023-09-25 10:02:29',0,17,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:28'),(1454,1447,NULL,NULL,'2K8061404__WGK','2022-05-24 09:09:49','2023-09-25 10:02:30',0,115,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:30'),(1455,1448,NULL,NULL,'2K8061502__82V','2022-05-24 09:09:50','2023-09-25 10:02:33',0,6,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:33'),(1456,1449,NULL,NULL,'2K8061502_82V','2022-05-24 09:09:51','2022-05-24 09:09:51',0,0,0,NULL,NULL,NULL,0,0,0,1,1,NULL),(1457,1450,NULL,NULL,'2K806150282V','2022-05-24 09:09:51','2022-05-24 09:09:52',0,0,0,NULL,NULL,NULL,0,0,0,1,1,NULL),(1458,1451,NULL,NULL,'3C0071105B','2022-05-24 09:09:52','2023-09-25 10:03:09',0,17,0,NULL,NULL,NULL,14,0,0,804,1,'2023-09-25 10:03:09'),(1459,1452,NULL,NULL,'5DB084130A_530','2022-05-24 09:09:53','2023-09-25 10:02:48',0,55,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:48'),(1460,1453,NULL,NULL,'5DB084130B_530','2022-05-24 09:09:53','2023-09-25 10:02:48',0,136,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:48'),(1461,1454,NULL,NULL,'5DB084130C_530','2022-05-24 09:09:53','2023-09-25 10:02:48',0,55,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:48'),(1462,1455,NULL,NULL,'5DB084130D_530','2022-05-24 09:09:54','2023-09-25 10:02:48',0,195,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:48'),(1463,1456,NULL,NULL,'7C0017230','2022-05-24 09:09:54','2023-09-25 10:02:45',0,0,0,NULL,NULL,NULL,3,0,0,804,1,'2023-09-25 10:02:44'),(1464,1457,NULL,NULL,'7C0017231','2022-05-24 09:09:54','2023-09-25 10:02:45',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:44'),(1465,1458,NULL,NULL,'7C0017233','2022-05-24 09:09:55','2023-09-25 10:02:45',0,37,0,NULL,NULL,NULL,3,0,0,804,1,'2023-09-25 10:02:44'),(1466,1459,NULL,NULL,'7C0017233A','2022-05-24 09:09:55','2023-09-25 10:02:42',0,6,0,NULL,NULL,NULL,2,0,0,804,1,'2023-09-25 10:02:42'),(1467,1460,NULL,NULL,'7C0017234','2022-05-24 09:09:55','2023-09-25 10:02:42',0,7,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:42'),(1468,1461,NULL,NULL,'7C0017238','2022-05-24 09:09:56','2023-09-25 10:02:45',0,45,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:44'),(1469,1462,NULL,NULL,'7C0017737','2022-05-24 09:09:56','2023-09-25 10:02:42',0,0,0,NULL,NULL,NULL,2,0,0,804,1,'2023-09-25 10:02:42'),(1470,1463,NULL,NULL,'7C0055204','2022-05-24 09:09:56','2023-09-25 10:02:45',0,6,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:44'),(1471,1464,NULL,NULL,'7C0055204A','2022-05-24 09:09:57','2023-09-25 10:02:45',0,1,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:44'),(1472,1465,NULL,NULL,'7C0055204B','2022-05-24 09:09:57','2023-09-25 10:02:29',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:28'),(1473,1466,NULL,NULL,'7C0072193','2022-05-24 09:09:57','2023-09-25 10:02:45',0,1,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:44'),(1474,1467,NULL,NULL,'7C0075101','2022-05-24 09:09:57','2023-09-25 10:02:45',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:44'),(1475,1468,NULL,NULL,'7C0075101A','2022-05-24 09:09:57','2023-09-25 10:02:45',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:44'),(1476,1469,NULL,NULL,'7C0075111','2022-05-24 09:09:57','2023-09-25 10:02:45',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:44'),(1477,1470,NULL,NULL,'7C0092115','2022-05-24 09:09:58','2023-09-25 10:02:45',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:44'),(1478,1471,NULL,NULL,'7C0092115A','2022-05-24 09:09:58','2023-09-25 10:02:45',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:44'),(1479,1472,NULL,NULL,'7C1061502A_82V','2022-05-24 09:09:58','2023-09-25 10:02:43',0,44,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:43'),(1480,1473,NULL,NULL,'7C3055204','2022-05-24 09:09:59','2023-09-25 10:02:45',0,11,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:44'),(1481,1474,NULL,NULL,'7CA075101','2022-05-24 09:10:00','2023-09-25 10:02:45',0,21,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:44'),(1482,1475,NULL,NULL,'7CA075101A','2022-05-24 09:10:00','2023-09-25 10:02:45',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:44'),(1483,1476,NULL,NULL,'7CA092115','2022-05-24 09:10:00','2023-09-25 10:02:45',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:44'),(1484,1477,NULL,NULL,'7CA092115A','2022-05-24 09:10:00','2023-09-25 10:02:45',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:44'),(1485,1478,NULL,NULL,'7E0054802','2022-05-24 09:10:01','2023-09-25 10:02:40',0,1,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:40'),(1486,1479,NULL,NULL,'7E0054802A','2022-05-24 09:10:01','2023-09-25 10:02:40',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:40'),(1487,1480,NULL,NULL,'7E0055204B','2022-05-24 09:10:01','2023-09-25 10:02:42',0,5,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:42'),(1488,1481,NULL,NULL,'7E0061195__HV9','2022-05-24 09:10:01','2023-09-25 10:03:33',0,5,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:33'),(1489,1482,NULL,NULL,'7E0061195A','2022-05-24 09:10:01','2023-09-25 10:02:57',0,27,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:57'),(1490,1483,NULL,NULL,'7E0061195B','2022-05-24 09:10:02','2023-09-25 10:02:35',0,57,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:35'),(1491,1484,NULL,NULL,'7E0061197','2022-05-24 09:10:02','2023-09-25 10:02:57',0,7,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:57'),(1492,1485,NULL,NULL,'7E0071104','2022-05-24 09:10:02','2023-09-25 10:02:57',0,72,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:57'),(1493,1486,NULL,NULL,'7E0071104B','2022-05-24 09:10:03','2023-09-25 10:02:29',0,10,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:29'),(1494,1487,NULL,NULL,'7E0071310_19A','2022-05-24 09:10:03','2022-05-24 09:10:03',0,0,0,NULL,NULL,NULL,0,0,0,1,1,NULL),(1495,1488,NULL,NULL,'7E0071360','2022-05-24 09:10:03','2023-09-25 10:02:57',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:57'),(1496,1489,NULL,NULL,'7E0071496_8Z8','2022-05-24 09:10:03','2022-05-24 09:10:04',0,0,0,NULL,NULL,NULL,0,0,0,1,1,NULL),(1497,1490,NULL,NULL,'7E0072193_HU3','2022-05-24 09:10:04','2022-05-24 09:10:04',0,0,0,NULL,NULL,NULL,0,0,0,1,1,NULL),(1498,1491,NULL,NULL,'7E1061275A_WGK','2022-05-24 09:10:04','2023-09-25 10:02:55',0,2,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:55'),(1499,1492,NULL,NULL,'7E5055202A','2022-05-24 09:10:05','2023-09-25 10:02:42',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:42'),(1500,1493,NULL,NULL,'7E5061160','2022-05-24 09:10:05','2023-09-25 10:03:32',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:32'),(1501,1494,NULL,NULL,'7E5061161','2022-05-24 09:10:05','2023-09-25 10:03:32',0,2,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:32'),(1502,1495,NULL,NULL,'7E9069604','2022-05-24 09:10:05','2023-09-25 10:02:25',0,127,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:25'),(1503,1496,NULL,NULL,'7E9069621','2022-05-24 09:10:06','2023-09-25 10:02:47',0,62,0,NULL,NULL,NULL,0,0,0,688,1,'2023-09-25 10:02:47'),(1504,1497,NULL,NULL,'7E9069644','2022-05-24 09:10:06','2023-09-25 10:02:40',0,0,0,NULL,NULL,NULL,0,0,0,688,1,'2023-09-25 10:02:40'),(1505,1498,NULL,NULL,'7E9069691','2022-05-24 09:10:07','2023-09-25 10:02:47',0,7,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:47'),(1506,1499,NULL,NULL,'7E9084500','2022-05-24 09:10:07','2023-09-25 10:02:40',0,460,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:40'),(1507,1500,NULL,NULL,'7E9087300','2022-05-24 09:10:07','2023-09-25 10:02:24',0,27,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:24'),(1508,1501,NULL,NULL,'7E9087511A','2022-05-24 09:10:08','2023-09-25 10:02:30',0,14,0,NULL,NULL,NULL,0,0,0,688,1,'2023-09-25 10:02:30'),(1509,1502,NULL,NULL,'7F0075101','2022-05-24 09:10:08','2023-09-25 10:02:57',0,4,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:57'),(1510,1503,NULL,NULL,'7H0054830','2022-05-24 09:10:08','2023-09-25 10:02:44',0,8,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:44'),(1511,1504,NULL,NULL,'7H0061160','2022-05-24 09:10:08','2023-09-25 10:03:32',0,3,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:32'),(1512,1505,NULL,NULL,'7H0061170','2022-05-24 09:10:10','2023-09-25 10:03:32',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:32'),(1513,1506,NULL,NULL,'7H0061580_82V','2022-05-24 09:10:10','2022-05-24 09:10:10',0,0,0,NULL,NULL,NULL,0,0,0,1,1,NULL),(1514,1507,NULL,NULL,'7H0071104','2022-05-24 09:10:10','2023-09-25 10:03:32',0,6,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:32'),(1515,1508,NULL,NULL,'7H0071126','2022-05-24 09:10:11','2023-09-25 10:03:32',0,98,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:32'),(1516,1509,NULL,NULL,'7H0071126A','2022-05-24 09:10:11','2023-09-25 10:03:32',0,2,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:32'),(1517,1510,NULL,NULL,'7H0071126E','2022-05-24 09:10:11','2023-09-25 10:03:32',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:32'),(1518,1511,NULL,NULL,'7H0075111','2022-05-24 09:10:12','2023-09-25 10:03:33',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:33'),(1519,1512,NULL,NULL,'7H0092101B','2022-05-24 09:10:12','2023-09-25 10:02:59',0,163,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:59'),(1520,1513,NULL,NULL,'7H0092155B','2022-05-24 09:10:12','2023-09-25 10:02:59',0,47,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:59'),(1521,1514,NULL,NULL,'7H1061245E_RUY','2022-05-24 09:10:13','2023-09-25 10:03:28',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:28'),(1522,1515,NULL,NULL,'7H1061500C_82V','2022-05-24 09:10:13','2023-09-25 10:02:39',0,66,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:39'),(1523,1516,NULL,NULL,'7H1061500D_82V','2022-05-24 09:10:13','2023-09-25 10:02:36',0,43,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:36'),(1524,1517,NULL,NULL,'7H1061502B_82V','2022-05-24 09:10:13','2023-09-25 10:02:42',0,47,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:42'),(1525,1518,NULL,NULL,'7H1061502C_82V','2022-05-24 09:10:13','2023-09-25 10:02:36',0,223,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:36'),(1526,1519,NULL,NULL,'7H1061551D_041','2022-05-24 09:10:14','2023-09-25 10:02:55',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:55'),(1527,1520,NULL,NULL,'7H7071126','2022-05-24 09:10:14','2023-09-25 10:03:29',0,2,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:03:29'),(1528,1521,NULL,NULL,'7L1061275__WGK','2022-05-24 09:10:14','2023-09-25 10:02:35',0,10,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:35'),(1529,1522,NULL,NULL,'7L1061275_WGK','2022-05-24 09:10:14','2022-05-24 09:10:15',0,0,0,NULL,NULL,NULL,1,0,0,1,1,NULL),(1530,1523,NULL,NULL,'7LA055202','2022-05-24 09:10:15','2023-09-25 10:02:35',0,6,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:35'),(1531,1524,NULL,NULL,'7LA055204','2022-05-24 09:10:15','2023-09-25 10:02:35',0,0,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:35'),(1532,1525,NULL,NULL,'7T1061275_WGK','2022-05-24 09:10:16','2022-05-24 09:10:16',0,0,0,NULL,NULL,NULL,0,0,0,1,1,NULL),(1533,1526,NULL,NULL,'7T1061420__WGK','2022-05-24 09:10:16','2023-09-25 10:02:25',0,21,0,NULL,NULL,NULL,0,0,0,804,1,'2023-09-25 10:02:25'),(1534,1527,NULL,NULL,'7T1061420_WGK','2022-05-24 09:10:16','2022-05-24 09:10:16',0,0,0,NULL,NULL,NULL,0,0,0,1,1,NULL),(1535,1528,NULL,NULL,'7T1061502_82V','2022-05-24 09:10:16','2022-05-24 09:10:16',0,0,0,NULL,NULL,NULL,0,0,0,1,1,NULL),(1536,1529,NULL,NULL,'7T106150282V','2022-05-24 09:10:16','2022-05-24 09:10:16',0,0,0,NULL,NULL,NULL,0,0,0,1,1,NULL),(1537,1530,NULL,NULL,'2H7061275_WGK','2022-06-23 15:51:47','2022-06-23 15:51:47',0,0,0,NULL,NULL,NULL,0,0,0,1,1,NULL),(1538,1531,NULL,NULL,'2K8061270_WGK','2022-06-23 15:51:47','2022-06-23 15:51:47',0,0,0,NULL,NULL,NULL,0,0,0,1,1,NULL),(1539,1532,NULL,NULL,'000071129AB','2022-09-01 22:02:58','2023-09-25 10:02:28',0,0,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:02:28'),(1540,1533,NULL,NULL,'7E9069604A','2022-09-01 22:02:58','2023-09-25 10:02:25',0,582,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:02:25'),(1541,1534,NULL,NULL,'1H4087325','2022-09-01 22:02:58','2023-09-25 10:02:24',0,231,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:02:24'),(1542,1535,NULL,NULL,'2H1061502__82V','2022-09-01 22:02:58','2023-09-25 10:02:56',0,4,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:02:56'),(1543,1536,NULL,NULL,'2K8061500__82V','2022-09-01 22:02:58','2023-09-25 10:02:30',0,8,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:02:30'),(1544,1537,NULL,NULL,'2H0075111E','2022-09-01 22:02:58','2023-09-25 10:03:41',0,6,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:03:41'),(1545,1538,NULL,NULL,'2H0075101C','2022-09-01 22:02:58','2023-09-25 10:03:41',0,2,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:03:41'),(1546,1539,NULL,NULL,'7C0075101B','2022-09-01 22:02:58','2023-09-25 10:02:45',0,0,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:02:44'),(1547,1540,NULL,NULL,'000093059M','2022-09-01 22:02:58','2023-09-25 10:02:52',0,0,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:02:51'),(1548,1541,NULL,NULL,'7T1061551__041','2022-09-01 22:02:58','2023-09-25 10:02:25',0,71,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:02:25'),(1549,1542,NULL,NULL,'7T1061502__82V','2022-09-01 22:02:58','2023-09-25 10:02:25',0,2,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:02:25'),(1550,1543,NULL,NULL,'7T0075111','2022-09-01 22:02:58','2023-09-25 10:02:24',0,0,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:02:24'),(1551,1544,NULL,NULL,'7T0075101','2022-09-01 22:02:58','2023-09-25 10:02:24',0,5,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:02:24'),(1552,1545,NULL,NULL,'7T0061197','2022-09-01 22:02:58','2023-09-25 10:02:25',0,1,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:02:25'),(1553,1546,NULL,NULL,'7T0061195','2022-09-01 22:02:58','2023-09-25 10:02:25',0,1,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:02:25'),(1554,1547,NULL,NULL,'7T0061195A','2022-09-01 22:02:58','2023-09-25 10:02:25',0,0,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:02:25'),(1555,1548,NULL,NULL,'000096352L','2022-09-01 22:02:58','2023-09-25 10:02:55',0,7,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:02:55'),(1556,1549,NULL,NULL,'000096311B','2022-09-01 22:02:58','2022-09-01 22:02:58',0,0,0,NULL,NULL,NULL,0,0,0,1,1,NULL),(1557,1550,NULL,NULL,'93059','2022-09-01 22:02:58','2022-09-01 22:02:58',0,0,0,NULL,NULL,NULL,0,0,0,1,1,NULL),(1558,1551,NULL,NULL,'2H0061276__WGK','2022-09-01 22:02:58','2023-09-25 10:03:41',0,1,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:03:41'),(1559,1552,NULL,NULL,'2H0061512__82V','2022-09-01 22:02:59','2023-09-25 10:02:56',0,0,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:02:56'),(1560,1553,NULL,NULL,'2H0071499__AX1','2022-09-01 22:02:59','2023-09-25 10:03:56',0,2,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:03:56'),(1561,1554,NULL,NULL,'2H1061270__WGK','2022-09-01 22:02:59','2023-09-25 10:03:41',0,2,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:03:41'),(1562,1555,NULL,NULL,'2H6071691__041','2022-09-01 22:02:59','2023-09-25 10:02:50',0,0,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:02:50'),(1563,1556,NULL,NULL,'2K0061512__82V','2022-09-01 22:02:59','2023-09-25 10:03:08',0,8,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:03:08'),(1564,1557,NULL,NULL,'2K1061161__71N','2022-09-01 22:02:59','2023-09-25 10:03:41',0,0,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:03:41'),(1565,1558,NULL,NULL,'2K1061550__041','2022-09-01 22:02:59','2023-09-25 10:03:02',0,0,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:03:01'),(1566,1559,NULL,NULL,'7E0071310__19A','2022-09-01 22:02:59','2023-09-25 10:03:33',0,4,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:03:33'),(1567,1560,NULL,NULL,'7E0071496__8Z8','2022-09-01 22:02:59','2023-09-25 10:02:57',0,16,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:02:57'),(1568,1561,NULL,NULL,'7E0072193__HU3','2022-09-01 22:02:59','2023-09-25 10:02:58',0,5,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:02:58'),(1569,1562,NULL,NULL,'7H0061580__82V','2022-09-01 22:02:59','2023-09-25 10:03:08',0,1,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:03:08'),(1570,1563,NULL,NULL,'7T1061275__WGK','2022-09-01 22:02:59','2023-09-25 10:02:25',0,55,0,NULL,NULL,NULL,0,0,0,678,1,'2023-09-25 10:02:25'),(1571,1564,NULL,NULL,'000096311M','2022-10-20 22:01:30','2023-09-25 10:02:49',0,59,0,NULL,NULL,NULL,0,0,0,580,1,'2023-09-25 10:02:49'),(1572,1565,NULL,NULL,'7T0092155','2023-01-02 22:04:41','2023-09-25 10:02:24',0,1,0,NULL,NULL,NULL,0,0,1,433,1,'2023-09-25 10:02:24'),(1573,1566,NULL,NULL,'7C0092115B','2023-01-02 22:04:41','2023-09-25 10:02:28',0,28,0,NULL,NULL,NULL,0,0,1,433,1,'2023-09-25 10:02:28'),(1574,1567,NULL,NULL,'7T0092161','2023-01-02 22:04:41','2023-09-25 10:02:24',0,2,0,NULL,NULL,NULL,0,0,1,433,1,'2023-09-25 10:02:24'),(1575,1568,NULL,NULL,'7T0055204','2023-01-02 22:04:41','2023-09-25 10:02:24',0,11,0,NULL,NULL,NULL,0,0,1,433,1,'2023-09-25 10:02:24');
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
) ENGINE=InnoDB AUTO_INCREMENT=1340 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_variant_translation`
--

LOCK TABLES `sylius_product_variant_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_variant_translation` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxon`
--

LOCK TABLES `sylius_taxon` WRITE;
/*!40000 ALTER TABLE `sylius_taxon` DISABLE KEYS */;
INSERT INTO `sylius_taxon` (`id`, `tree_root`, `parent_id`, `code`, `tree_left`, `tree_right`, `tree_level`, `position`, `created_at`, `updated_at`, `enabled`, `tags`, `breadcrumb`, `color`, `synced_at`) VALUES (1,3,3,'protection',2,23,1,5,'2022-03-04 13:14:08','2022-05-24 08:08:44',1,NULL,1,'#000000',NULL),(2,3,1,'boot_tray',3,4,2,1,'2022-03-04 13:14:48','2022-03-09 13:45:37',1,'',1,NULL,NULL),(3,3,NULL,'accessories',1,112,0,1,'2022-03-04 13:19:25','2022-12-19 10:19:05',1,NULL,1,'#000000',NULL),(7,7,NULL,'vehicles',1,56,0,1,'2022-03-04 15:33:09','2022-12-19 10:24:41',1,NULL,0,'#000000',NULL),(10,3,15,'barres',25,26,2,1,'2022-03-09 13:45:26','2022-04-25 10:04:24',1,NULL,1,'#000000',NULL),(11,3,1,'boot_mats',5,6,2,6,'2022-04-04 14:15:16','2022-04-04 14:15:17',1,NULL,1,NULL,NULL),(12,3,1,'floor_mats',7,8,2,7,'2022-04-04 14:16:13','2022-04-04 14:16:13',1,NULL,1,NULL,NULL),(13,3,1,'loading_sill_protection',9,10,2,4,'2022-04-04 14:17:41','2022-05-04 09:11:59',1,NULL,1,NULL,NULL),(14,3,1,'mud_flaps',11,12,2,3,'2022-04-04 14:18:17','2022-12-19 10:52:21',1,NULL,1,'#000000',NULL),(15,3,3,'transport',24,39,1,0,'2022-04-04 14:18:49','2022-04-25 10:04:56',1,NULL,1,'#000000',NULL),(19,3,3,'confort',40,49,1,2,'2022-04-04 14:37:12','2022-05-24 08:06:40',1,NULL,1,'#000000',NULL),(20,3,3,'design',50,65,1,1,'2022-04-04 14:37:28','2022-05-24 08:06:27',1,NULL,1,'#000000',NULL),(21,3,3,'security',66,83,1,3,'2022-04-04 14:37:48','2022-12-19 10:19:42',1,NULL,1,'#000000',NULL),(22,3,3,'connectivity',84,89,1,4,'2022-04-04 14:38:08','2022-12-19 10:19:49',1,NULL,1,'#000000',NULL),(23,3,3,'electromobility',90,95,1,6,'2022-04-04 14:39:13','2022-12-19 10:19:23',1,NULL,1,'#52a7cb',NULL),(24,3,21,'lightbulbs',67,68,2,1,'2022-04-04 14:44:10','2022-12-19 10:49:21',1,NULL,1,'#000000',NULL),(25,3,19,'travel_support',41,42,2,2,'2022-04-04 14:48:43','2022-05-04 09:11:01',1,NULL,1,'#000000',NULL),(26,3,15,'bike_carrier',27,28,2,3,'2022-04-04 15:50:46','2022-12-19 10:43:55',1,NULL,1,'#000000',NULL),(27,3,20,'tailgate_strips',51,52,2,1,'2022-04-04 15:59:28','2022-12-19 10:45:13',1,NULL,1,'#000000',NULL),(28,3,21,'dog_safety_belt',69,70,2,3,'2022-04-04 16:08:55','2022-04-04 16:08:55',1,NULL,1,NULL,NULL),(30,3,15,'cargo_safety',29,30,2,5,'2022-04-25 14:00:08','2022-12-19 10:44:26',1,NULL,1,'#000000',NULL),(31,3,15,'other_transport_accessories',31,32,2,6,'2022-04-25 14:00:47','2022-12-19 10:44:35',1,NULL,1,'#000000',NULL),(32,3,15,'roof_boxes',33,34,2,2,'2022-04-25 14:01:19','2022-12-19 10:44:49',1,NULL,1,'#000000',NULL),(33,3,15,'ski_rack',35,36,2,4,'2022-04-25 14:01:46','2022-12-19 10:44:14',1,NULL,1,'#000000',NULL),(34,3,15,'coupling',37,38,2,0,'2022-04-25 14:02:42','2022-10-24 14:25:29',0,NULL,0,'#000000',NULL),(35,3,20,'steps',53,54,2,4,'2022-04-25 14:03:09','2022-12-19 10:48:01',1,NULL,1,'#000000',NULL),(36,3,20,'wheel_accessories',55,56,2,0,'2022-04-25 14:03:56','2022-12-19 10:45:06',1,NULL,1,'#000000',NULL),(37,3,20,'mirror_cover',57,58,2,2,'2022-04-25 14:04:25','2022-12-19 10:45:21',1,NULL,1,'#000000',NULL),(38,3,20,'rims',59,60,2,3,'2022-04-25 14:04:47','2022-12-19 10:47:51',1,NULL,1,'#000000',NULL),(39,3,20,'pedals',61,62,2,5,'2022-04-25 14:05:07','2022-12-19 10:48:10',1,NULL,1,'#000000',NULL),(40,3,20,'other_design_accesories',63,64,2,6,'2022-04-25 14:05:30','2022-12-19 10:48:19',1,NULL,1,'#000000',NULL),(41,3,19,'spoilers',43,44,2,0,'2022-04-25 14:06:13','2022-12-19 10:48:35',1,NULL,1,'#000000',NULL),(42,3,19,'sunshade',45,46,2,1,'2022-04-25 14:06:36','2022-12-19 10:48:41',1,NULL,1,'#000000',NULL),(43,3,19,'other_confort_accesories',47,48,2,3,'2022-04-25 14:07:00','2022-12-19 10:49:05',1,NULL,1,'#000000',NULL),(44,3,21,'child_seat',71,72,2,7,'2022-04-25 14:07:53','2022-12-19 10:49:55',1,NULL,1,'#000000',NULL),(45,3,21,'security_kits',73,74,2,4,'2022-04-25 14:08:23','2022-12-19 10:49:33',1,NULL,1,'#000000',NULL),(46,3,21,'spare_wheel',75,76,2,6,'2022-04-25 14:08:48','2022-12-19 10:49:42',1,NULL,1,'#000000',NULL),(47,3,21,'tracking_and_alarme_kit',77,78,2,2,'2022-04-25 14:09:24','2022-05-12 09:07:18',0,NULL,0,'#000000',NULL),(48,3,21,'driving_assistance',79,80,2,0,'2022-04-25 14:09:54','2022-05-13 08:01:22',0,NULL,0,'#000000',NULL),(49,3,21,'license_plate',81,82,2,5,'2022-04-25 14:10:25','2022-05-05 09:28:35',0,NULL,0,'#000000',NULL),(50,3,22,'multimedia_cable',85,86,2,0,'2022-04-25 14:11:05','2022-12-19 10:50:16',1,NULL,1,'#000000',NULL),(51,3,22,'other_connectivity_accesories',87,88,2,1,'2022-04-25 14:11:33','2022-12-19 10:50:25',1,NULL,1,'#000000',NULL),(52,3,3,'winter',96,101,1,7,'2022-04-25 14:11:52','2022-12-19 10:20:05',1,NULL,1,'#000000',NULL),(53,3,52,'winter_wheel',97,98,2,1,'2022-04-25 14:12:18','2022-12-19 10:54:21',1,NULL,1,'#000000',NULL),(54,3,52,'snow_chains',99,100,2,0,'2022-04-25 14:12:42','2022-12-19 10:54:13',1,NULL,1,'#000000',NULL),(55,3,23,'charging_cables',91,92,2,0,'2022-04-25 14:13:13','2022-12-19 10:53:13',1,NULL,1,'#000000',NULL),(56,3,23,'storage_and_other_accessories',93,94,2,1,'2022-04-25 14:13:46','2022-12-19 10:53:24',1,NULL,1,'#000000',NULL),(57,3,3,'service',102,111,1,8,'2022-04-25 14:14:12','2022-12-19 10:20:13',1,NULL,1,'#000000',NULL),(58,3,57,'windscreen_washer',103,104,2,0,'2022-04-25 14:14:37','2022-12-19 10:56:56',1,NULL,1,'#000000',NULL),(59,3,57,'service_cases',105,106,2,1,'2022-04-25 14:15:05','2022-12-19 10:57:08',1,NULL,1,'#000000',NULL),(60,3,57,'service_products',107,108,2,2,'2022-04-25 14:15:25','2022-12-19 10:57:23',1,NULL,1,'#000000',NULL),(61,3,57,'other_service_accesories',109,110,2,3,'2022-04-25 14:15:50','2022-12-19 10:57:34',1,NULL,1,'#000000',NULL),(62,3,1,'seat_and_vehicle_cover',13,14,2,2,'2022-04-25 14:16:53','2022-05-13 08:01:08',0,NULL,0,'#000000',NULL),(63,3,1,'other_protection_accesories',15,16,2,8,'2022-04-25 14:17:23','2022-12-19 10:52:48',1,NULL,1,'#000000',NULL),(64,3,1,'engine_and_underbody_protection',17,18,2,5,'2022-04-25 14:18:05','2022-05-13 08:01:59',0,NULL,0,'#000000',NULL),(65,3,1,'interior_layout',19,20,2,0,'2022-04-25 14:18:42','2022-12-19 10:50:42',1,NULL,1,'#000000',NULL),(96,96,NULL,'op_printemps',1,2,0,0,'2022-05-11 09:53:52','2022-05-11 09:57:27',1,NULL,1,'#000000',NULL),(118,7,7,'california',2,7,1,0,'2022-05-23 14:14:39','2022-12-19 10:24:27',1,NULL,0,'#000000',NULL),(119,7,118,'california_T6_1_2019',3,4,2,0,'2022-05-23 14:15:35','2022-12-19 10:25:18',1,NULL,0,'#000000',NULL),(120,7,118,'california_T6_2015_2019',5,6,2,1,'2022-05-23 14:16:38','2022-12-19 10:25:25',1,NULL,0,'#000000',NULL),(121,7,7,'caravelle',8,13,1,1,'2022-05-23 14:17:10','2022-12-19 10:25:35',1,NULL,0,'#000000',NULL),(122,7,121,'caravelle_T6_1_2019',9,10,2,0,'2022-05-23 14:17:59','2022-12-19 10:25:41',1,NULL,0,'#000000',NULL),(123,7,121,'caravelle_T6_2015_2019',11,12,2,1,'2022-05-23 14:19:13','2022-12-19 10:25:48',1,NULL,0,'#000000',NULL),(124,7,7,'caddy',14,19,1,2,'2022-05-23 14:19:53','2022-12-19 10:25:56',1,NULL,0,'#000000',NULL),(125,7,124,'caddy_5',15,16,2,0,'2022-05-23 14:20:38','2022-12-19 10:26:03',1,NULL,0,'#000000',NULL),(126,7,124,'caddy_4',17,18,2,1,'2022-05-23 14:22:03','2022-12-19 10:26:10',1,NULL,0,'#000000',NULL),(127,7,7,'amarok',20,25,1,3,'2022-05-23 14:22:38','2022-12-19 10:26:17',1,NULL,0,'#000000',NULL),(128,7,127,'amarok_2009_2016',21,22,2,0,'2022-05-23 14:23:16','2022-12-19 10:26:25',1,NULL,0,'#000000',NULL),(129,7,127,'amarok_2016_2020',23,24,2,1,'2022-05-23 14:23:51','2022-12-19 10:26:38',1,NULL,0,'#000000',NULL),(130,7,7,'new_multivan',26,29,1,4,'2022-05-23 14:24:35','2022-05-23 14:24:35',1,NULL,0,'#000000',NULL),(131,7,130,'new_multivan_2021',27,28,2,0,'2022-05-23 14:25:06','2022-05-23 14:25:06',1,NULL,0,'#000000',NULL),(132,7,7,'multivan',30,35,1,5,'2022-05-23 14:25:37','2022-05-23 14:25:37',1,NULL,0,'#000000',NULL),(133,7,132,'multivan_T6_2015_2019',31,32,2,0,'2022-05-23 14:26:31','2022-05-23 14:26:31',1,NULL,0,'#000000',NULL),(134,7,132,'multivan_T6_1_2019_2021',33,34,2,1,'2022-05-23 14:27:45','2022-05-23 14:27:45',1,NULL,0,'#000000',NULL),(135,7,7,'Transporter_van',36,41,1,6,'2022-05-23 14:28:38','2022-05-23 14:28:38',1,NULL,0,'#000000',NULL),(136,7,135,'Transporter_van_T6_1_2019',37,38,2,0,'2022-05-23 14:29:32','2022-05-23 14:29:32',1,NULL,0,'#000000',NULL),(137,7,135,'Transporter_van_T6_2015_2019',39,40,2,1,'2022-05-23 14:30:14','2022-05-23 14:30:14',1,NULL,0,'#000000',NULL),(138,7,7,'caddy2',42,47,1,7,'2022-05-23 14:30:59','2022-05-23 14:30:59',1,NULL,0,'#000000',NULL),(139,7,138,'caddy2_cargo_2020',43,44,2,0,'2022-05-23 14:31:59','2022-05-23 14:31:59',1,NULL,0,'#000000',NULL),(140,7,138,'caddy2_van_2015_2019',45,46,2,1,'2022-05-23 14:33:26','2022-05-23 14:33:27',1,NULL,0,'#000000',NULL),(141,7,7,'crafet',48,51,1,8,'2022-05-23 14:33:52','2022-05-23 14:33:52',1,NULL,0,'#000000',NULL),(142,7,141,'crafter_2017',49,50,2,0,'2022-05-23 14:34:20','2022-05-23 14:34:20',1,NULL,0,'#000000',NULL),(143,7,7,'grand_california',52,55,1,9,'2022-05-23 14:34:52','2022-05-23 14:34:52',1,NULL,0,'#000000',NULL),(144,7,143,'grand_california_2019',53,54,2,0,'2022-05-23 14:35:21','2022-05-23 14:35:21',1,NULL,0,'#000000',NULL),(145,3,1,'seuil_de_porte',21,22,2,9,'2022-06-01 10:25:08','2022-12-19 10:52:57',1,NULL,1,'#000000',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxon_image`
--

LOCK TABLES `sylius_taxon_image` WRITE;
/*!40000 ALTER TABLE `sylius_taxon_image` DISABLE KEYS */;
INSERT INTO `sylius_taxon_image` (`id`, `owner_id`, `type`, `path`, `updated_at`, `synced_at`) VALUES (6,3,NULL,'21/f4/82f74c872ba81e8b7cdaaf270879.webp',NULL,NULL),(10,10,NULL,'c6/53/947be50359f2a57b5c9dca35d40a.jpg',NULL,NULL),(41,25,NULL,'ef/7f/a5207066da9a4d4cebe16fe96815.png',NULL,NULL),(42,118,NULL,'d5/60/1fabb2d208b37a16da4c9a49ee31.png',NULL,NULL),(43,119,NULL,'a3/11/bae319284aca3b921b0ba59c2fa9.png',NULL,NULL),(44,120,NULL,'be/7c/0275bf51a0144e79575b2389e305.png',NULL,NULL),(45,121,NULL,'77/dc/777257feb4aa5cc3074e38ee4c58.png',NULL,NULL),(46,122,NULL,'c8/8b/b7b1be4f43b6d4213a08f7943ed2.png',NULL,NULL),(47,123,NULL,'db/9b/da98900830c392a42b0021cbd64a.png',NULL,NULL),(48,124,NULL,'26/b7/c6347d48b93ec7952571ff808ac5.png',NULL,NULL),(49,125,NULL,'5f/ed/17cf88d7ed94e471986a78c02af8.png',NULL,NULL),(50,126,NULL,'b7/30/c110047fea51e362b2db471a67be.png',NULL,NULL),(51,127,NULL,'c9/94/6f04f2a0bf526467eb1698280c00.png',NULL,NULL),(52,128,NULL,'cf/72/9d3ec818137c30725da6894fb4db.png',NULL,NULL),(53,129,NULL,'5d/74/30fba35504f5f1af16b7378bdc28.png',NULL,NULL),(54,130,NULL,'9a/ce/5640784b321af87fed9590f059b2.png',NULL,NULL),(55,131,NULL,'66/8c/3e2ea3bcdf059419472f31d78a3b.png',NULL,NULL),(56,132,NULL,'e9/a1/159a9b4820845cfafe59b613a28c.png',NULL,NULL),(57,133,NULL,'e5/64/1475beafd9e591ce982dde421342.png',NULL,NULL),(58,134,NULL,'7b/3a/93089117266a524b463d8557d0ab.png',NULL,NULL),(59,135,NULL,'88/89/17d537bbf569f33cfbf141c01289.png',NULL,NULL),(60,136,NULL,'81/99/2b38d9f848d653e022f1c69dc24b.png',NULL,NULL),(61,137,NULL,'a6/92/f6f678d1327231ddabf008f7999b.png',NULL,NULL),(62,138,NULL,'00/39/f37279b869b1b767275d2928cc53.png',NULL,NULL),(63,139,NULL,'2f/54/c1d0c75e75739e32709dc1cfaef9.png',NULL,NULL),(64,140,NULL,'ff/30/b0d275f33e70ba6854ecf1801e20.png',NULL,NULL),(65,141,NULL,'06/51/665f8c2fb3c2cbe2bf0df0e4a4ec.png',NULL,NULL),(66,142,NULL,'38/67/10a09c5bc0cba15c2762808dde3e.png',NULL,NULL),(67,143,NULL,'38/03/a64983e5100d9139b1895c548909.png',NULL,NULL),(68,144,NULL,'95/c5/7b95e553e96c46ca1d6de0af1193.png',NULL,NULL),(69,15,'banner','fc/5d/433e0e44bc0c3601324abf40a9af.jpg',NULL,NULL),(70,20,NULL,'2e/79/35d7199dfaea094b09c786c46c12.jpg',NULL,NULL),(71,19,NULL,'21/0b/4368dd99d56638baef2038403e4e.jpg',NULL,NULL),(72,21,NULL,'20/7b/35ec78bf3a86b266fac28bac80ee.jpg',NULL,NULL),(73,22,NULL,'64/db/76ff55935029b87b5144412e1b79.jpg',NULL,NULL),(74,1,NULL,'1c/1d/4bb8ea1dc2bb113a670b4243626c.jpg',NULL,NULL),(75,23,NULL,'80/5e/23523b3838ec83da193134d7423b.jpg',NULL,NULL),(76,52,NULL,'34/d2/50769bbcfa92192a5878d1697504.jpg',NULL,NULL),(77,57,NULL,'fb/21/3740421851a6ccdd629cf2cf1d2f.jpg',NULL,NULL),(78,118,'banner','63/04/1dd6cfdc1154b86d2f6e92af5f47.jpg',NULL,NULL),(79,119,'banner','da/8d/6afe440b6e3e32de4d28a9182f84.jpg',NULL,NULL),(80,120,'banner','c5/de/a8a013ec6b18315ba117c5c1b1ee.jpg',NULL,NULL),(81,121,'banner','28/08/77338d688f7f3b33df29bcf239df.jpg',NULL,NULL),(82,122,'banner','43/27/3e0cdd5a782156f0722de12acf9a.jpg',NULL,NULL),(83,123,'banner','3c/3e/a08d189f6c3782ecf161a608af2a.jpg',NULL,NULL),(84,124,'banner','e6/de/5029ab5a42920a6373f64e5bcfb1.jpg',NULL,NULL),(85,125,'banner','1d/71/19da2934026038b83ff1f4758054.jpg',NULL,NULL),(86,126,'banner','7c/cb/99a1cee3cdb2edcc8ef67f8b131f.jpg',NULL,NULL),(87,127,'banner','7f/2e/573be21fdbd29c28d5cabb0ae02d.jpg',NULL,NULL),(88,128,'banner','d6/52/c7dd506af086b6683bcc65c97818.jpg',NULL,NULL),(89,129,'banner','e8/70/c31d36103f7e6d2ab32152fc0a3c.jpg',NULL,NULL),(90,130,'banner','aa/f2/2f5f793220bc1886fc93ed4f2efe.jpg',NULL,NULL),(91,131,'banner','f3/6c/06a942663f6a1dcd0d6cbd8ac0eb.jpg',NULL,NULL),(92,132,'banner','8b/7a/dc5513e00a878b0d24e21317989a.jpg',NULL,NULL),(93,133,'banner','7c/b5/4e8d3aaca8b13e1748046a68937a.jpg',NULL,NULL),(94,134,'banner','26/8d/9009d936712c3a59504cdb8b0e70.jpg',NULL,NULL),(95,135,'banner','6d/46/0f2248307c7060c40217a8ec6640.jpg',NULL,NULL),(96,136,'banner','5b/90/9863a4e74f16c7a84939cf0cab42.jpg',NULL,NULL),(97,137,'banner','33/6a/845b41f87a9fa82615a0137530f4.jpg',NULL,NULL),(98,138,'banner','56/17/c78f95f56554fa01bdcddc891c4e.jpg',NULL,NULL),(99,139,'banner','72/55/14c314d75d646a72d004157d476f.jpg',NULL,NULL),(100,140,'banner','04/c0/25af176160f7d65d466fd04d0aab.jpg',NULL,NULL),(101,141,'banner','df/10/be6f30cc2bb01b82a4731d956940.jpg',NULL,NULL),(102,142,'banner','84/ed/2bdd2022e01ce0edaa6b35c8bb45.jpg',NULL,NULL),(103,143,'banner','85/b1/9dd74d97705a46d5d029d38b93f7.jpg',NULL,NULL),(104,144,'banner','72/53/afa9ec1765d950a83efc09bb8f3d.jpg',NULL,NULL),(105,96,NULL,'ee/56/c2b5eb92e1fef6b5690dcbb846cb.jpg',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxon_translation`
--

LOCK TABLES `sylius_taxon_translation` WRITE;
/*!40000 ALTER TABLE `sylius_taxon_translation` DISABLE KEYS */;
INSERT INTO `sylius_taxon_translation` (`id`, `translatable_id`, `name`, `slug`, `description`, `locale`) VALUES (1,1,'Protection','protection',NULL,'fr_FR'),(2,2,'Bac de coffre','bac-de-coffre',NULL,'fr_FR'),(3,3,'Accessoires','accessoires',NULL,'fr_FR'),(7,7,'Vehicules','vehicules',NULL,'fr_FR'),(10,10,'Barres de toit et galeries','barres-de-toit-et-galeries',NULL,'fr_FR'),(11,11,'Tapis de coffre','tapis-de-coffre',NULL,'fr_FR'),(12,12,'Tapis de sol','tapis-de-sol',NULL,'fr_FR'),(13,13,'Protection de seuil chargement','protection-de-seuil-chargement',NULL,'fr_FR'),(14,14,'Pare-boue','pare-boue',NULL,'fr_FR'),(15,15,'Transport','transport',NULL,'fr_FR'),(19,19,'Confort','confort',NULL,'fr_FR'),(20,20,'Design','design',NULL,'fr_FR'),(21,21,'Sécurité','securite',NULL,'fr_FR'),(22,22,'Connectivité','connectivite',NULL,'fr_FR'),(23,23,'Éléctromobilité','electromobilite',NULL,'fr_FR'),(24,24,'Ampoules','ampoules',NULL,'fr_FR'),(25,25,'Supports de voyage','supports-de-voyage',NULL,'fr_FR'),(26,26,'Porte-vélos','porte-velos',NULL,'fr_FR'),(27,27,'Baguettes pour hayon','baguettes-pour-hayon',NULL,'fr_FR'),(28,28,'Ceinture de sécurité pour chien','ceinture-de-securite-pour-chien',NULL,'fr_FR'),(30,30,'Sécurisation du chargement','securisation-du-chargement',NULL,'fr_FR'),(31,31,'Autres accessoires de transport','autres-accessoires-de-transport',NULL,'fr_FR'),(32,32,'Coffre de toit','coffre-de-toit',NULL,'fr_FR'),(33,33,'Porte-skis','porte-skis',NULL,'fr_FR'),(34,34,'Attelage','attelage',NULL,'fr_FR'),(35,35,'Marchepied','marchepied',NULL,'fr_FR'),(36,36,'Accessoires de roue','accessoires-de-roue',NULL,'fr_FR'),(37,37,'Coque de rétroviseur','coque-de-retroviseur',NULL,'fr_FR'),(38,38,'Jantes','jantes',NULL,'fr_FR'),(39,39,'Pédalier','pedalier',NULL,'fr_FR'),(40,40,'Autres accessoires design','autres-accessoires-design',NULL,'fr_FR'),(41,41,'Déflecteurs','deflecteurs',NULL,'fr_FR'),(42,42,'Pare-soleil','pare-soleil',NULL,'fr_FR'),(43,43,'Autres accessoires confort','autres-accessoires-confort',NULL,'fr_FR'),(44,44,'Siège enfant','siege-enfant',NULL,'fr_FR'),(45,45,'Kit sécurité','kit-securite',NULL,'fr_FR'),(46,46,'Roue de secours','roue-de-secours',NULL,'fr_FR'),(47,47,'Boitier tracking et alarme','boitier-tracking-et-alarme',NULL,'fr_FR'),(48,48,'Aide à la conduite','aide-a-la-conduite',NULL,'fr_FR'),(49,49,'Plaque d\'immatriculation','plaque-d-immatriculation',NULL,'fr_FR'),(50,50,'Câbles multimédia','cable-multimedia',NULL,'fr_FR'),(51,51,'Autres accessoires connectivité','autres-accessoires-connectivite',NULL,'fr_FR'),(52,52,'Hiver','hiver',NULL,'fr_FR'),(53,53,'Roues Hiver','roues-hiver',NULL,'fr_FR'),(54,54,'Chaînes à neige','chaines-a-neige',NULL,'fr_FR'),(55,55,'Câbles de recharge','cables-de-recharge',NULL,'fr_FR'),(56,56,'Rangement et autres accessoires','rangement-et-autres-accessoires',NULL,'fr_FR'),(57,57,'Entretien','entretien',NULL,'fr_FR'),(58,58,'Lave-glace','lave-glace',NULL,'fr_FR'),(59,59,'Malettes d\'entretien','malettes-d-entretien',NULL,'fr_FR'),(60,60,'Produits d\'entretien','produits-d-entretien',NULL,'fr_FR'),(61,61,'Autres accessoires entretien','autres-accessoires-entretien',NULL,'fr_FR'),(62,62,'Housse de siège et couvre véhicule','housse-de-siege-et-couvre-vehicule',NULL,'fr_FR'),(63,63,'Autres accessoires protection','autres-accessoires-protection',NULL,'fr_FR'),(64,64,'Protection moteur et soubassement','protection-moteur-et-soubassement',NULL,'fr_FR'),(65,65,'Aménagement intérieur','amenagement-interieur',NULL,'fr_FR'),(96,96,'Nos promotions','nos-promotions',NULL,'fr_FR'),(118,118,'California','california',NULL,'fr_FR'),(119,119,'T6.1 (depuis 2019)','california-t6-1-depuis-2019',NULL,'fr_FR'),(120,120,'T6 (2015-2019)','california-t6-2015-2019',NULL,'fr_FR'),(121,121,'Caravelle','vehicules-caravelle',NULL,'fr_FR'),(122,122,'T6.1 (depuis 2019)','vehicules-caravelle-t6-1-depuis-2019',NULL,'fr_FR'),(123,123,'T6 (2015-2019)','vehicules-caravelle-t6-2015-2019',NULL,'fr_FR'),(124,124,'Caddy','caddy',NULL,'fr_FR'),(125,125,'5 (depuis 2019)','caddy-5-depuis-2019',NULL,'fr_FR'),(126,126,'4 (depuis 2015)','caddy-4-depuis-2015',NULL,'fr_FR'),(127,127,'Amarok','amarok',NULL,'fr_FR'),(128,128,'(2009-2016)','amarok-2009-2016',NULL,'fr_FR'),(129,129,'(2016-2020)','amarok-2016-2020',NULL,'fr_FR'),(130,130,'Nouveau Multivan','nouveau-multivan',NULL,'fr_FR'),(131,131,'(depuis 2021)','nouveau-multivan-depuis-2021',NULL,'fr_FR'),(132,132,'Multivan','multivan',NULL,'fr_FR'),(133,133,'T6 (2015-2019)','multivan-2015-2019',NULL,'fr_FR'),(134,134,'T6.1 (2019-2021)','multivan-t6-1-2019-2021',NULL,'fr_FR'),(135,135,'Transporter Van','transporter-van',NULL,'fr_FR'),(136,136,'T6.1 (depuis 2019)','transporter-van-t6-1-depuis-2019',NULL,'fr_FR'),(137,137,'T6 (2015-2019)','transporter-van-t6-2015-2019',NULL,'fr_FR'),(138,138,'Caddy','caddyCV',NULL,'fr_FR'),(139,139,'Cargo (depuis 2020)','caddy-cargo-depuis-2020',NULL,'fr_FR'),(140,140,'Van (2015-2019)','caddy-van-2015-2019',NULL,'fr_FR'),(141,141,'Crafter','crafter',NULL,'fr_FR'),(142,142,'(depuis 2017)','crafter-depuis-2017',NULL,'fr_FR'),(143,143,'Grand California','grand-california',NULL,'fr_FR'),(144,144,'(depuis 2019)','grand-california-depuis-2019',NULL,'fr_FR'),(145,145,'Seuil de porte','seuil-de-porte',NULL,'fr_FR');
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

-- Dump completed on 2023-10-21 20:37:11
