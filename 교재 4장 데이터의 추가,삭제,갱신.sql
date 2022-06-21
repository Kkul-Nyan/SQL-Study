#날짜 : 0000/00/00
#이름 : 김철학
#내용 : 교재 4장 데이터의 추가,삭제,갱신

###############################
#16강 행 추가하기
###############################
#테이블 생성/데이터 저장
CREATE TABLE `sample41` (
`no` INT NOT NULL,
`a` VARCHAR(30),
`b` DATE
);

#p153 
DESC `sample41`

#p154
INSERT INTO `sample41` VALUES(1, 'ABC','2014-01-25');

#p155
INSERT INTO `sample41`(`a`,`no`) VALUES ('XYZ',2);
SELECT *FROM `sample41`

#p156
INSERT INTO `sample41` (`NO`,`a`,`b`) VALUES(NULL,NULL,NULL);
INSERT INTO `sample41` (`no`,`a`,`b`) VALUES(3,NULL,NULL);
SELECT *FROM `sample41`

#테이블 생성/데이터 저장
CREATE TABLE `sample411` (
`no` INT NOT NULL,
`d` INT DEFAULT 0
);

#p157
DESC `sample411`;

#p158
INSERT INTO `sample411`(`no`,`d`) VALUES(1,1);
SELECT * FROM `sample411`

INSERT INTO `sample411`(`no`,`d`) VALUES(2,DEFAULT);
SELECT * FROM `sample411`

#p159
INSERT INTO `sample411`(`no`) values(3);
SELECT * FROM `sample411`

###############################
#17강 삭제하기
###############################
#p161
SELECT * FROM `sample41`

#p162
DELETE FROM `sample41` WHERE `NO` = 3;
SELECT * FROM `sample41`

###############################
#18강 데이터 갱신하기
###############################
#p165
SELECT * FROM `sample41`

#p166
SELECT * FROM `sample41`
UPDATE `sample41` SET `b`= '2014-09-07' WHERE `no`=2

#p168
SELECT * FROM `sample41`
UPDATE `sample41` SET `no` =`no`+1;

#p170
UPDATE `sample41` SET `no`= `no`+1, `a` = `no`;
SELECT * FROM `sample41`

#p171
UPDATE `sample41` SET `a` = `no`, `no`=`no`+1;
SELECT * FROM `sample41`

#p173
UPDATE `sample41` SET `a` = NULL;
SELECT * FROM `sample41`
