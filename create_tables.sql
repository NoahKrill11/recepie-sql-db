use recepieBook
go

Drop table if exists recepieBook.recepie;
go

create table ingrediants
(
	ingredeintID int not null PRIMARY KEY,
	ingrediantName varchar(255)
);

go 

create table UOM
(
	UOMID int not null PRIMARY KEY,
	UOM varchar(255)
);

create table recepie
(
	recepieName varchar(255),
	author varchar(255),
	createdDate datetime,
	ingredeintID int FOREIGN KEY references ingrediants (ingredeintID),
	quantity float(25),
	UOMID int FOREIGN KEY references UOM (UOMID)

);
