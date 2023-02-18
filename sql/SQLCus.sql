use Project
go
--"D:\Aptech\HK2\Project\JavaFX\Main\src\image\CusImage\Dan.jpg"
INSERT INTO [dbo].[Customer] (customerName,customerDOB,customerAddress,customerPhone,customerMail,customerGender,customerUserName,customerImage)
SELECT 'Dan','2000-02-28','BT','123456780','dan@gmail.com','Female','dan',
	BulkColumn FROM OPENROWSET(BULK N'D:\Aptech\HK2\Project\Group1-RestaurantManagement\src\Main\src\image\CusImage\Dan.jfif', SINGLE_BLOB) image;
go


select * from [Customer]
go