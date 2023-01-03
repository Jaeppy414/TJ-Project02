-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.10.2-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- camping_db 데이터베이스 구조 내보내기
DROP DATABASE IF EXISTS `camping_db`;
CREATE DATABASE IF NOT EXISTS `camping_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `camping_db`;

-- 테이블 camping_db.member 구조 내보내기
DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `id` varchar(30) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(500) NOT NULL,
  `phone` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 camping_db.member:~7 rows (대략적) 내보내기
DELETE FROM `member`;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`id`, `pass`, `name`, `email`, `phone`) VALUES
	('admin', '1234', '관리자', 'admin123@gmail.com', '123-1234-1234'),
	('dlwogur', '1234', '이재혁', 'wogurdl0201@gmail.com', '010-4555-6142'),
	('test1', '1111', '이재필', 'swing0414@gmail.com', '010-3005-6142'),
	('test2', '2222', '김도형', 'rlaehgud123@naver.com', '010-2222-2222'),
	('test3', '3333', '테스트3회원', 'test3@test.com', '010-3333-3333'),
	('test6', '6666', '123123', 'test1123123@gmail.com', '111-1111-1111'),
	('tjoeun1', '1234', '더조은', 'tjoeun123@nate.com', '123-1234-1234');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

-- 테이블 camping_db.multiboard 구조 내보내기
DROP TABLE IF EXISTS `multiboard`;
CREATE TABLE IF NOT EXISTS `multiboard` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `id` varchar(30) NOT NULL,
  `postdate` datetime DEFAULT current_timestamp(),
  `visitcount` int(11) NOT NULL DEFAULT 0,
  `b_flag` varchar(20) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 camping_db.multiboard:~6 rows (대략적) 내보내기
DELETE FROM `multiboard`;
/*!40000 ALTER TABLE `multiboard` DISABLE KEYS */;
INSERT INTO `multiboard` (`num`, `title`, `content`, `id`, `postdate`, `visitcount`, `b_flag`) VALUES
	(1, '테스트용', '테스트용 내용입니다', 'test2', '2022-12-26 17:09:31', 21, 'free'),
	(2, '테스트용2', '테스트용 내용2입니다', 'test3', '2022-12-26 23:56:24', 8, 'free'),
	(305, '공지사항] 이얍', '공지가 되어야 하고\r\n\r\n자유게시판에서는 안 보여야 함', 'admin', '2022-12-28 17:45:57', 19, 'notice'),
	(306, '123', '123', 'admin', '2022-12-28 23:00:52', 15, 'free'),
	(309, '123', '123', 'test1', '2022-12-29 10:51:48', 3, '0'),
	(310, '12341234', '132413241234', 'admin', '2022-12-29 14:47:07', 0, '0');
/*!40000 ALTER TABLE `multiboard` ENABLE KEYS */;

-- 테이블 camping_db.mvcboard 구조 내보내기
DROP TABLE IF EXISTS `mvcboard`;
CREATE TABLE IF NOT EXISTS `mvcboard` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `postdate` datetime DEFAULT current_timestamp(),
  `ofile` varchar(200) DEFAULT NULL,
  `sfile` varchar(30) DEFAULT NULL,
  `downcount` int(5) NOT NULL DEFAULT 0,
  `pass` varchar(50) NOT NULL,
  `visitcount` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 camping_db.mvcboard:~1 rows (대략적) 내보내기
DELETE FROM `mvcboard`;
/*!40000 ALTER TABLE `mvcboard` DISABLE KEYS */;
INSERT INTO `mvcboard` (`idx`, `name`, `title`, `content`, `postdate`, `ofile`, `sfile`, `downcount`, `pass`, `visitcount`) VALUES
	(1, '이재필', '첨부형 파일 제목', '첨부형 파일 내용', '2022-12-27 17:44:29', '', '', 0, '1234', 0);
/*!40000 ALTER TABLE `mvcboard` ENABLE KEYS */;

-- 테이블 camping_db.tb_int 구조 내보내기
DROP TABLE IF EXISTS `tb_int`;
CREATE TABLE IF NOT EXISTS `tb_int` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `num1` tinyint(3) unsigned NOT NULL,
  `num2` smallint(6) NOT NULL,
  `num3` mediumint(9) DEFAULT 100,
  `num4` bigint(20) DEFAULT NULL,
  `fnum1` float(10,5) NOT NULL,
  `fnum2` double(20,10) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 camping_db.tb_int:~0 rows (대략적) 내보내기
DELETE FROM `tb_int`;
/*!40000 ALTER TABLE `tb_int` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_int` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
