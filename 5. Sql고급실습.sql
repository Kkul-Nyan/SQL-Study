#날짜 : 2022/06/15
#이름 : 정현기
#내용 : SQL고급실습
CREATE DATABASE `mydb`
DROP DATABASE `mydb`
#실습하기 5-1

CREATE TABLE `Member` (
 `uid` VARCHAR(10) PRIMARY KEY,
 `name` VARCHAR(10) NOT NULL,
 `hp` CHAR(13) UNIQUE NOT NULL ,
 `pos` VARCHAR(10) NOT NULL DEFAULT '사원',
 `dep` INT DEFAULT NULL,
 `rdate` DATETIME NOT NULL
 );
 
 CREATE TABLE `Department` (
 `depNo` INT PRIMARY KEY,
 `name` VARCHAR(10) NOT NULL,
 `tel` CHAR(12) NOT null
 );
 
 CREATE TABLE `Sales` (
 `seq` INT AUTO_INCREMENT PRIMARY KEY, 
 `uid` VARCHAR(10) NOT NULL, 
 `year` YEAR NOT NULL,
 `month` TINYINT NOT NULL,
 `sale`  INT NOT NULL
 );

#실습하기 5-2
INSERT INTO  `Member` VALUES ('a101','박혁거세','010-1234-1001','부장',101, NOW());
INSERT INTO  `Member` VALUES ('a102','김유신','010-1234-1002','차장',101, NOW());
INSERT INTO  `Member` SET `uid` = 'a103', `name`='김춘추' ,`hp`='010-1234-1003' , `dep` =101 ,`rdate` =NOW(); 
INSERT INTO  `Member` VALUES ('a104','장보고','010-1234-1004','대리',102, NOW());
INSERT INTO  `Member` VALUES ('a105','강감찬','010-1234-1005','과장',102, NOW());
INSERT INTO  `Member` VALUES ('a106','이성계','010-1234-1006','차장',103, NOW());
INSERT INTO  `Member` VALUES ('a107','정철','010-1234-1007','차장',103, NOW());
INSERT INTO  `Member` VALUES ('a108','이순신','010-1234-1008','부장',104, NOW());
INSERT INTO  `Member` VALUES ('a109','허균','010-1234-1009','부장',104, NOW());
INSERT INTO  `Member` SET `uid` = 'a110', `name`='정약용' ,`hp`='010-1234-1010' , `dep` =105 ,`rdate` =NOW(); 
INSERT INTO  `Member` SET `uid` = 'a111', `name`='박지원' ,`hp`='010-1234-1011' , `dep` =105 ,`rdate` =NOW(); 

INSERT INTO `Department` VALUES ('101','영업1부','010-512-1001');
INSERT INTO `Department` VALUES ('102','영업2부','010-512-1002');
INSERT INTO `Department` VALUES ('103','영업3부','010-512-1003');
INSERT INTO `Department` VALUES ('104','영업4부','010-512-1004');
INSERT INTO `Department` VALUES ('105','영업5부','010-512-1005');
INSERT INTO `Department` VALUES ('106','영업지원부','010-512-1006');
INSERT INTO `Department` VALUES ('107','인사부','010-512-1007');

INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a101',2018,1,98100);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a102',2018,1,136000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a103',2018,1,80100);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a104',2018,1,78000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a105',2018,1,93000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a101',2018,2,23500);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a102',2018,2,126000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a103',2018,2,18500);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a105',2018,2,19000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a106',2018,2,53000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a101',2019,1,24000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a102',2019,1,109000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a103',2019,1,101000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a104',2019,1,53500);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a107',2019,1,24000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a102',2019,2,160000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a103',2019,2,101000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a104',2019,2,43000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a105',2019,2,24000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a106',2019,2,109000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a102',2020,1,201000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a104',2020,1,63000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a105',2020,1,74000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a106',2020,1,122000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a107',2020,1,111000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a102',2020,2,120000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a103',2020,2,93000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a104',2020,2,84000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a105',2020,2,180000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a108',2020,2,76000);

#실습하기 5-3
SELECT * FROM `member` WHERE `name`= '김유신';
SELECT * FROM `member` WHERE `name` != '김춘추';
SELECT * FROM `member` WHERE `name` <>'김춘추';
SELECT * FROM `member` WHERE `pos` = '사원' OR `pos` ='대리'
SELECT * FROM `member` WHERE `pos` IN ('사원','대리'); 
SELECT * FROM `member` WHERE `name` LIKE '%신';
SELECT * FROM `member` WHERE `name` LIKE '정_';
SELECT * FROM `member` WHERE `name` LIKE '김%';
SELECT * FROM `member` WHERE `name` LIKE '김__';
SELECT * FROM `member` WHERE `name` LIKE '_성_';
SELECT * FROM `Sales` WHERE `sale` > 50000;
SELECT * FROM `Sales` WHERE `sale` >= 50000 AND `sale`<100000 AND `month`=1;
SELECT * FROM `Sales` WHERE `sale` BETWEEN 50000and 100000;
SELECT * FROM `Sales` WHERE `sale` not BETWEEN 50000 AND 100000; 
SELECT * FROM `Sales` WHERE `year` IN(2020);
SELECT * FROM `Sales` WHERE `month` IN(1,2);

#실습하기 5-4

SELECT * FROM `Sales` ORDER BY `sale`;
SELECT * FROM `Sales` ORDER BY `sale` ASC;
SELECT * FROM `Sales` ORDER BY `sale` DESC;
SELECT * FROM `member` ORDER BY `name`
SELECT * FROM `member` ORDER BY `name` DESC;
SELECT * FROM `member` ORDER BY `rdate` ASC;
SELECT * FROM `Sales` WHERE `sale` > 50000 ORDER BY `sale` DESC;
SELECT * FROM `Sales`
WHERE `sale`> 50000
ORDER BY `year`, `month`, `sale` DESC;

#실습하기 5-5

SELECT * FROM `sales` LIMIT 3;
SELECT * FROM `sales` LIMIT 0,3 #0은 index 3은 갯수(크기)
SELECT * FROM `sales` LIMIT 1,3
SELECT * FROM `sales` LIMIT 4,5
SELECT * FROM `sales` ORDER BY `sale` DESC LIMIT 3,5
SELECT * FROM `sales` WHERE `sale` <50000 ORDER BY `sale` DESC LIMIT 3;
SELECT * FROM `sales`
WHERE `sale`>50000
ORDER BY `year`DESC, `month`,`sale`DESC
LIMIT 5;

#실습하기 5-6

SELECT SUM(sale) AS `합계`FROM`Sales`;
SELECT AVG(sale) AS `평균`FROM`sales`;
SELECT MAX(sale) AS `최대값` FROM `sales`;
SELECT MIN(sale) AS `최소값` FROM `sales`; 
SELECT COUNT(sale) AS `갯수` FROM `sales`;
SELECT COUNT(*) AS `갯수` FROM `sales`;
SELECT SUBSTRING(hp,10,4) AS '전화번호 끝자리' FROM `member`;
INSERT INTO `member` VALUES ('b101','을지문덕','010-5555-1234','사장',107,NOW());


SELECT SUM(sale) AS `합계` FROM`sales`WHERE `year`=2018 AND  `month`=1

SELECT AVG(sale) AS `평균`,
       SUM(sale) AS `총합` 
FROM `sales`
WHERE 
     `year`=2019 AND
	  `sale` > 50000 AND
	  `month`=2

SELECT 
    MIN(`sale`) AS `최저`,
	 MAX(`sale`) AS `최고` 
FROM 
    `sales`
WHERE 
    `year` = 2020;

#실습하기 5-7 
SELECT * FROM `sales` Group BY `uid`; #겹친다면 먼저 검색된게 나오고 뒤에껀 버린다.
SELECT * FROM `sales` Group BY `year`;
SELECT * FROM `sales` Group BY `uid`,`year`;
SELECT `uid`, COUNT(*) AS `건수` FROM `sales` GROUP BY `uid`;
SELECT `uid`, SUM(sale) AS `합계` FROM `sales` GROUP BY `uid`;
SELECT `uid`, AVG(sale) AS `평균` FROM `sales` GROUP BY `uid`;

SELECT `uid`, `year`, SUM(sale) AS `합계`
FROM `sales`
GROUP BY `uid`,`year`

SELECT `uid`, `year`, SUM(sale) AS `합계`
FROM `sales`
GROUP BY `uid`,`year`
ORDER BY `year` ASC, `합계`DESC;

SELECT `uid`,`year`,SUM(sale)AS`합계`
FROM `sales`
GROUP BY `uid`,`year`
ORDER BY `합계`DESC

#실습하기 5-8
SELECT `uid`, SUM(sale) AS`합계` FROM `sales`
GROUP BY `uid`
HAVING SUM(sale)>=20000;

SELECT `uid`,`year`, SUM(sale) AS`합계` 
FROM `sales`
WHERE `sale`>= 100000
GROUP BY `uid`,`year`
HAVING SUM(sale)>=200000
ORDER BY `합계` DESC;

#실습하기 5-9
CREATE table `sales2` LIKE `sales`;
insert INTO `sales2` SElect * FROM `sales`;
UPDATE `sales2` SET `year`= `year`+3;

SELECT * FROM `sales`UNION SELECT *FROM `sales2`
(SELECT * FROM `sales`)

 

SELECT `uid`,`year`, SUM(`sale`) AS`합계`
FROM `sales`
GROUP BY `uid`, `year`
UNION
SELECT `uid`,`year`, SUM(`sale`) AS`합계`
FROM `sales2`
GROUP BY `uid`, `year`
ORDER BY `year` ASC, `합계` DESC; 

#실습하기 5-10

SELECT * FROM `Sales` UNION ALL SELECT * FROM `sales2`

#실습하기 5-11
SELECT * 
FROM `sales` 
JOIN `member`
ON `sales`.uid = `member`.`uid`;   #서로 공통된부분이 있어야 조인시킨다(인너는 어차피 인너조인이므로 생략)

SELECT * 
FROM `sales`  AS a     #a,b로 별칭을 줘서 처리한다.
JOIN `member` AS b
ON a.`uid` = b.`uid`;

SELECT 
		a.seq,
		a.uid,
		a.year,
		a.month,
		a.sale,
		b.name,
		b.hp,
		b.pos
FROM `sales`  AS a    
JOIN `member` AS b
ON a.uid = b.uid;

selcet *
FROM `sales` AS a
JOIN `member` AS b
USING(`uid`)

SELECT *
FROM `sales`      AS a
JOIN `member`     AS b ON a.uid = b.uid
JOIN `department` AS c ON b.dep = c. depNo







#실습하기 5-12 한쪽의 차집합 부분도 나오게된다.
SELECT *FROM `sales` AS a
left JOIN `member` as b
ON a.uid = b.uid;

SELECT *FROM `sales` AS a
right JOIN `member` as b
ON a.uid = b.uid;

#확인문제
#1. 모든 직원의 아이디, 이름, 직급, 부서명을 조회하시오
SELECT 
		b.`uid`,
		b.`name`,
		b.`pos`,
		c.`name`		 
FROM `member`     AS b
JOIN `department` AS c
ON b.dep = c.depno

#2. '김유신' 직원의 2019년도 매출의 합을 조회하시오

SELECT 
		b.name,
		a.year,
		a.uid,
		SUM(`sale`) AS `합계`
FROM `sales`      AS a
JOIN `member`     AS b
ON a.uid = b.uid
WHERE 
	b.name = '김유신' AND
	a.year = 2019;
	
#3. 
SELECT
		b.name,
		c.name,
		b.pos,
		a.year,
		SUM(`sale`) AS `합계`		
FROM `sales` AS a
JOIN `member` AS b ON a.uid=b.uid
JOIN `department` AS c ON b.dep = c.depNo
WHERE 
	`sale` >= 50000 AND `year` = 2019
GROUP BY a.`uid`
HAVING `합계`>=100000
ORDER BY `합계` DESC;	



















