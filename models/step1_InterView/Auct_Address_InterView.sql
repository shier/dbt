{{ config(materialized='view',schema='stg')}}
Select
	[ADDRESSID] [AddressID],
	cast([ADDRESS1] as nvarchar(4000)) [Address1],
	cast([ADDRESS2] as nvarchar(4000)) [Address2],
	cast([CITY] as nvarchar(4000)) [City],
	cast([STATEPROVINCE] as nvarchar(4000)) [StateProvince],
	cast([POSTALCODE] as nvarchar(4000)) [PostalCode],
	[COUNTRY] [Country],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([CAREOF] as nvarchar(4000)) [Careof],
	cast([ACTIVE] as nvarchar(4000)) [Active],
	cast([COUNTY] as nvarchar(4000)) [County],
	cast([WEBADDRESSID] as nvarchar(4000)) [WeBaddressID]
From stg.[Auct_Address_Raw]
