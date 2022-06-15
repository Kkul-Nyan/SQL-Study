#날짜 : 2022/06/15
#이름 : 정현기
#내용 : 교재 2장 테이블에서 데이터 검색


#p52
CREATE TABLE `sample21` (
`no` INT AUTO_INCREMENT primary KEY,
`name` VARCHAR(10) NOT NULL, 
`birthday` CHAR(10), 
`address` VARCHAR(100) 
);

INSERT INTO `sample21` SET `name`='박준용',`birthday`='1976-10-18', `address` = '대구광역시 수성구';
INSERT INTO `sample21` SET `name`='김재진',`address` = '대구광역시동구';
INSERT INTO `sample21` SET `name`='홍길동',`address` = '서울특별시마포구';

#p53
SELECT * FROM sample21;

#p62
DESC `sample21`;

#66
SELECT * FROM sample21; #전부선택
SELECT `address`, `NAME` FROM `sample21`; #address 와 name만 선택

#68
SELECT *FROM `sample21` WHERE `NO`=2; #no열의 값이 2인 행만 검색

#70
SELECT * FROM `sample21` WHERE `no`<>2; #no열의 값이 2가 아닌 행만 검색

#71
SELECT * FROM `sample21` WHERE `name` ='박준용' # name열값이 박준용인  행만 검색

#72
SELECT * FROM `sample21` WHERE `birthday` = NULL; #이방법으로는 null거잔 열들을 검색 못함 

#73
SELECT *FROM `sample21` WHERE `birthday` IS NULL; #is null 로 검색가능. null은 비어있는것이니 null을 채워서 검색해선 안된다. 비어있는 공간을 찾아야한다.

#76
CREATE TABLE `sample24` (
`no` INT AUTO_INCREMENT PRIMARY KEY,
`a` TINYINT DEFAULT 0,
`b` TINYINT DEFAULT 0,
`c` TINYINT DEFAULT 0
);

INSERT INTO `sample24` SET `a`=1;
INSERT INTO `sample24` SET `b`=1;
INSERT INTO `sample24` SET `c`=1;
INSERT INTO `sample24` SET `a`=2, `b`=2;
INSERT INTO `sample24` SET `b`=2, `c`=2;

SELECT * FROM `sample24`;

#77
SELECT *FROM `sample24` WHERE `a`<>0 AND `b`<>0

#78
SELECT * FROM `sample24` WHERE `a`<>0 OR `B`<>0

#80
SELECT * FROM `sample24` WHERE `a`=1 OR `a`=2 AND `b`=1 OR `b`=2; # a=1 ,a=2andb=12,b=2를 찾은것이다 (3개의 조건식을 검색)

#82
SELECT * FROM `sample24` WHERE NOT(`a`<>0 OR `b`<>0);# a열이 0이 아니거나 b열이 0이 아닌 행을 제외한 나머지 행을 검색 = a도 b도 0인것

#85
create TABLE `sample25` (
`no` INT AUTO_INCREMENT PRIMARY KEY,
`text` varchar(100)
);

INSERT INTO `sample25` (`text`) VALUES ('SQL은 RDBMS를 조직하는언어이다');
INSERT INTO `sample25` (`text`) VALUES ('LIKE에서는 메타문자 %와 _를 사용할 수 있다.');
INSERT INTO `sample25` (`text`) VALUES ('LIKE는 SQL에서 사용할 수 있는 술어 중 하나이다.') ;

#86
SELECT * FROM `sample25` WHERE `text` LIKE '%SQL%'; #패턴매칭 (중간일치 )

#88
SELECT * FROM `sample25` WHERE `text` LIKE '%\%%'; #like술어로 패턴 매칭

