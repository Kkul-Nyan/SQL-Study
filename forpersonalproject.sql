CREATE DATABASE `typingtraining`;
CREATE TABLE `typingKorword` (
`CID` INT, 
`Content` VARCHAR(50) NOT null
);

CREATE TABLE `typingEngstring` (
`CID` INT, 
`Content` VARCHAR(100) NOT null
);

CREATE TABLE `typingKorstring` (
`CID` INT, 
`Content` VARCHAR(100) NOT null
);

CREATE TABLE `typingEngword` (
`CID` INT, 
`Content` VARCHAR(50) NOT null
);

CREATE TABLE `typingKorpage` (
`CID` INT, 
`Content` VARCHAR(3000) NOT null
);

CREATE TABLE `typingEngpage` (
`CID` INT, 
`Content` VARCHAR(50) NOT null
);