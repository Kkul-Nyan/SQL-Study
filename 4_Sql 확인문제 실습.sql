#날짜 : 2022/06/14
#이름 : 정현기
#내용 : SQL 확인문제 실습


#실습하기 4-1
CREATE TABLE `tbl_menber` (
 `memberId` VARCHAR(10) PRIMARY KEY,
 `memberName` VARCHAR(10) NOT NULL,
 `memberHp` CHAR(13) UNIQUE,
 `memberAge` INT,
 `memberAdd4` VARCHAR(20)
 );
 CREATE TABLE `tbl_product` (
 `productCode` INT AUTO_INCREMENT PRIMARY KEY,
 `productName` VARCHAR(10) NOT NULL,
 `price` INT NOT NULL,
 `amount` INT DEFAULT 0,
 `company` VARCHAR(10),
 `makeDate` DATE
 );
 
#실습하기 4-2
INSERT INTO `tbl_member` VALUES ('p101','김유신','010-1234-1001',25,'신라');
INSERT INTO `tbl_member` VALUES ('p102','김춘추','010-1234-1002',23,'신라');
insult INTO `tbl_member` (`memberID`,`memberName`,`memberAge`,`memberAddr`)
								 VALUES ('p103','장보고',




#실습하기 4-2



#실습하기 4-2