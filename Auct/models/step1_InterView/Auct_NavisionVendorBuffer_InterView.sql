{{ config(materialized='view',schema='stg')}}
Select
	cast([NO] as nvarchar(4000)) [No],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([NAME2] as nvarchar(4000)) [Name2],
	cast([ADDRESS] as nvarchar(4000)) [Address],
	cast([ADDRESS2] as nvarchar(4000)) [Address2],
	cast([CITY] as nvarchar(4000)) [City],
	cast([STATE] as nvarchar(4000)) [State],
	cast([COUNTRYCODE] as nvarchar(4000)) [CountryCode],
	cast([POSTALCODE] as nvarchar(4000)) [PostalCode],
	cast([PHONENO] as nvarchar(4000)) [Phoneno],
	cast([EMAIL] as nvarchar(4000)) [Email],
	cast([HOMEPAGE] as nvarchar(4000)) [HomePage],
	[TAXLIABLE] [Taxliable],
	cast([FEDERALIDNO] as nvarchar(4000)) [FederalIDno],
	cast([1099CODE] as nvarchar(4000)) [1099Code],
	[STATUS] [Status],
	cast([STATUSMESSAGE] as nvarchar(4000)) [StatusMessage],
	[WROTETONAVISION] [WrotetoNavision]
From stg.[Auct_NavisionVendorBuffer_Raw]
