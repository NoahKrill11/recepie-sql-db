if DB_ID('recepie') is not null
Drop database recepie;
GO

create database recepie;
GO
use recepie;
create LOGIN user1 with Password = 'pword1'
create USER user1 for Login user1 ;