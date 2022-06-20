#문제1
CREATE TABLE `Book` (
`bookid` INT AUTO_INCREMENT PRIMARY KEY,
`bookname`VARCHAR(100),NO NULL,
`publisher`VARCHAR(15),NO NULL,
`price`INT 
);

INSERT INTO `Book`(`bookname`,`publisher`,`price`) VALUES ('축구의역사','굿스포츠',7000);
INSERT INTO `Book`(`bookname`,`publisher`,`price`) VALUES ('축구아는여자','나무수',13000);
INSERT INTO `Book`(`bookname`,`publisher`,`price`) VALUES ('축구의이해','대한미디어',22000);
INSERT INTO `Book`(`bookname`,`publisher`,`price`) VALUES ('골프바이블','대한미디어',35000);
INSERT INTO `Book`(`bookname`,`publisher`,`price`) VALUES ('피겨교본','굿스포츠',8000);
INSERT INTO `Book`(`bookname`,`publisher`,`price`) VALUES ('역도단계별기술','굿스포츠',6000);
INSERT INTO `Book`(`bookname`,`publisher`,`price`) VALUES ('야구의추억','이상미디어',20000);
INSERT INTO `Book`(`bookname`,`publisher`,`price`) VALUES ('야구를부탁해','이상미디어',13000);
INSERT INTO `Book`(`bookname`,`publisher`,`price`) VALUES ('올림픽이야기','삼성당',7500);
INSERT INTO `Book`(`bookname`,`publisher`,`price`) VALUES ('Olympic Champions','Pearson',13000);

#문제 2
CREATE TABLE `Customer` (
`custid`INT AUTO_INCREMENT PRIMARY KEY,
`name`VARCHAR(10),
`address`VARCHAR(20),
`phone`CHAR(13) 
);

INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES('박지성','영국 멘체스타','000-5000-0001');
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES('김연아','대한민국 서울','000-6000-0001');
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES('장미란','대한민국 강원도','000-7000-0001');
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES('추신수','미국 클리블랜드','000-8000-0001');
INSERT INTO `Customer` (`name`, `address`) VALUES('박세리','대한민국 대전');

#문제 3
CREATE TABLE `Orders` (
`orderid` INT AUTO_INCREMENT PRIMARY KEY,
`custid` INT,
`bookid` INT, 
`saleprice` INT,
`orderdate` DATE
);

INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (1,1,6000,'2014-07-01');
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (1,3,21000,'2014-07-03');
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (2,5,8000,'2014-07-03');
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (3,6,6000,'2014-07-04');
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (4,7,20000,'2014-07-05');
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (1,2,12000,'2014-07-07');
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (4,8,13000,'2014-07-07');
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (3,10,12000,'2014-07-08');
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (2,10,7000,'2014-07-09');
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (3,8,13000,'2014-07-10');

#문제 4
SELECT  `custid`,`name`,`address` FROM `Customer`;

#문제 
SELECT `bookname`,`price` FROM `Book`;

#문제 6
SELECT `price`,`bookname` FROM `Book`;

#문제 7
SELECT * FROM `book`;

#문제8
SELECT `publisher` FROM `book`;

#문제 9 ****************************************************************************
SELECT `publisher` FROM `book` group BY `publisher` 
SELECT DISTINCT `publisher`  FROM `book`

#문제 10
SELECT * FROM `book` WHERE `price` >= 20000;

#문제 11
SELECT * FROM `book` WHERE `price` < 20000;

#문제 12 ****************************************************************************
SELECT * FROM `book` WHERE `price` >= 10000 AND `price` <= 20000;
SELECT * FROM `book` WHERE `price` BETWEEN 10000 AND 20000;

#문제13
SELECT `bookid`,`bookname`,`price` FROM `book` WHERE `price` >= 15000 AND `price`<= 30000;
SELECT `bookid`,`bookname`,`price` FROM `book` WHERE `price` BETWEEN 15000 AND 30000;

#문제14 ******************************************************************************
SELECT * FROM `book` WHERE `bookid` =2 or `bookid` = 3 or `bookid` = 5;
SELECT * FROM `book` WHERE `bookid` IN(2,3,5)

#문제15 ******************************************************************************
SELECT * FROM `book` WHERE MOD(`bookid`,2) =0;
SELECT * FROM `book` WHERE `bookid` % 2 =0;

#문제16
SELECT * FROM `customer` WHERE `name` LIKE '박%';

#문제17
SELECT * FROM `customer` WHERE `address` LIKE '%대한민국%';

#문제18 *******************************************************************************
SELECT * FROM `customer` WHERE `phone` LIKE '0%';
SELECT * FROM `customer` WHERE `phone` IS NOT NULL;
SELECT * FROM `customer` WHERE not `phone` IS NULL;

#문제19
SELECT * FROM `book` WHERE `publisher` = '굿스포츠' OR `publisher` = '대한미디어';
SELECT * FROM `book` WHERE `publisher` IN ('굿스포츠','대한미디어');

#문제20
SELECT `publisher` FROM `book` WHERE `bookname` = '축구의역사';

#문제21
SELECT `publisher` FROM `book` WHERE `bookname` LIKE '%축구%';

#문제22 ****************************************************************************************************
SELECT * FROM `book` WHERE `bookname` LIKE '%구%';
SELECT * FROM `book` WHERE `bookname` LIKE '_구%';

#문제23
SELECT * FROM `book` WHERE `bookname` LIKE '%축구%' AND `price` >= 20000;

#문제24
SELECT * FROM `book` ORDER BY `bookname` ASC;

#문제25
SELECT * FROM `book` ORDER BY `price` ASC, `bookname`;

#문제26
SELECT * FROM `book` ORDER BY `price` deSC, `publisher`aSC;

#문제27
SELECT * FROM `book` ORDER BY `price` DESC LIMIT 3;

#문제28
SELECT * FROM `book` ORDER BY `price` ASC LIMIT 3;

#문제29
SELECT sum(saleprice) AS `총판매액` FROM `orders`;

#문제30
SELECT 
      SUM(saleprice) AS `총판매액`,
      AVG(saleprice) AS `평균값`,
      MIN(saleprice) AS `최저가`,
      MAX(saleprice) AS `최고가` FROM `orders`;
      
#문제31
SELECT count(orderid) AS `판매건수` FROM `orders` ;

#문제32--------------------------------------------------------------------
SELECT `bookname` from `book` REPLACE '야구','농구'

#문제33
SELECT custid, COUNT(orderid) AS`수량` FROM `orders` WHERE `saleprice` >= 8000   GROUP BY `custid` having count(orderid)>1

#문제34
SELECT * from  
`Customer` AS a
JOIN `orders` AS b
ON a.custid= b.custid;

#문제35
SELECT * from  
`Customer` AS a
JOIN `orders` AS b
ON a.custid= b.custid
ORDER BY a.custid ,b.custid;

#문제36
SELECT a.name, b.saleprice FROM `Customer` AS a
JOIN `orders` AS b
ON a.custid= b.custid;

#문제37
SELECT 
		a.name,
		SUM(saleprice) 
FROM `Customer` AS a
JOIN `orders` AS b
ON a.custid= b.custid
GROUP BY a.name

#문제38
SELECT 
		a.name,
		c.bookname
FROM `Customer` AS a
JOIN `orders` AS b ON a.custid = b.custid
JOIN `book` AS c ON b.bookid = c.bookid;

#문제39
SELECT 
		a.name,
		c.bookname
FROM `Customer` AS a
JOIN `orders` AS b ON a.custid = b.custid
JOIN `book` AS c ON b.bookid = c.bookid
WHERE b.saleprice = 20000;

#문제40
SELECT 
		a.name,
		b.saleprice
FROM `Customer` AS a
left JOIN `orders` AS b ON a.custid = b.custid
left JOIN `book` AS c ON b.bookid = c.bookid 

#문제41
SELECT `bookname` FROM `book` WHERE MAX(`price`)

#문제42
#문제43
#문제44
#문제45
#문제46




















