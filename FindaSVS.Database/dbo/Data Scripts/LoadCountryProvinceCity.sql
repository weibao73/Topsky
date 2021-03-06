﻿--Cleanup
DELETE FROM [dbo].[City]
DBCC CHECKIDENT ([dbo.City], reseed, 0)

GO

DELETE FROM [dbo].[ProvinceState]
DBCC CHECKIDENT ([dbo.ProvinceState], reseed, 0)

GO

DELETE FROM [dbo].[Country]
DBCC CHECKIDENT ([dbo.Country], reseed, 0)

GO

insert into Country (code,name)
values
	('CA','Canada'),
	('US','United States')
GO

declare @countryCAId int;
select @countryCAId=CountryId from Country where code='CA'

insert into ProvinceState (CountryId, code,name)
values
	(@countryCAId, 'AB', 'Alberta'),
	(@countryCAId, 'BC', 'British Columbia'),
	(@countryCAId, 'MB', 'Manitoba'),
	(@countryCAId, 'NB', 'New Brunswick'),
	(@countryCAId, 'NL', 'Newfoundland and Labrador'),
	(@countryCAId, 'NS', 'Nova Scotia'),
	(@countryCAId, 'NT', 'Northwest Territories'),
	(@countryCAId, 'NU', 'Nunavut'),
	(@countryCAId, 'ON', 'Ontario'),
	(@countryCAId, 'PE', 'Prince Edward Island'),
	(@countryCAId, 'QC', 'Quebec'),
	(@countryCAId, 'SK', 'Saskatchewan'),
	(@countryCAId, 'YT', 'Yukon')

GO

declare @countryUSId int;
select @countryUSId=CountryId from Country where code='US'

insert into ProvinceState (CountryId, code,name)
values
	(@countryUSId, 'AL', 'Alabama'),
	(@countryUSId, 'AK', 'Alaska'),
	(@countryUSId, 'AZ', 'Arizona'),
	(@countryUSId, 'AR', 'Arkansas'),
	(@countryUSId, 'CA', 'California'),
	(@countryUSId, 'CO', 'Colorado'),
	(@countryUSId, 'CT', 'Connecticut'),
	(@countryUSId, 'DE', 'Delaware'),
	(@countryUSId, 'FL', 'Florida'),
	(@countryUSId, 'GA', 'Georgia'),
	(@countryUSId, 'HI', 'Hawaii'),
	(@countryUSId, 'ID', 'Idaho'),
	(@countryUSId, 'IL', 'Illinois'),
	(@countryUSId, 'IN', 'Indiana'),
	(@countryUSId, 'IA', 'Iowa'),
	(@countryUSId, 'KS', 'Kansas'),
	(@countryUSId, 'KY', 'Kentucky'),
	(@countryUSId, 'LA', 'Louisiana'),
	(@countryUSId, 'ME', 'Maine'),
	(@countryUSId, 'MD', 'Maryland'),
	(@countryUSId, 'MA', 'Massachusetts'),
	(@countryUSId, 'MI', 'Michigan'),
	(@countryUSId, 'MN', 'Minnesota'),
	(@countryUSId, 'MS', 'Mississippi'),
	(@countryUSId, 'MO', 'Missouri'),
	(@countryUSId, 'MT', 'Montana'),
	(@countryUSId, 'NE', 'Nebraska'),
	(@countryUSId, 'NV', 'Nevada'),
	(@countryUSId, 'NH', 'New Hampshire'),
	(@countryUSId, 'NJ', 'New Jersey'),
	(@countryUSId, 'NM', 'New Mexico'),
	(@countryUSId, 'NY', 'New York'),
	(@countryUSId, 'NC', 'North Carolina'),
	(@countryUSId, 'ND', 'North Dakota'),
	(@countryUSId, 'OH', 'Ohio'),
	(@countryUSId, 'OK', 'Oklahoma'),
	(@countryUSId, 'OR', 'Oregon'),
	(@countryUSId, 'PA', 'Pennsylvania'),
	(@countryUSId, 'RI', 'Rhode Island'),
	(@countryUSId, 'SC', 'South Carolina'),
	(@countryUSId, 'SD', 'South Dakota'),
	(@countryUSId, 'TN', 'Tennessee'),
	(@countryUSId, 'TX', 'Texas'),
	(@countryUSId, 'UT', 'Utah'),
	(@countryUSId, 'VT', 'Vermont'),
	(@countryUSId, 'VA', 'Virginia'),
	(@countryUSId, 'WA', 'Washington'),
	(@countryUSId, 'WV', 'West Virginia'),
	(@countryUSId, 'WI', 'Wisconsin'),
	(@countryUSId, 'WY', 'Wyoming')

GO

declare @Alberta int, @BritishColumbia int, @Manitoba int, @NewBrunswick int, @Newfoundland int, @NovaScotia int, @Ontario int, @Quebec int, @Saskatchewan int;
select @Alberta=ProvinceStateId from ProvinceState where code='AB'
select @BritishColumbia=ProvinceStateId from ProvinceState where code='BC'
select @Manitoba=ProvinceStateId from ProvinceState where code='MB'
select @NewBrunswick=ProvinceStateId from ProvinceState where code='NB'
select @Newfoundland=ProvinceStateId from ProvinceState where code='NL'
select @NovaScotia=ProvinceStateId from ProvinceState where code='NS'
select @Ontario=ProvinceStateId from ProvinceState where code='ON'
select @Quebec=ProvinceStateId from ProvinceState where code='QC'
select @Saskatchewan=ProvinceStateId from ProvinceState where code='SK'

insert into City (ProvinceStateId,name)
values
(@Alberta,'Calgary'),
(@Alberta,'Edmonton'),
(@Alberta,'Strathcona County'),
(@Alberta,'Red Deer'),
(@Alberta,'Lethbridge'),
(@Alberta,'Wood Buffalo'),
(@Alberta,'St. Albert'),
(@Alberta,'Medicine Hat'),
(@Alberta,'Grande Prairie'),
(@BritishColumbia,'Vancouver'),
(@BritishColumbia,'Surrey'),
(@BritishColumbia,'Burnaby'),
(@BritishColumbia,'Richmond'),
(@BritishColumbia,'Abbotsford'),
(@BritishColumbia,'Coquitlam'),
(@BritishColumbia,'Kelowna'),
(@BritishColumbia,'Saanich'),
(@BritishColumbia,'Langley'),
(@BritishColumbia,'Delta'),
(@BritishColumbia,'Kamloops'),
(@BritishColumbia,'North Vancouver'),
(@BritishColumbia,'Nanaimo'),
(@BritishColumbia,'Victoria'),
(@BritishColumbia,'Chilliwack'),
(@BritishColumbia,'Maple Ridge'),
(@BritishColumbia,'Prince George'),
(@BritishColumbia,'New Westminster'),
(@BritishColumbia,'Port Coquitlam'),
(@BritishColumbia,'North Vancouver'),
(@Manitoba,'Winnipeg'),
(@NewBrunswick,'Saint John'),
(@NewBrunswick,'Moncton'),
(@NewBrunswick,'Fredericton'),
(@Newfoundland,'St. John''s'),
(@NovaScotia,'Halifax'),
(@NovaScotia,'Cape Breton'),
(@Ontario,'Toronto'),
(@Ontario,'Ottawa'),
(@Ontario,'Mississauga'),
(@Ontario,'Brampton'),
(@Ontario,'Hamilton'),
(@Ontario,'London'),
(@Ontario,'Markham'),
(@Ontario,'Vaughan'),
(@Ontario,'Kitchener'),
(@Ontario,'Windsor'),
(@Ontario,'Richmond Hill'),
(@Ontario,'Oakville'),
(@Ontario,'Burlington'),
(@Ontario,'Greater Sudbury'),
(@Ontario,'Oshawa'),
(@Ontario,'Barrie'),
(@Ontario,'St. Catharines'),
(@Ontario,'Cambridge'),
(@Ontario,'Kingston'),
(@Ontario,'Whitby'),
(@Ontario,'Guelph'),
(@Ontario,'Ajax'),
(@Ontario,'Thunder Bay'),
(@Ontario,'Chatham-Kent'),
(@Ontario,'Waterloo'),
(@Ontario,'Brantford'),
(@Ontario,'Pickering'),
(@Ontario,'Clarington'),
(@Ontario,'Milton'),
(@Ontario,'Niagara Falls'),
(@Ontario,'Newmarket'),
(@Ontario,'Peterborough'),
(@Ontario,'Sault Ste. Marie'),
(@Ontario,'Kawartha Lakes'),
(@Ontario,'Sarnia'),
(@Ontario,'Norfolk County'),
(@Ontario,'Caledon'),
(@Ontario,'Halton Hills'),
(@Ontario,'North Bay'),
(@Ontario,'Aurora'),
(@Ontario,'Welland'),
(@Ontario,'Belleville'),
(@Quebec,'Montreal'),
(@Quebec,'Quebec City'),
(@Quebec,'Laval'),
(@Quebec,'Gatineau'),
(@Quebec,'Longueuil'),
(@Quebec,'Sherbrooke'),
(@Quebec,'Saguenay'),
(@Quebec,'Lévis'),
(@Quebec,'Trois-Rivières'),
(@Quebec,'Terrebonne'),
(@Quebec,'Saint-Jean-sur-Richelieu'),
(@Quebec,'Repentigny'),
(@Quebec,'Brossard'),
(@Quebec,'Drummondville'),
(@Quebec,'Saint-Jérôme'),
(@Quebec,'Granby'),
(@Quebec,'Blainville'),
(@Quebec,'Saint-Hyacinthe'),
(@Quebec,'Shawinigan'),
(@Quebec,'Dollard-des-Ormeaux'),
(@Saskatchewan,'Saskatoon'),
(@Saskatchewan,'Regina')

GO

declare
@Alabama int,
@Alaska int,
@Arizona int,
@Arkansas int,
@California int,
@Colorado int,
@Connecticut int,
@Delaware int,
@Florida int,
@Georgia int,
@Hawaii int,
@Idaho int,
@Illinois int,
@Indiana int,
@Iowa int,
@Kansas int,
@Kentucky int,
@Louisiana int,
@Maine int,
@Maryland int,
@Massachusetts int,
@Michigan int,
@Minnesota int,
@Mississippi int,
@Missouri int,
@Montana int,
@Nebraska int,
@Nevada int,
@NewHampshire int,
@NewJersey int,
@NewMexico int,
@NewYork int,
@NorthCarolina int,
@NorthDakota int,
@Ohio int,
@Oklahoma int,
@Oregon int,
@Pennsylvania int,
@RhodeIsland int,
@SouthCarolina int,
@SouthDakota int,
@Tennessee int,
@Texas int,
@Utah int,
@Vermont int,
@Virginia int,
@Washington int,
@WestVirginia int,
@Wisconsin int,
@Wyoming int

select @Alabama=ProvinceStateId from ProvinceState where code='AL'
select @Alaska=ProvinceStateId from ProvinceState where code='AK'
select @Arizona=ProvinceStateId from ProvinceState where code='AZ'
select @Arkansas=ProvinceStateId from ProvinceState where code='AR'
select @California=ProvinceStateId from ProvinceState where code='CA'
select @Colorado=ProvinceStateId from ProvinceState where code='CO'
select @Connecticut=ProvinceStateId from ProvinceState where code='CT'
select @Delaware=ProvinceStateId from ProvinceState where code='DE'
select @Florida=ProvinceStateId from ProvinceState where code='FL'
select @Georgia=ProvinceStateId from ProvinceState where code='GA'
select @Hawaii=ProvinceStateId from ProvinceState where code='HI'
select @Idaho=ProvinceStateId from ProvinceState where code='ID'
select @Illinois=ProvinceStateId from ProvinceState where code='IL'
select @Indiana=ProvinceStateId from ProvinceState where code='IN'
select @Iowa=ProvinceStateId from ProvinceState where code='IA'
select @Kansas=ProvinceStateId from ProvinceState where code='KS'
select @Kentucky=ProvinceStateId from ProvinceState where code='KY'
select @Louisiana=ProvinceStateId from ProvinceState where code='LA'
select @Maine=ProvinceStateId from ProvinceState where code='ME'
select @Maryland=ProvinceStateId from ProvinceState where code='MD'
select @Massachusetts=ProvinceStateId from ProvinceState where code='MA'
select @Michigan=ProvinceStateId from ProvinceState where code='MI'
select @Minnesota=ProvinceStateId from ProvinceState where code='MN'
select @Mississippi=ProvinceStateId from ProvinceState where code='MS'
select @Missouri=ProvinceStateId from ProvinceState where code='MO'
select @Montana=ProvinceStateId from ProvinceState where code='MT'
select @Nebraska=ProvinceStateId from ProvinceState where code='NE'
select @Nevada=ProvinceStateId from ProvinceState where code='NV'
select @NewHampshire=ProvinceStateId from ProvinceState where code='NH'
select @NewJersey=ProvinceStateId from ProvinceState where code='NJ'
select @NewMexico=ProvinceStateId from ProvinceState where code='NM'
select @NewYork=ProvinceStateId from ProvinceState where code='NY'
select @NorthCarolina=ProvinceStateId from ProvinceState where code='NC'
select @NorthDakota=ProvinceStateId from ProvinceState where code='ND'
select @Ohio=ProvinceStateId from ProvinceState where code='OH'
select @Oklahoma=ProvinceStateId from ProvinceState where code='OK'
select @Oregon=ProvinceStateId from ProvinceState where code='OR'
select @Pennsylvania=ProvinceStateId from ProvinceState where code='PA'
select @RhodeIsland=ProvinceStateId from ProvinceState where code='RI'
select @SouthCarolina=ProvinceStateId from ProvinceState where code='SC'
select @SouthDakota=ProvinceStateId from ProvinceState where code='SD'
select @Tennessee=ProvinceStateId from ProvinceState where code='TN'
select @Texas=ProvinceStateId from ProvinceState where code='TX'
select @Utah=ProvinceStateId from ProvinceState where code='UT'
select @Vermont=ProvinceStateId from ProvinceState where code='VT'
select @Virginia=ProvinceStateId from ProvinceState where code='VA'
select @Washington=ProvinceStateId from ProvinceState where code='WA'
select @WestVirginia=ProvinceStateId from ProvinceState where code='WV'
select @Wisconsin=ProvinceStateId from ProvinceState where code='WI'
select @Wyoming=ProvinceStateId from ProvinceState where code='WY'

insert into City (ProvinceStateId,name)
values
	(@Alabama,'Birmingham'),
	(@Alabama,'Montgomery'),
	(@Alabama,'Mobile'),
	(@Alabama,'Huntsville'),
	(@Alaska,'Anchorage'),
	(@Arizona,'Phoenix'),
	(@Arizona,'Tucson'),
	(@Arizona,'Mesa'),
	(@Arizona,'Glendale'),
	(@Arizona,'Chandler'),
	(@Arizona,'Scottsdale'),
	(@Arizona,'Gilbert'),
	(@Arizona,'Tempe'),
	(@Arizona,'Peoria'),
	(@Arkansas,'Little Rock'),
	(@California,'Los Angeles'),
	(@California,'San Diego'),
	(@California,'San Jose'),
	(@California,'San Francisco'),
	(@California,'Fresno'),
	(@California,'Sacramento'),
	(@California,'Long Beach'),
	(@California,'Oakland'),
	(@California,'Santa Ana'),
	(@California,'Anaheim'),
	(@California,'Bakersfield'),
	(@California,'Riverside'),
	(@California,'Stockton'),
	(@California,'Chula Vista'),
	(@California,'Irvine'),
	(@California,'Modesto'),
	(@California,'Fremont'),
	(@California,'San Bernardino'),
	(@California,'Glendale'),
	(@California,'Huntington Beach'),
	(@California,'Moreno Valley'),
	(@California,'Oxnard'),
	(@California,'Fontana'),
	(@California,'Ontario'),
	(@California,'Rancho Cucamonga'),
	(@California,'Oceanside'),
	(@California,'Santa Clarita'),
	(@California,'Santa Rosa'),
	(@California,'Corona'),
	(@California,'Lancaster'),
	(@California,'Salinas'),
	(@California,'Palmdale'),
	(@California,'Pasadena'),
	(@California,'Hayward'),
	(@California,'Torrance'),
	(@California,'Escondido'),
	(@California,'Orange'),
	(@California,'Elk Grove'),
	(@California,'Sunnyvale'),
	(@California,'Fullerton'),
	(@California,'Thousand Oaks'),
	(@California,'El Monte'),
	(@California,'Concord'),
	(@California,'Visalia'),
	(@California,'Simi Valley'),
	(@California,'Vallejo'),
	(@California,'Inglewood'),
	(@California,'Roseville'),
	(@California,'Victorville'),
	(@California,'Santa Clara'),
	(@California,'Costa Mesa'),
	(@California,'Downey'),
	(@California,'West Covina'),
	(@California,'San Buenaventura (Ventura)'),
	(@California,'Fairfield'),
	(@California,'Norwalk'),
	(@California,'Burbank'),
	(@California,'Richmond'),
	(@California,'Daly City'),
	(@California,'Berkeley'),
	(@California,'Antioch'),
	(@Colorado,'Denver'),
	(@Colorado,'Colorado Springs'),
	(@Colorado,'Aurora'),
	(@Colorado,'Lakewood'),
	(@Colorado,'Fort Collins'),
	(@Colorado,'Thornton'),
	(@Colorado,'Arvada'),
	(@Colorado,'Westminster'),
	(@Connecticut,'Bridgeport'),
	(@Connecticut,'Hartford'),
	(@Connecticut,'New Haven'),
	(@Connecticut,'Stamford'),
	(@Connecticut,'Waterbury'),
	(@Florida,'Miami'),
	(@Florida,'Tampa'),
	(@Florida,'St. Petersburg'),
	(@Florida,'Orlando'),
	(@Florida,'Jacksonville'),
	(@Florida,'Hialeah'),
	(@Florida,'Fort Lauderdale'),
	(@Florida,'Tallahassee'),
	(@Florida,'Cape Coral'),
	(@Florida,'Port St. Lucie'),
	(@Florida,'Pembroke Pines'),
	(@Florida,'Hollywood'),
	(@Florida,'Coral Springs'),
	(@Florida,'Gainesville'),
	(@Florida,'Miami Gardens'),
	(@Florida,'Miramar'),
	(@Florida,'Clearwater'),
	(@Florida,'Pompano Beach'),
	(@Florida,'Palm Bay'),
	(@Georgia,'Atlanta'),
	(@Georgia,'Augusta e[›]'),
	(@Georgia,'Columbus'),
	(@Georgia,'Savannah'),
	(@Georgia,'Athens e[›]'),
	(@Hawaii,'Honolulu b[›]'),
	(@Idaho,'Boise'),
	(@Illinois,'Chicago'),
	(@Illinois,'Aurora'),
	(@Illinois,'Rockford'),
	(@Illinois,'Joliet'),
	(@Illinois,'Naperville'),
	(@Illinois,'Springfield'),
	(@Illinois,'Peoria'),
	(@Illinois,'Elgin'),
	(@Indiana,'Indianapolis e[›]'),
	(@Indiana,'Fort Wayne'),
	(@Indiana,'Evansville'),
	(@Indiana,'South Bend'),
	(@Iowa,'Des Moines'),
	(@Iowa,'Cedar Rapids'),
	(@Iowa,'Davenport'),
	(@Kansas,'Wichita'),
	(@Kansas,'Kansas City'),
	(@Kansas,'Topeka'),
	(@Kansas,'Olathe'),
	(@Kentucky,'Louisville e[›]'),
	(@Kentucky,'Lexington'),
	(@Louisiana,'New Orleans'),
	(@Louisiana,'Baton Rouge'),
	(@Louisiana,'Shreveport'),
	(@Louisiana,'Lafayette'),
	(@Maine,'Portland'),
	(@Maine,'Lewiston'),
	(@Maine,'Bangor'),
	(@Maine,'Brunswick'),
	(@Maryland,'Baltimore f[›]'),
	(@Massachusetts,'Boston'),
	(@Massachusetts,'Worcester'),
	(@Massachusetts,'Springfield'),
	(@Massachusetts,'Cambridge'),
	(@Massachusetts,'Lowell'),
	(@Michigan,'Detroit'),
	(@Michigan,'Grand Rapids'),
	(@Michigan,'Warren'),
	(@Michigan,'Sterling Heights'),
	(@Michigan,'Ann Arbor'),
	(@Michigan,'Lansing'),
	(@Michigan,'Flint'),
	(@Minnesota,'Minneapolis'),
	(@Minnesota,'St. Paul'),
	(@Minnesota,'Rochester'),
	(@Mississippi,'Jackson'),
	(@Missouri,'Kansas City'),
	(@Missouri,'St. Louis f[›]'),
	(@Missouri,'Springfield'),
	(@Missouri,'Independence'),
	(@Missouri,'Columbia'),
	(@Montana,'Billings'),
	(@Nebraska,'Omaha'),
	(@Nebraska,'Lincoln'),
	(@Nevada,'Las Vegas'),
	(@Nevada,'Henderson'),
	(@Nevada,'North Las Vegas'),
	(@Nevada,'Reno'),
	(@NewHampshire,'Manchester'),
	(@NewJersey,'Newark'),
	(@NewJersey,'Jersey City'),
	(@NewJersey,'Paterson'),
	(@NewJersey,'Elizabeth'),
	(@NewMexico,'Albuquerque'),
	(@NewYork,'New York'),
	(@NewYork,'Buffalo'),
	(@NewYork,'Rochester'),
	(@NewYork,'Yonkers'),
	(@NewYork,'Syracuse'),
	(@NorthCarolina,'Charlotte'),
	(@NorthCarolina,'Raleigh'),
	(@NorthCarolina,'Greensboro'),
	(@NorthCarolina,'Winston-Salem'),
	(@NorthCarolina,'Fayetteville'),
	(@NorthCarolina,'Cary'),
	(@NorthCarolina,'High Point'),
	(@NorthCarolina,'Wilmington'),
	(@NorthDakota,'Fargo'),
	(@Ohio,'Columbus'),
	(@Ohio,'Cleveland'),
	(@Ohio,'Cincinnati'),
	(@Ohio,'Toledo'),
	(@Ohio,'Akron'),
	(@Ohio,'Dayton'),
	(@Oklahoma,'Oklahoma City'),
	(@Oklahoma,'Tulsa'),
	(@Oklahoma,'Norman'),
	(@Oregon,'Portland'),
	(@Oregon,'Salem'),
	(@Oregon,'Eugene'),
	(@Oregon,'Gresham'),
	(@Pennsylvania,'Philadelphia'),
	(@Pennsylvania,'Pittsburgh'),
	(@Pennsylvania,'Allentown'),
	(@Pennsylvania,'Erie'),
	(@RhodeIsland,'Providence'),
	(@SouthCarolina,'Columbia'),
	(@SouthCarolina,'Charleston'),
	(@SouthDakota,'Sioux Falls'),
	(@Tennessee,'Memphis'),
	(@Tennessee,'Nashville e[›]'),
	(@Tennessee,'Knoxville'),
	(@Tennessee,'Chattanooga'),
	(@Tennessee,'Clarksville'),
	(@Tennessee,'Murfreesboro'),
	(@Texas,'Houston'),
	(@Texas,'San Antonio'),
	(@Texas,'Dallas'),
	(@Texas,'Austin'),
	(@Texas,'Fort Worth'),
	(@Texas,'El Paso'),
	(@Texas,'Arlington'),
	(@Texas,'Corpus Christi'),
	(@Texas,'Plano'),
	(@Texas,'Laredo'),
	(@Texas,'Lubbock'),
	(@Texas,'Garland'),
	(@Texas,'Irving'),
	(@Texas,'Brownsville'),
	(@Texas,'Grand Prairie'),
	(@Texas,'Pasadena'),
	(@Texas,'Mesquite'),
	(@Texas,'McAllen'),
	(@Texas,'Carrollton'),
	(@Texas,'Waco'),
	(@Texas,'McKinney'),
	(@Texas,'Denton'),
	(@Texas,'Killeen'),
	(@Texas,'Abilene'),
	(@Texas,'Beaumont'),
	(@Texas,'Midland'),
	(@Texas,'Round Rock'),
	(@Texas,'Lewisville'),
	(@Texas,'Richardson'),
	(@Texas,'Wichita Falls'),
	(@Utah,'Salt Lake City'),
	(@Utah,'West Valley City'),
	(@Utah,'Provo'),
	(@Utah,'West Jordan'),
	(@Virginia,'Virginia Beach f[›]'),
	(@Virginia,'Norfolk f[›]'),
	(@Virginia,'Chesapeake f[›]'),
	(@Virginia,'Arlington c[›]'),
	(@Virginia,'Richmond f[›]'),
	(@Virginia,'Newport News f[›]'),
	(@Virginia,'Hampton f[›]'),
	(@Virginia,'Alexandria f[›]'),
	(@Virginia,'Portsmouth f[›]'),
	(@Washington,'Seattle'),
	(@Washington,'Spokane'),
	(@Washington,'Tacoma'),
	(@Washington,'Vancouver'),
	(@Washington,'Bellevue'),
	(@Wisconsin,'Milwaukee'),
	(@Wisconsin,'Madison'),
	(@Wisconsin,'Green Bay')

GO