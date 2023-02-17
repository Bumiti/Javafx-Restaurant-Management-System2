﻿use Project
go

INSERT INTO [dbo].[Staff] (brandID,staffName,staffDOB,staffAddress,staffPossition,staffPhone,staffMail,staffSalary,staffUserName,staffImage)
SELECT 1,'Tin','10-03-2000','Q2','Manager',123456789,'tin@gmail.com',1000,'tin', 
	BulkColumn FROM OPENROWSET(BULK N'D:\Aptech\HK2\Project\JavaFX\Main\src\image\StaffImage\Tin.jpg', SINGLE_BLOB) image;
go

INSERT INTO [dbo].[Staff] (brandID,staffName,staffDOB,staffAddress,staffPossition,staffPhone,staffMail,staffSalary,staffUserName,staffImage)
SELECT 1,'Minh','10-03-2000','BT','Supervisor',123456789,'minh@gmail.com',800,'minh', 
	BulkColumn FROM OPENROWSET(BULK N'D:\Aptech\HK2\Project\JavaFX\Main\src\image\StaffImage\Minh.jpg', SINGLE_BLOB) image;
go

INSERT INTO [dbo].[Staff] (brandID,staffName,staffDOB,staffAddress,staffPossition,staffPhone,staffMail,staffSalary,staffUserName,staffImage)
SELECT 1,'Phat','10-03-2000','GV','Waiter',123456789,'phat@gmail.com',600,'phat', 
	BulkColumn FROM OPENROWSET(BULK N'D:\Aptech\HK2\Project\JavaFX\Main\src\image\StaffImage\Phat.jpg', SINGLE_BLOB) image;
go

select * from Staff
go