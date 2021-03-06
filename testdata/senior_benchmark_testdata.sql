-- MariaDB dump 10.17  Distrib 10.5.4-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: senior_benchmark_testdata
-- ------------------------------------------------------
-- Server version	10.5.4-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `reaction_time`
--

DROP TABLE IF EXISTS `reaction_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reaction_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(256) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `t1` float DEFAULT NULL,
  `t2` float DEFAULT NULL,
  `t3` float DEFAULT NULL,
  `t4` float DEFAULT NULL,
  `t5` float DEFAULT NULL,
  `resolution` float DEFAULT NULL,
  `t_avg` float GENERATED ALWAYS AS ((`t1` + `t2` + `t3` + `t4` + `t5`) / 5.0) STORED,
  `t_sd` float GENERATED ALWAYS AS (sqrt((pow(`t1` - `t_avg`,2) + pow(`t2` - `t_avg`,2) + pow(`t3` - `t_avg`,2) + pow(`t4` - `t_avg`,2) + pow(`t5` - `t_avg`,2)) / 4.0)) STORED,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reaction_time`
--

LOCK TABLES `reaction_time` WRITE;
/*!40000 ALTER TABLE `reaction_time` DISABLE KEYS */;
INSERT INTO `reaction_time` VALUES (25,'Adam','2020-08-07 18:21:22',321.61,312.965,310.93,318.395,275.585,NULL,307.897,18.5553),(26,'Adam','2020-08-07 21:38:30',322.905,313.155,348.185,339.92,326.8,NULL,330.193,13.9037),(27,'Adam','2020-08-07 21:45:36',298.135,276.94,287.445,335.215,285.61,NULL,296.669,22.8285),(28,'Adam','2020-08-07 21:46:33',303.62,354.985,304.31,314.215,333.8,NULL,322.186,22.0139),(29,'Adam','2020-08-07 22:28:41',300.13,277.685,297.13,288.675,198.265,NULL,272.377,42.3359),(30,'Adam','2020-08-07 22:31:22',292.755,487.52,280.13,279.23,340.245,NULL,335.976,88.3045),(31,'Adam','2020-08-07 22:32:16',381.78,266.005,280.235,262.295,507.03,NULL,339.469,105.745),(32,'Adam','2020-08-07 22:34:22',387.55,380.895,182.58,279.89,351.475,NULL,316.478,86.1582),(33,'Adam','2020-08-08 00:22:42',482.64,441.77,465.9,428.5,113.63,NULL,386.488,153.968),(34,'Adam','2020-08-08 00:53:44',285.165,367.385,309.065,294.225,438.625,NULL,338.893,64.2843),(35,'Adam','2020-08-08 01:49:20',472.425,480.68,276.8,432.23,107.725,NULL,353.972,160.315),(36,'Adam','2020-08-08 01:49:54',432.935,451.01,69.665,110.165,494.37,NULL,311.629,204.127),(37,'Adam','2020-08-08 01:53:44',248.585,522.565,454.625,411.515,473.49,NULL,422.156,104.895),(38,'Adam','2020-08-08 01:54:01',384.45,2235.62,469.575,595.07,3558.14,NULL,1448.57,1404.37),(39,'Adam','2020-08-08 02:02:39',396.97,388.33,108.95,271.26,1.03,NULL,233.308,174.41),(40,'Adam','2020-08-08 02:03:52',280.82,271.66,14.395,286.575,311.015,NULL,232.893,123.01),(41,'Adam','2020-08-08 04:01:32',305.485,2.945,259.33,179.745,127.24,NULL,174.949,118.368),(42,'Adam','2020-08-08 20:36:56',304.995,23.135,292.5,283.335,282.03,NULL,237.199,120.017),(43,'Adam','2020-08-08 20:43:23',399.86,445.415,297.605,299.67,266.54,NULL,341.818,76.6473),(44,'Adam','2020-08-08 21:11:13',373.975,443.97,222.455,404.74,91.09,NULL,307.246,147.109),(45,'Adam','2020-08-08 21:14:03',461.85,244.745,241.945,307.53,172.005,NULL,285.615,109.572),(46,'Adam','2020-08-08 21:39:46',405.07,101.07,335.815,112.83,4.8,NULL,191.917,170.045),(47,'Adam','2020-08-08 21:42:38',616.63,432.515,386.165,297.675,386.22,NULL,423.841,118.317),(48,'Adam','2020-08-08 21:48:45',248.395,179.335,95.175,291.36,330.03,NULL,228.859,93.3376),(49,'Adam','2020-08-08 21:49:13',265.135,299.285,4.635,20.86,171.025,NULL,152.188,135.802),(50,'Adam','2020-08-08 21:58:49',295.885,296.81,291.045,301.73,277.315,NULL,292.557,9.3262),(52,'Adam','2020-08-08 22:11:35',258.975,293.625,297.57,235.82,296.945,NULL,276.587,27.9158),(53,'Adam','2020-08-08 22:16:24',301.89,265.265,270.805,21.84,216.395,NULL,215.239,112.364),(54,'Adam','2020-08-08 22:18:51',314.46,268.385,249.885,105.075,279.6,NULL,243.481,80.8703),(55,NULL,'2020-08-09 05:37:21',241.755,229.55,234.39,54.075,239.335,NULL,199.821,81.6097),(56,NULL,'2020-08-09 05:39:20',308.775,270.055,276.66,286.73,398.53,NULL,308.15,52.6085),(57,NULL,'2020-08-09 05:39:35',1295.39,288.17,432.235,394.8,223.22,NULL,526.763,437.665),(58,NULL,'2020-08-09 05:40:02',5635.48,1042.18,388.55,232.22,197.165,NULL,1499.12,2337.29),(59,NULL,'2020-08-09 05:40:22',818.3,1171.82,1393.98,2188.74,42.925,NULL,1123.15,785.974),(60,NULL,'2020-08-09 15:07:08',257.475,140.01,211.265,139.105,38.91,NULL,157.353,83.0564),(61,NULL,'2020-08-09 15:08:51',243.355,145.18,231.125,59.145,170.47,NULL,169.855,74.1994),(62,NULL,'2020-08-09 17:06:37',277.13,297.075,271.305,318.6,295.975,NULL,292.017,18.6984),(63,NULL,'2020-08-09 17:07:16',252.24,14.175,237.72,248.365,220.225,NULL,194.545,101.59),(64,NULL,'2020-08-09 17:48:13',283.93,235.72,436.37,226.7,255.325,NULL,287.609,86.0058),(65,NULL,'2020-08-10 02:21:18',288.705,251.29,217.46,184.04,250.29,NULL,238.357,39.4702),(66,NULL,'2020-08-10 02:24:24',283,284,296,302,39,NULL,240.8,113.096),(67,NULL,'2020-08-12 06:21:02',320,260,300,320,460,NULL,332,75.6307),(68,NULL,'2020-08-12 06:28:15',290,290,320,300,290,NULL,298,13.0384),(69,NULL,'2020-08-12 06:29:31',322,317,290,288,267,NULL,296.8,22.665),(70,NULL,'2020-08-12 06:32:15',292,278,310,228,328,NULL,287.2,38.0684),(71,NULL,'2020-08-12 06:33:17',310.9,322.9,358.7,277.7,292.1,NULL,312.46,31.1141),(72,NULL,'2020-08-12 06:59:12',322.4,335.4,259.3,403.9,308.6,0.1,325.92,52.2526),(73,NULL,'2020-08-12 07:00:05',335,893,324,263,383,1,439.6,257.035),(74,NULL,'2020-08-12 14:49:36',321.25,242.25,555.5,140,263,0.25,304.4,154.87),(75,NULL,'2020-08-12 14:50:12',274.66,321.333,144.973,295.867,207.809,0.000999998,248.928,71.7727),(76,NULL,'2020-08-12 14:51:04',18,127,50,279,389,1,172.6,157.449),(77,NULL,'2020-08-12 14:56:41',332,266,290,257,272,1,283.4,29.7288),(78,NULL,'2020-08-12 15:07:28',563,296,346,303,275,1,356.6,118.234),(79,NULL,'2020-08-12 18:50:33',81,290,294,8,314,1,197.4,142.235),(80,NULL,'2020-08-12 19:25:27',269,267,659,285,279,1,351.8,171.887),(81,NULL,'2020-08-12 20:34:48',321,273,282,265,638,1,355.8,159.213),(82,NULL,'2020-08-12 20:36:03',363,315,343,963,247,1,446.2,292.211),(83,NULL,'2020-08-12 23:38:37',295,290,476,372,316,1,349.8,77.6865),(84,NULL,'2020-08-12 23:54:36',339,312,307,351,334,1,328.6,18.5822),(85,NULL,'2020-08-13 00:00:40',1090,557,604,627,287,1,633,289.49),(86,NULL,'2020-08-13 00:01:04',1090,557,604,627,1293,1,834.2,334.923),(87,NULL,'2020-08-13 00:03:10',1090,557,604,627,352,1,646,270.933),(88,NULL,'2020-08-13 02:12:08',343,306,299,504,298,1,350,88.0426),(89,NULL,'2020-08-13 02:54:38',351,343,355,330,350,1,345.8,9.83362),(90,NULL,'2020-08-13 02:56:25',351,343,355,330,2949,1,865.6,1164.7),(91,NULL,'2020-08-13 03:21:35',333,340,273,307,537,1,358,103.46),(92,NULL,'2020-08-13 20:34:07',301,382,323,342,282,1,326,38.607),(93,NULL,'2020-08-13 20:35:24',229,298,496,276,300,1,319.8,102.563),(94,NULL,'2020-08-13 20:59:52',281,486,654,751,218,1,478,230.205),(95,NULL,'2020-08-13 21:52:09',301,537,293,469,357,1,391.4,107.54),(96,NULL,'2020-08-17 01:38:34',203.38,170.625,140.135,150.05,102.61,0.00499992,153.36,37.2877),(97,NULL,'2020-08-17 01:45:37',232.265,508.73,214.205,2229.61,877.025,0.00499992,812.367,836.551),(98,NULL,'2020-08-17 01:46:00',300.455,348.255,373.445,251.695,249.21,0.00500004,304.612,55.9678),(99,NULL,'2020-08-17 01:46:38',220.69,215.825,194.34,2.385,239.695,0.00499992,174.587,97.6074),(100,NULL,'2020-08-17 01:53:07',358.955,426.195,221.085,201.34,232.49,0.00499992,288.013,98.9967),(101,NULL,'2020-08-17 01:53:37',206.055,277,230.88,211.165,436.065,0.00499992,272.233,95.7634),(102,NULL,'2020-08-17 01:57:24',264.58,325.785,219.35,369.095,369.475,0.00499992,309.657,66.2542),(103,NULL,'2020-08-17 02:01:02',350.015,261.105,305.815,232.56,258.38,0.00499992,281.575,46.4519),(104,NULL,'2020-08-17 04:03:20',375.92,289.155,292.5,683.53,283.355,0.00499992,384.892,171.228),(105,NULL,'2020-08-17 17:33:31',322.895,421.41,271.84,463.195,309.39,0.005,357.746,80.7857),(106,NULL,'2020-08-19 03:56:24',1033.47,300.39,285.375,262.955,227.015,0.00499999,421.841,343.025),(107,NULL,'2020-08-19 20:02:56',381.12,300.335,306.105,315.77,363.82,0.00499998,333.43,36.5777),(108,NULL,'2020-08-19 20:36:18',338.695,332.035,442.085,253.98,297.33,0.00500001,332.825,69.7303),(109,NULL,'2020-08-19 22:51:58',274.5,274.34,618.855,275.285,285.68,0.00499998,345.732,152.755),(110,NULL,'2020-08-19 22:52:35',339.31,257.37,245.73,19.49,234.46,0.00499998,219.272,119.063),(111,NULL,'2020-08-19 22:52:54',252.495,235.1,443.67,279.51,266.83,0.00499998,295.521,84.4535),(112,NULL,'2020-08-19 23:15:25',251.26,253.9,524.985,291.075,231.155,0.00499998,310.475,121.85),(113,NULL,'2020-08-19 23:18:10',293.63,273.16,304.12,331.635,379.92,0.00499998,316.493,41.2487),(114,NULL,'2020-08-19 23:27:16',301.495,872.095,480.065,281.025,243.92,0.00499998,435.72,260.348),(115,NULL,'2020-08-19 23:27:53',273.795,585.575,349.115,358.9,454.44,0.00500001,404.365,119.909),(116,NULL,'2020-08-19 23:29:23',4024.45,252.335,707,392.185,808.645,0.00500001,1236.92,1574.61),(117,NULL,'2020-08-19 23:34:30',5124.12,832.63,2031.96,235.96,363.485,0.00499998,1717.63,2031.95),(118,NULL,'2020-08-20 00:22:46',280.735,570.36,290.355,409.895,278.79,0.00500001,366.027,126.775),(119,NULL,'2020-08-20 00:46:12',322.265,277.97,240.29,443.605,284.96,0.00499998,313.818,78.1669),(120,NULL,'2020-08-20 01:02:22',1839.26,434.055,461.49,441.23,369.78,0.00499998,709.163,632.676),(121,NULL,'2020-08-20 01:15:17',4561.85,2833.93,452.05,325.33,357.925,0.00499998,1706.22,1918.6),(122,NULL,'2020-08-20 20:14:57',345.475,270.325,250.05,258.44,246.625,0.00499998,274.183,40.8874),(123,NULL,'2020-08-20 20:21:05',341.16,247.495,245.425,301.77,260.1,0.00499998,279.19,41.4102),(124,NULL,'2020-08-20 20:22:19',291.075,281.275,290.075,270.9,253.125,0.00499998,277.29,15.765),(125,NULL,'2020-08-20 21:48:09',288.455,298.52,268.695,269.795,236.9,0.00499998,272.473,23.5624);
/*!40000 ALTER TABLE `reaction_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'senior_benchmark_testdata'
--
/*!50003 DROP PROCEDURE IF EXISTS `summarizeReactionTime` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `summarizeReactionTime`(IN param_id INT)
BEGIN
  DECLARE n INT;
  DECLARE mean FLOAT;
  DECLARE sd FLOAT;

  DECLARE min FLOAT;
  DECLARE q1 FLOAT;
  DECLARE median FLOAT;
  DECLARE q3 FLOAT;
  DECLARE max FLOAT;

  DECLARE binStart FLOAT;
  DECLARE bins INT;
  DECLARE binWidth FLOAT;

  DROP TABLE IF EXISTS unpivoted_times;
  CREATE TEMPORARY TABLE unpivoted_times (
    SELECT t1 t
    FROM reaction_time
    UNION ALL
    SELECT t2 t
    FROM reaction_time
    UNION ALL
    SELECT t3 t
    FROM reaction_time
    UNION ALL
    SELECT t4 t
    FROM reaction_time
    UNION ALL
    SELECT t5 t
    FROM reaction_time
  );

  SELECT count(*) OVER (),
    avg(t) OVER (),
    stddev_samp(t) OVER (),
    min(t) OVER (),
    percentile_cont(0.25) WITHIN GROUP (ORDER BY t) OVER (),
    percentile_cont(0.5) WITHIN GROUP (ORDER BY t) OVER (),
    percentile_cont(0.75) WITHIN GROUP (ORDER BY t) OVER (),
    max(t) OVER ()
  INTO n, mean, sd, min, q1, median, q3, max
  FROM unpivoted_times
  LIMIT 1;

  SET
    binStart = 0.0,
    
    binWidth = round(2 * (q3 - q1) * pow(n, -1.0 / 3.0), 2),
    bins = ceil((max - binStart) / binWidth);

  SELECT n, mean, sd, min, q1, median, q3, max;
  SELECT bins, binStart, binWidth;

  SELECT floor((t - binStart) / binWidth) AS bin,
    count(*) / n AS freq
  FROM unpivoted_times
  GROUP BY bin;

  IF ISNULL(param_id) THEN
    SELECT NULL WHERE NULL;
  ELSE
    SELECT *
    FROM (
      SELECT id,
        t1,
        t2,
        t3,
        t4,
        t5,
        t_avg AS mean,
        t_sd AS sd,
        percent_rank() OVER (ORDER BY t_avg) AS meanQuantile,
        percent_rank() OVER (ORDER BY t_sd) AS sdQuantile
      FROM reaction_time
    ) AS ranks
    WHERE id = param_id;
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-21 19:27:41
