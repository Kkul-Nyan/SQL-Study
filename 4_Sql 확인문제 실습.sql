#날짜 : 2022/06/14
#이름 : 정현기
#내용 : SQL 확인문제 실습




#실습하기 4-1
CREATE TABLE `tbl_member` (
 `memberID`    VARCHAR(10) PRIMARY KEY,
 `memberName`  VARCHAR(10) NOT NULL,
 `memberHp`    CHAR(13) UNIQUE,
 `memberAge`   INT,
 `memberAddr` VARCHAR(20)
 );
 
 INSERT INTO `tbl_member` VALUE('p101','김유신','010-1234-1001',25,'신라');
 INSERT INTO `tbl_member` VALUE('p102','김춘추','010-1234-1002',23,'신라');
 INSERT INTO `tbl_member` (`memberID`,`memberName`,`memberAge`,`memberAddr`)
 								  VALUE('p103','장보고',31,'통일신라') 
 								
 INSERT INTO `tbl_member` SET `memberID`='p104',`memberName`='강감찬',`memberAddr`='고려'
 INSERT INTO `tbl_member` (`memberID`,`memeberName`,`memberHp`,`memberAge`) 
                          VALUES ('p105','이순신','010-1234-1005',50);	#<--------왜안되지???????????????????							   
 INSERT INTO `tbl_member` SET `memberID`='p105',`memberName`='이순신',`memberHp`='010-1234-1005',`memberAge`=50							 


#실습하기 4-2
CREATE `tbl_pruduct` (
`productCode` INT AUTO_INCREMENT PRIMARY KEY,
`productName` VARCHAR(10) NOT NULL,-
`price` INT NOT NULL,
`amount` INT DEFAULT 0,
`company` VARCHAR(10),
`makedate` DATETIME yyyy-mm-dd
);

INSERT INTO `tbl_product` VALUES ('냉장고',800,10,'LG',2022-01-06);
INSERT INTO `tbl_product` VALUES ('노트북',1200,20,'삼성',2022-01-06);
INSERT INTO `tbl_product` VALUES ('TV',1400,6,'LG',2022-01-06);
INSERT INTO `tbl_product` VALUES ('세탁기',1000,8,'LG',2022-01-06);
INSERT INTO `tbl_produck` SET `productName`='컴퓨터',`price`=1100;
INSERT INTO `tbl_product` VALUES ('휴대폰',900,102,'삼성',2022-01-06);

#실습하기 4-3

SELECT `memberName` FROM `tbl_member`;
SELECT `memberName`,`memberHp` FROM `tbl_member`;
SELECT * FROM `tbl_member` WHERE `memberID`='p101';
SELECT * FROM `tbl_member` WHERE `memberID`='p104' OR `memberID`= 'p105p';
SELECT * FROM `tbl_member` where `memberAddr`= '신라';
SELECT * FROM `tbl_member` WHERE `memberAge` > 30 ; 
SELECT * FROM `tbl_member` WHERE `memberHp` IS NULL;
UPDATE `tbl_member` SET `memberAge`=42 WHERE `memberId`='p104';
UPDATE `tbl_member` SET `memberAddr`='조선' WHERE `memberID` = 'p105'
DELETE *FROM `tbl_member`;

SELECT `productName` FROM `tbl_product`;
SELECT `productName`, `price` FROM `tbl_product`;
SELECT * FROM `tbl_product` WHERE `company`='LG';
SELECT * FROM `tbl_product` WHERE `company`='삼성';
UPDATE `tbl_product` SET
							  `company`='삼성'
							  `makeDate`='2021-01-01'
							  Where
							  `productCode`=5;
SELECT * FROM `tbl_product`;							  
							  


