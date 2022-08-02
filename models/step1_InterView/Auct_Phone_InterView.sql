{{ config(materialized='view',schema='stg')}}
Select
	[PHONEID] [PhoneID],
	[COUNTRYID] [CountryID],
	cast([AREACODE] as nvarchar(4000)) [AreaCode],
	cast([PHONENUMBER] as nvarchar(4000)) [PhoneNumber],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([ACTIVE] as nvarchar(4000)) [Active],
	cast([WEBPHONEID] as nvarchar(4000)) [WebPhoneID]
From stg.[Auct_Phone_Raw]
