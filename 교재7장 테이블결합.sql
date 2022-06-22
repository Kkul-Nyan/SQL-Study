#날짜 : 2022/06/22
#이름 : 정현기
#내용 : 교재 7장 복수의 테이블 다루기

###############################
#31강 집합 연산
###############################
#테이블 생성/데이터 저장
CREATE TABLE `sample71_a` (
`a` int
);
INSERT INTO `sample71_a` VALUES (1);
INSERT INTO `sample71_a` VALUES (2);
INSERT INTO `sample71_a` VALUES (3);

CREATE TABLE `sample71_b` (
`a` int
);
INSERT INTO `sample71_b` VALUES (2);
INSERT INTO `sample71_b` VALUES (10);
INSERT INTO `sample71_b` VALUES (11);

#p277
SELECT * FROM `sample71_a`;
SELECT * FROM `sample71_b`;

#p278
SELECT * FROM `sample71_a`
union
SELECT * FROM `sample71_b`;



#p281
SELECT * FROM `sample71_a`
UNION all
SELECT * FROM `sample71_b`;

###############################
#32강 테이블 결합
###############################
#테이블 생성/데이터 저장
CREATE TABLE `sample72_x` (
`x` varchar(5)
);
INSERT INTO `sample72_x` VALUES ('A');
INSERT INTO `sample72_x` VALUES ('B');
INSERT INTO `sample72_x` VALUES ('C');

CREATE TABLE `sample72_y` (
`y` INT 
);
INSERT INTO `sample72_y` VALUES (1);
INSERT INTO `sample72_y` VALUES (2);
INSERT INTO `sample72_y` VALUES (3);

#p286
SELECT * FROM `sample72_x`;
SELECT * FROM `sample72_y`;

#p287
SELECT * FROM `sample72_x`, `sample72_y` ORDER BY `x`;

#p289
CREATE TABLE `상품`(
`상품코드`    CHAR(4)  NOT NULL, 
`상품명`      VARCHAR(30),
`메이커명`    VARCHAR(30),
`가격`        INTEGER,
`상품분류`    VARCHAR(30),
PRIMARY KEY (`상품코드`)
);
INSERT INTO `상품`  VALUES ('0001','상품OO','OO메이커',100,'식료품');
INSERT INTO `상품`  VALUES ('0002','상품XX','XX메이커',200,'식료품');
INSERT INTO `상품`  VALUES ('0003','상품☆☆','☆☆메이커',1980,'생활용품');

#p290
CREATE TABLE `재고수` (
`상품코드` CHAR(4),
`입고날짜` DATE,
`재고수` INTEGER
);
INSERT INTO `재고수` VALUES ('0001','2014-01-03',200);
INSERT INTO `재고수` VALUES ('0002','2014-02-10',500);
INSERT INTO `재고수` VALUES ('0003','2014-02-14',10);

#p292
SELECT * FROM `상품`,`재고수`;

#p293
SELECT * FROM `상품`,`재고수`
WHERE `상품`.`상품코드` =`재고수`.`상품코드`;

#p294
SELECT `상품`.`상품명`,`재고수`.`재고수` FROM `상품`,`재고수`
WHERE `상품`.`상품코드` = `재고수`.`상품코드`
AND `상품`.`상품분류` = '식료품';

#p296
CREATE TABLE `메이커` (
`메이커코드` CHAR(4) NOT NULL,
`메이커명`  VARCHAR(30),
PRIMARY KEY (`메이커코드`)
);
INSERT INTO `메이커` VALUES ('m001','OO메이커');
INSERT INTO `메이커` VALUES ('m002','XX메이커');

ALTER TABLE `상품` CHANGE `메이커명` `메이커코드` VARCHAR(30);
SELECT * FROM 상품2;
create TABLE `상품2` LIKE `상품`;
insert INTO `상품2` SELECT * FROM `상품`;
ALTER TABLE `상품` CHANGE `메이커코드` `메이커명` VARCHAR(30);

UPGRADE `상품2` SET `메이커코드` ='M001' WHERE `상품코드` = '0001';
DELETE FROM 상품2;
INSERT INTO `상품2` VALUES('0001','상품OO','M001',100,'식료품');
INSERT INTO `상품2` VALUES('0002','상품XX','M001',200,'식료품');
INSERT INTO `상품2` VALUES('0003','상품☆☆','M002',1980,'생활용품');

#p297
SELECT S.상품명,M.메이커명
FROM 상품2 S INNER JOIN 메이커 M
ON S.메이커코드=M.메이커코드;

#p299
SELECT S1.상품명, s2.상품명
FROM `상품` as S1 INNER JOIN `상품2` as s2
ON S1.상품코드 =s2.상품코드;

#p300
CREATE TABLE `상품3` LIKE 상품2;
INSERT INTO `상품3` SELECT * FROM 상품2;
INSERT INTO `상품3` VALUES ('0009','추가상품','M001',300,'식료품');

SELECT 상품3.`상품명`,재고수.재고수
FROM 상품3 INNER JOIN 재고수
ON 상품3.`상품코드` = 재고수.`상품코드` 
WHERE 상품3.`상품분류` ='식료품';

#p301
SELECT 상품3.상품명,재고수.재고수
FROM 상품3 LEFT JOIN 재고수
ON 상품3.상품코드 = 재고수.상품코드
WHERE 상품3.상품분류 = '식료품';

#p302 오라클의 경우이다.
SELECT 상품3.상품명,재고수.재고수
FROM 상품3,재고수
WHERE 상품3.`상품코드` =재고수.상품코드(+)
AND 상품3.상품분류 = '식료품';














