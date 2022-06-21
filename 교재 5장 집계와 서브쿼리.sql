#날짜 : 0000/00/00
#이름 : 김철학
#내용 : 교재 5장 집계와 서브쿼리

###############################
#20강 행 개수 구하기
###############################
#테이블 생성/데이터 저장
CREATE TABLE `sample51` (
`no` INT ,
`name` VARCHAR(10),
`quantity` int
);

INSERT INTO `sample51` VALUES (1,'A',1);
INSERT INTO `sample51` VALUES (2,'A',2);
INSERT INTO `sample51` VALUES (3,'B',10);
INSERT INTO `sample51` VALUES (4,'C',3);
INSERT INTO `sample51`(`no`) VALUES (5);

#p183
SELECT COUNT(*) FROM `sample51`;

#p185
SELECT COUNT(*) FROM `sample51` WHERE `name` ='A';

#p186
SELECT COUNT(`no`),COUNT(`name`) FROM `sample51`; 

#p187
SELECT * FROM sample51;

#p188
SELECT ALL `name` FROM `sample51`;
SELECT DISTINCT `name` FROM `sample51`;

#p189
SELECT COUNT(ALL `name`) AS `allname` ,COUNT(DISTINCT `name`) AS `distinctname` FROM `sample51`;

###############################
#21강 COUNT 이외의 집계함수
###############################
#p191
SELECT *FROM `sample51`
SELECT SUM(`quantity`) FROM `sample51`;

#p192
SELECT *FROM `sample51`
SELECT AVG(quantity), SUM(quantity)/COUNT(quantity) FROM sample51;

#AVG평균구할떄 null을 0으로 변환해서 계산
SELECT AVG(case when quantity IS NULL then 0 ELSE quantity END)
AS avgnull0 FROM sample51;

#p193
SELECT *FROM `sample51`
SELECT min(`quantity`),MAX(`quantity`),MIN(`name`),MAX(`name`) FROM `sample51`;

###############################
#22강 그룹화-GROUP BY
###############################
#p195
SELECT *FROM `sample51`
SELECT `name` FROM `sample51` GROUP BY `name`; 

#p197
SELECT `name`, COUNT(`name`), SUM(`quantity`)
FROM `sample51` GROUP BY `name`;

#p199
SELECT 
		`name`,
		COUNT(`name`)
FROM sample51 
GROUP BY `NAME`;


SELECT 
		`name`,
		COUNT(`name`)
FROM sample51 
GROUP BY `name`
HAVING COUNT(`NAME`) = 1;

#p202
SELECT
		`name`,
	COUNT(`name`),
	SUM(`quantity`)
FROM `sample51`
GROUP BY `name`
ORDER BY SUM(`quantity`) desc;



###############################
#23강 서브쿼리
###############################
#테이블 생성/데이터 저장
CREATE TABLE `sample54` (
`no` INT,
`a` int
);

INSERT INTO `sample54` VALUES (1,100);
INSERT INTO `sample54` VALUES (2,900);
INSERT INTO `sample54` VALUES (3,20);
INSERT INTO `sample54` VALUES (4,80);

#p205
SELECT MIN(`a`) FROM sample54;

#p206
DELETE FROM `sample54` WHERE `a`= (SELECT MIN(`a`) FROM `sample54`);
SELECT * FROM `sample54`

#p207
SELECT MIN(`a`) FROM `sample54`;
SELECT `no` FROM `sample54`;
SELECT MIN(`a`),Max(`no`) FROM `sample54`;

#p208
SELECT `no`,`a` FROM `sample54`;

#p210
SELECT 
	(SELECT COUNT(*) FROM `sample51`) AS `sq1`,
	(SELECT COUNT(*) FROM `sample54`) AS `sq2`;

#오라클의 경우
SELECT 
	(SELECT COUNT(*) FROM `sample51`) AS `sq1`,
	(SELECT COUNT(*) FROM `sample54`) AS `sq2` FROM DUAL;

#p211
UPDATE `sample54` SET `a` = (SELECT MAX(`a`) FROM `sample54`);
SELECT * FROM `sample54`;

#p212
SELECT * FROM (SELECT * FROM `sample54`) sq;
SELECT * FROM (SELECT *FROM `sample54`) AS sq;

#p213
SELECT * FROM (SELECT * FROM (SELECT * FROM `sample54`)sq1)sq2;

#테이블 생성/데이터 저장
CREATE TABLE `sample541` (
`a` INT,
`b` int
);

#p214
INSERT INTO `sample541` VALUES (
(SELECT COUNT(*) FROM `sample51`),
(SELECT COUNT(*) FROM `sample54`)
);
SELECT*FROM `sample541`;

INSERT INTO `sample541` SELECT 1,2;
INSERT INTO `sample541` SELECT 4,5;
SELECT*FROM `sample541`;
DELETE FROM `sample541` WHERE a=4 AND b= 5;

#p215
CREATE TABLE `sample542` LIKE `sample541`;
INSERT INTO `sample542` SELECT*FROM `sample541`;

###############################
#24강 상관 서브쿼리
###############################
#테이블 생성/데이터 저장
CREATE TABLE `sample551` (
`no` INT,
`a` VARCHAR(10)
);
INSERT INTO `sample551`(`no`) VALUES(1);
INSERT INTO `sample551`(`no`) VALUES(2);
INSERT INTO `sample551`(`no`) VALUES(3);
INSERT INTO `sample551`(`no`) VALUES(4);
INSERT INTO `sample551`(`no`) VALUES(5);

CREATE TABLE `sample552` (
`no2` int
);
INSERT INTO `sample552` VALUES(3);
INSERT INTO `sample552` VALUES(5);

#p217
SELECT * FROM `sample551`;
SELECT * FROM `sample552`;

#p218
UPDATE `sample551` SET `a` = '있음' WHERE
EXISTS(SELECT * FROM `sample552` WHERE `no2` = `No`); 
SELECT * FROM `sample551`;

#p219
UPDATE `sample551` SET `a` ='없음' WHERE
NOT EXISTS (SELECT * FROM `sample552` WHERE `no2` = `no`);
 

#p221
UPDATE `sample551` SET `a` = '있음' WHERE
EXISTS (SELECT*FROM `sample552` WHERE sample552.no2=sample551.no);

#p222
SELECT * FROM `sample551` WHERE `no` IN (3,5);
SELECT * FROM `sample551` WHERE `no` IN(SELECT `no2` FROM `sample552`);
