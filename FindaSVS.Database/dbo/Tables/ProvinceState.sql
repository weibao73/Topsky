CREATE TABLE [dbo].[ProvinceState]
(
	ProvinceStateId int primary key not null IDENTITY,
	CountryId int NOT null foreign key references Country(CountryId), 
	Code nvarchar(2) NOT null, 
	Name nvarchar(30) not null
)
