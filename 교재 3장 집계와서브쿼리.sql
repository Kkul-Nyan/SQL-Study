#날짜 : 2022/06/15
#이름 : 김철학
#내용 : 교재 3장 정렬과 연산

#테이블 생성/데이터 저장
CREATE TABLE `sample31` (
`name` VARCHAR(10),
`age` INT,
`address` VARCHAR(20)
);

INSERT INTO `sample31` VALUES ('A씨',36,'대구광역시 중구');
INSERT INTO `sample31` VALUES ('B씨',18,'부산광역시 연제구구');
INSERT INTO `sample31` VALUES ('C씨',25,'서울특별시 중구');

#p95
SELECT * FROM `sample31` ORDER BY age; 

#p96
SELECT * FROM `sample31` ORDER BY address ;


#p98
SELECT * FROM `sample31` ORDER BY age DESC;
SELECT * FROM `sample31` ORDER BY address ASC;

#테이블 생성/데이터 저장
CREATE TABLE `sample311` (
`a`VARCHAR(10),
`b`INT 
);
INSERT INTO `sample311` VALUES ( '1',1);
INSERT INTO `sample311` VALUES ( '2',2);
INSERT INTO `sample311` VALUES ( '10',10);
INSERT INTO `sample311` VALUES ( '11',11);

#p100
SELECT * FROM `sample311` ORDER BY a;
SELECT * FROM `sample311` ORDER BY b;



#테이블 생성/데이터 저장
CREATE TABLE `sample32` (
`a` INT,
`b` int
);
INSERT INTO `sample32` VALUES (1,1);
INSERT INTO `sample32` VALUES (2,1);
INSERT INTO `sample32` VALUES (2,2);
INSERT INTO `sample32` VALUES (1,3);
INSERT INTO `sample32` VALUES (1,2);

#p103
select * FROM `sample32'

#p104
SELECT * FROM `sample32` order BY a

#p105
SELECT * FROM `sample32` ORDER BY b

#p106
SELECT * FROM `sample32` order BY a ASC, b DESC;

#테이블 생성/데이터 저장
CREATE TABLE `sample33` (
`no` int
);

INSERT INTO `sample33` VALUES (1);
INSERT INTO `sample33` VALUES (2);
INSERT INTO `sample33` VALUES (3);
INSERT INTO `sample33` VALUES (4);
INSERT INTO `sample33` VALUES (5);
INSERT INTO `sample33` VALUES (6);
INSERT INTO `sample33` VALUES (7);

#p109
SELECT * FROM `sample33`;

#p110
SELECT * FROM `sample33` LIMIT 3;

#p111
SELECT * FROM `sample33` ORDER BY `no` DESC LIMIT 3;

#p113
SELECT * FROM `sample33` LIMIT 3 OFFSET 0;
SELECT * FROM `sample33` LIMIT 3 OFFSET 3;
SELECT * FROM `sample33` LIMIT 3 OFFSET 2;

#테이블 생성/데이터 저장
CREATE TABLE `sample34` (
`no` INT AUTO_INCREMENT PRIMARY KEY,
`price` INT,
`quantity` int
);

INSERT INTO `sample34`(`price`,`quantity`) VALUES (100,10);
INSERT INTO `sample34`(`price`,`quantity`) VALUES (230,24);
INSERT INTO `sample34`(`price`,`quantity`) VALUES (1980,1);

#p117
SELECT * FROM `sample34`

#p118
SELECT *,`price` * `quantity` FROM `sample34`;
SELECT *,`price` * `quantity` AS `amount` FROM `sample34`;
SELECT *,`price` * `quantity` "금액" FROM `sample34`;
#p121
SELECT *,price*quantity AS amount FROM sample34;
SELECT *,price*quantity AS amount FROM sample34 WHERE price*quantity >=2000;
SELECT *,price*quantity AS amount FROM sample34 WHERE `amount` >=2000; # 별칭으로는 검색되지 않는다. 별칭보다 where이 먼저 작동한다.

#p124
SELECT *, price * quantity AS amount FROM sample34 ;
SELECT *, price * quantity AS amount FROM sample34 order BY price*quantity DESC;

#p125
SELECT *, price * quantity AS amount FROM sample34 ;
SELECT *, price * quantity AS amount FROM sample34 ORDER BY amount DESC; # order by 부터는 select(별칭포함)보다 늦게 작동하므로 별칭이 효과 O

#테이블 생성/데이터 저장
CREATE TABLE `sample341` (
`amount` double
);

INSERT INTO `sample341` VALUES (5961.60);
INSERT INTO `sample341` VALUES (2138.40);
INSERT INTO `sample341` VALUES (1080.00);

#p127
SELECT `amount`,ROUND(amount) FROM `sample341`;

#p128
SELECT amount, ROUND(amount, 1) FROM `sample341`; #소수점 첫자리반올림 표시 5961.60 = 6은 0번째자리 0은 1번째자리 1의 1번째자리에서 반올림.

#p129
SELECT `amount`,ROUND(amount, -2 ) FROM `sample341`;

#테이블 생성/데이터 저장
CREATE TABLE `sample35` (
`no` INT ,
`price` INT,
`quantity` INT,
`unit` VARCHAR(5)
);

INSERT INTO `sample35` VALUES ( 1,100,10,'개');
INSERT INTO `sample35` VALUES ( 2,230,24,'캔');
INSERT INTO `sample35` VALUES ( 3,1980,1,'장');

#p132
SELECT ConCAT(quantity, unit) FROM `sample35`; #concat 자체가 함수, 객체별칭이라 생각하고 암거나 넣지말자.

#p137
SELECT CURRENT_TIMESTAMP; #시스템 날짜확인

#p139
SELECT CURRENT_DATE + INTERVAL 1 DAY;

#테이블 생성/데이터 저장
CREATE TABLE `sample37` (
`a` int
);
INSERT INTO `sample37` VALUES (1);
INSERT INTO `sample37` VALUES (2);
INSERT INTO `sample37` VALUES ();

#p142
SELECT a, CASE WHEN a IS NULL then 0 ELSE a END "a(null=0)" FROM sample37;
SELECT a, CASE WHEN a IS NULL then 0 ELSE a END AS a(null=0) FROM sample37; #""으로 객체별칭을 잡아야지 as로는 작동안함.
SELECT a, CASE WHEN a IS NULL then 0 ELSE a END AS "a(null=0)" FROM sample37; #AS 있어도 ""으로 잡으면 별칭 작동 

#p144
SELECT a AS "코드",
CASE
	WHEN a = 1 THEN '남자'
	WHEN a = 2 THEN '여자'
	ELSE '미지정'
END "성별" FROM sample37;

#p145
SELECT a AS "코드",
CASE a
	WHEN 1 THEN '남자' #case가 a를 잡아두고 있으니 경우의수 값인 1,2만 적어주면된다.
	WHEN 2 THEN '여자'
	ELSE '미지정'
END "성별" FROM sample37;

#p147
SELECT a AS "코드",
CASE
	WHEN a = 1 THEN '남자'
	WHEN a = 2 THEN '여자'
	WHEN a IS NULL then '데이터없음1'
	ELSE '더있을까?'
END "성별" FROM sample37;






