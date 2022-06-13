#날 짜 : 2022/06/13
#이 름 : 정현기 
#내 용 : SQL 기본실습

#실습하기 1-1
CREATE DATABASE `mydb`;
DROP DATABASE `mydb`;


#실습하기 1-2
CREATE TABLE `User1`(
`uid` VARCHAR(10),
`name`VARCHAR(10),
`hp` CHAR(13),
`age` INT
);

DROP TABLE `User1`


#실습하기 1-3


INSERT INTO `user1` VALUES('A101','김유신','010-1234-1111',25);
INSERT INTO `user1` VALUES('A102','김춘추','010-1234-2222',23);
INSERT INTO `user1` VALUES('A103','장보고','010-1234-3333',32);
INSERT INTO `user1` (`uid`,`name`,`age`) values('A104','강감찬',45);
INSERT INTO `user1` SET `uid`='A105', `name`='이순신', `hp`='010-1234-5555';
INSERT INTO `user1` SET
								`uid`  = 'A105';
								`name` = '이순신';
								`hp`   = '010-1234-5555';


#  *의 의미는 ALL
#실습하기 1-4
SELECT * FROM `User1`
SELECT * FROM `User1` WHERE `uid`='A101';
SELECT * FROM `User1` WHERE `name`='김춘추';
SELECT * FROM `User1` WHERE `age`>30;
SELECT `uid`,`name`,`age` FROM `User1`;


#실습하기 1-5

UPDATE `User1` SET `hp`='010-1234-4444' WHERE `uid`='A104';
UPDATE `User1` SET `age` = 51 WHERE `uid`='A105';
UPDATE `User1` SET `hp`='010-1234-1001',`age`=27 WHERE `uid`='A101';
#실습하기 1-6

DELETE FROM `User1` WHERE `uid`='A102'
DELETE FROM `User1` WHERE `uid`='A102' AND `age`=25;
DELETE FROM `user1` WHERE `age` >= 30;