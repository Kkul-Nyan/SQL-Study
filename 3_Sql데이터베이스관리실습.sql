#날짜 : 2022/06/14
#이름 : 정현기
#내용 : 데이터베이스 관리 실습

#백업과 복원
#C:\>mysqldump -u root -p mydb > mydb.sql sql 백업하기
#C:\>mysql -u root -p mydb < mydb.sql 백업 복원하기
#콘솔에서 관리자 모드로 들어가서 진행 할것.

#계정 생성

CREATE USER 'tester1'@'%' IDENTIFIED BY '1234';
#권한 주기 '.'주의할것 테이블이름.이다
GRANT ALL PRIVILEGES ON mydb.*TO'tester1'@'%';
FLUSH PRIVILEGES ; 
#꼐정삭제
DROP USER 'tester1'@'%'