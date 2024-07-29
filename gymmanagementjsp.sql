create database gymmanagementjsp;

use gymmanagementjsp;

CREATE TABLE `admin` (
  `email` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`email`)
);

INSERT INTO `admin` VALUES ('admin','admin');

CREATE TABLE `enquiry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `mobileNumber` bigint DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `age` varchar(5) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `enquiry` VALUES (2,'Abhishek Pandey',9876543201,'abhi123@gmail.com','25','male'),(3,'Abhi',9608474800,'abhishek9608abhi@gmail.com','25','male'),(4,'Hitesh',6225121415,'hitesh123@gmail.com','25','male');

CREATE TABLE `equipment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ename` varchar(100) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `unit` bigint DEFAULT NULL,
  `purchasedate` date DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `equipment` VALUES (2,'Stepper','2500',1,'2021-10-21','shdhs sgdhjdsg '),(3,'Treadmill','3500',1,'2021-10-21','dsd fgfg'),(4,'Drill','50000',1,'2021-10-22','All Drill Are good');

CREATE TABLE `member` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `mobileNumber` bigint DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `mplan` varchar(50) DEFAULT NULL,
  `joindate` date DEFAULT NULL,
  `initamount` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `member` VALUES (2,'Gautam',7896564541,'gautam123@gmail.com','male','Golden Plan','2021-10-22','3500'),(3,'Dipu Rai',9632587410,'dipu123@gmail.com','male','Silver Plan','2021-10-22','3000'),(4,'Ashutosh',7410258963,'ashu123@gmail.com','male','Golden Plan 1','2021-10-22','5000'),(5,'Ankit',9632584546,'ankit@gmail.com','male','Silver Plan 1','2021-10-22','5000');

CREATE TABLE `plan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pname` varchar(100) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL,
  `duration` int DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `plan` VALUES (3,'Golden Plans','1500',3),(4,'Silver Plan','1500',6),(5,'Golden Plan 1','2500',6),(6,'Silver Plan 1','2500',2);
