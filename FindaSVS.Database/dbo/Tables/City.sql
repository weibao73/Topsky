CREATE TABLE [dbo].[City]
(
	CityId int primary key not null IDENTITY,
	ProvinceStateId int NOT null foreign key references ProvinceState(ProvinceStateId), 
	Name nvarchar(30) not null
)
