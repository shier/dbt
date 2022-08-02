
Select
	cast(ADDRESS1 as nvarchar(4000)) Address1,
	cast(ADDRESS2 as nvarchar(4000)) Address2,
	cast(CITY as nvarchar(4000)) City,
	cast(STATEPROVINCE as nvarchar(4000)) StateProvince,
	cast(POSTALCODE as nvarchar(4000)) PostalCode,
	cast(CAREOF as nvarchar(4000)) Careof,
	cast(ACTIVE as nvarchar(4000)) Active,
	cast(COUNTY as nvarchar(4000)) County,
	cast(WEBADDRESSID as nvarchar(4000)) WeBaddressID,
	CREATED Created,
	ADDRESSID AddressID,
	COUNTRY Country,
	UPDATEEVENTID UpdateEventID
From Auct_Address_Raw