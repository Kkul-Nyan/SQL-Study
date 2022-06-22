
#날짜 : 0000/00/00
#이름 : 김철학
#내용 : 교재 6장 데이터베이스 객체 작성과 삭제

###############################
#26강 테이블 작성,삭제,변경
###############################
#p234
CREATE TABLE `sample62` (
`no` INT,
`a` VARCHAR(20),
`b` DATE,
`newcol` VARCHAR(20)
);

INSERT INTO `sample62`(`no`,`a`,`b`) VALUES (1,'10ABC','2014-01-01');
INSERT INTO `sample62`(`no`,`a`,`b`) VALUES (2,'20ABC','2014-01-02');
SELECT * FROM `sample62`

DROP TABLE `sample62`

CREATE TABLE `sample62` (
`no` INTEGER NOT NULL,
`a` VARCHAR(30),
`b` DATE
);

DESC `sample62`;

TRUNCATE TABLE `sample62` #테이블 내부 몸든정보삭제 , delete를 where없이 쓰는것과 동일하지만 훨씬빠르다.

#p237
ALTER TABLE `sample62` ADD newcol INTEGER;
DESC `sample62`;

#p238
ALTER TABLE `sample62` MODIFY `newcol` VARCHAR(20);
DESC `sample62`;

#p239
ALTER TABLE `sample62` CHANGE `newcol` `c` VARCHAR(20);
DESC `sample62`;

ALTER TABLE  `sample62` DROP `c`;
DESC `sample62`;

###############################
#27강 제약
###############################
#p243
CREATE TABLE `sample631` (
`a` INTEGER NOT NULL,
`b` INTEGER NOT NULL UNIQUE,
`c` VARCHAR(30)
);

CREATE TABLE `sample632` (
`no` INTEGER NOT NULL,
`sub_no`INTEGER NOT NULL,
`name`VARCHAR(30), 
PRIMARY KEY(NO,sub_no)
);

DROP TABLE `sample632`

#p244
CREATE TABLE `sample632` (
`no` INTEGER NOT NULL,
`sub_no`INTEGER NOT NULL,
`name`VARCHAR(30), 
CONSTRAINT pkey_sample	PRIMARY KEY(NO,sub_no)
);

ALTER TABLE `sample631` MODIFY c VARCHAR(30) NOT NULL;

#p245
ALTER TABLE `sample631` ADD CONSTRAINT pkey_sample631 PRIMARY KEY(a);
ALTER TABLE `sample631` MODIFY c VARCHAR(30);
ALTER TABLE `sample631` DROP CONSTRAINT pkey_sample631;
ALTER TABLE `sample631` DROP PRIMARY KEY;

#p246
CREATE TABLE `sample634` (
`p` INTEGER NOT NULL,
`a` VARCHAR(30),
CONSTRAINT pkey_sample634 PRIMARY KEY(p)
);

#p247
INSERT INTO `sample634` VALUES (1,'첫째줄');
INSERT INTO `sample634` VALUES (2,'둘재줄');
INSERT INTO `sample634` VALUES (3,'셋째줄');

INSERT INTO `sample634` VALUES (2,'넷째줄');
UPDATE `sample634` SET p=2 WHERE p=3;

#p248
CREATE TABLE `sample635` (
`a` INT,
`b` INT,
PRIMARY KEY (`a`,`b`));
INSERT INTO `sample635` VALUES (1,1);
INSERT INTO `sample635` VALUES (1,2);
INSERT INTO `sample635` VALUES (1,3);
INSERT INTO `sample635` VALUES (2,1);
INSERT INTO `sample635` VALUES (2,2);

###############################
#29강 인덱스 작성과 삭제
###############################
#p258
CREATE INDEX `isample65` ON `sample62`(`a`);

#p259
DROP INDEX `isample65` ON `sample62`;

#p260
EXPLAIN SELECT * FROM `sample62` WHERE `a` ='a';

#p261
EXPLAIN SELECT * FROM `sample62` WHERE `no` > 10;

###############################
#30강 뷰 작성과 삭제
###############################
#p266
CREATE VIEW `sample_view_67` AS SELECT * FROM `sample54`;
SELECT * FROM `sample_view_67`;

#p267
CREATE VIEW sample_view_672(n,v,v2) AS 
SELECT NO, a, a*2 FROM sample54;
SELECT*FROM sample_view_672 WHERE n=1;
DROP VIEW sample_view_672 