/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.6.21 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

create table `auctionuser` (
	`userId` int (11),
	`userName` varchar (60),
	`userPassword` varchar (60),
	`userCardNo` varchar (60),
	`userTel` varchar (60),
	`userAddress` varchar (600),
	`userPostNumber` varchar (18),
	`userIsadmin` int (11),
	`userQuestion` varchar (300),
	`userAnswer` varchar (300)
); 
insert into `auctionuser` (`userId`, `userName`, `userPassword`, `userCardNo`, `userTel`, `userAddress`, `userPostNumber`, `userIsadmin`, `userQuestion`, `userAnswer`) values('1','Ming','22222',NULL,NULL,NULL,NULL,'2',NULL,NULL);
insert into `auctionuser` (`userId`, `userName`, `userPassword`, `userCardNo`, `userTel`, `userAddress`, `userPostNumber`, `userIsadmin`, `userQuestion`, `userAnswer`) values('4','Admin','11111',NULL,NULL,NULL,NULL,'1',NULL,NULL);
insert into `auctionuser` (`userId`, `userName`, `userPassword`, `userCardNo`, `userTel`, `userAddress`, `userPostNumber`, `userIsadmin`, `userQuestion`, `userAnswer`) values('5','test1','00000','123456789012345678','8787878','广东省广州','600600','0','','');
insert into `auctionuser` (`userId`, `userName`, `userPassword`, `userCardNo`, `userTel`, `userAddress`, `userPostNumber`, `userIsadmin`, `userQuestion`, `userAnswer`) values('7','Feng','22222',NULL,NULL,NULL,NULL,'2',NULL,NULL);
insert into `auctionuser` (`userId`, `userName`, `userPassword`, `userCardNo`, `userTel`, `userAddress`, `userPostNumber`, `userIsadmin`, `userQuestion`, `userAnswer`) values('8','Tom','22222','123456789012345678',NULL,NULL,'511500','2',NULL,NULL);
insert into `auctionuser` (`userId`, `userName`, `userPassword`, `userCardNo`, `userTel`, `userAddress`, `userPostNumber`, `userIsadmin`, `userQuestion`, `userAnswer`) values('9','Jack','99999','12345646456464','99999999','gangdong','599599','0','','');
insert into `auctionuser` (`userId`, `userName`, `userPassword`, `userCardNo`, `userTel`, `userAddress`, `userPostNumber`, `userIsadmin`, `userQuestion`, `userAnswer`) values('10','kk','11','123456789012345','12234','sadfsaf','23443','0','','');
