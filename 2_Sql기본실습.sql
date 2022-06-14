#날짜 : 2022/06/14
#이름 : 정현기
#내용 : 테이블 설정 실습

#실습하기 2-1
Create TABLE `User2` (
 `uid` VARCHAR(10) PRIMARY KEY,
 `name` VARCHAR(10),
 `hp` CHAR(13),
 `age` TINYINT
);

INSERT into `user2` VALUES ('a101','김유신','010-1234-1111',25);
INSERT into `user2` VALUES ('a102','김춘추','010-1234-2222',23);
INSERT into `user2` VALUES ('a103','장보고','010-1234-3333',35);
INSERT into `user2` VALUES ('a104','강감찬','010-1234-4444',45);
INSERT into `user2` VALUES ('a105','이순신','010-1234-5555',51);
INSERT into `user2` VALUES ('a106','정약용','010-1234-3333',42);


#실습하기 2-2
Create TABLE `User3` (
 `uid` VARCHAR(10) PRIMARY KEY,
 `name` VARCHAR(10),
 `hp` CHAR(13) UNIQUE, 
 `age` TINYINT
);

INSERT into `user3` VALUES ('a101','김유신','010-1234-1111',25);
INSERT into `user3` VALUES ('a102','김춘추','010-1234-2222',23);
INSERT into `user3` VALUES ('a103','장보고','010-1234-3333',35);
INSERT into `user3` VALUES ('a104','강감찬','010-1234-4444',45);
INSERT into `user3` VALUES ('a105','이순신','010-1234-5555',51);
INSERT into `user3` VALUES ('a106','정약용','010-1234-6666',42);
#primary key 는 2번 지정되지않는다. 따라서 대체 고유키인 unique를 사용

#실습하기 2-3

CREATE table `Parent` (
 `uid` VARCHAR(10) PRIMARY KEY,
 `name` VARCHAR(10),
 `hp` CHAR(13)UNIQUE
 );

INSERT INTO `parent` VALUES ('p101','김유신','010-1234-1001');
INSERT INTO `parent` VALUES ('p102','장보고','010-1234-1002');
INSERT INTO `parent` VALUES ('p103','이순신','010-1234-1003');
INSERT INTO `parent`(`uid`,`name`) VALUES ('p104','이미숙');


#실습하기 2-4
CREATE table `User4` (
 `uid` VARCHAR(10) PRIMARY KEY,
 `name` VARCHAR(10),
 `hp` CHAR(13) UNIQUE,
 `pid` VARCHAR(10),
  FOREIGN KEY(`pid`) REFERENCES `Parent`(`uid`)
 );
 #pid값은 외래키로 parent테이블의 uid 참조값만 쓸수있다. 그외는 못쓴다.(한정해버림)
 
INSERT INTO `User4` VALUES('c101', '김천술','010-1234-1111','p101');
INSERT INTO `User4` VALUES('c102', '장철수','010-1234-2222','p102');
INSERT INTO `User4` VALUES('c103', '이철수','010-1234-3333','p103');
INSERT INTO `User4` VALUES('c104', '이강수','010-1234-4444','p101');


#실습하기 2-5
#seq는 자동번호 컬럼이다.
create TABLE `User5`(
 `seq` INT AUTO_INCREMENT PRIMARY KEY,
 `name` VARCHAR(10),
 `gender` TINYINT,
 `age` INT,
 `addr` VARCHAR(255)
 );

INSERT INTO `user5`(`name`,`gender`,`age`,`addr`) VALUES ('김유신',1,25,'김해시');
INSERT INTO `user5`(`name`,`gender`,`age`,`addr`) VALUES ('김춘추',1,21,'경주시');
INSERT INTO `user5`(`name`,`gender`,`age`,`addr`) VALUES ('선덕여왕',2,35,'경주시');
INSERT INTO `user5`(`name`,`gender`,`age`,`addr`) VALUES ('장보고',1,31,'완도시');
INSERT INTO `user5`(`name`,`gender`,`age`,`addr`) VALUES ('심사임당',2,42,'강릉시');
INSERT INTO `user5`(`name`,`gender`,`age`,`addr`) VALUES ('허난설현',2,27,'광주시');

INSERT INTO `user5`(`gender`,`addr`) VALUES (2,'광주시');
INSERT INTO `user5`(`gender`,`addr`) VALUES (1,'부산시');


#실습하기 2-6
create TABLE `User6`(
 `seq` INT AUTO_INCREMENT PRIMARY KEY,
 `name` VARCHAR(10) NOT NULL,
 `gender` TINYINT,
 `age` INT DEFAULT 1,
 `addr` VARCHAR(255)
 );
 
INSERT INTO `user6`(`name`,`gender`,`age`,`addr`) VALUES ('김유신',1,25,'김해시');
INSERT INTO `user6`(`name`,`gender`,`age`,`addr`) VALUES ('김춘추',1,21,'경주시');
INSERT INTO `user6`(`name`,`gender`,`age`,`addr`) VALUES ('선덕여왕',2,35,'경주시');
INSERT INTO `user6`(`name`,`gender`,`age`,`addr`) VALUES ('장보고',1,31,'완도시');
INSERT INTO `user6`(`name`,`gender`,`age`,`addr`) VALUES ('심사임당',2,42,'강릉시');
INSERT INTO `user6`(`name`,`gender`,`age`,`addr`) VALUES ('허난설현',2,27,'광주시');

INSERT INTO `user6`(`gender`,`addr`) VALUES (2,'광주시');
INSERT INTO `user6`(`name`,`gender`,`addr`) VALUES ('김철수',1,'부산시');





#실습하기 2-7
CREATE TABLE `user7` LIKE `user6`;
CREATE INTO `user7` SELECT * FROM `user6`;
