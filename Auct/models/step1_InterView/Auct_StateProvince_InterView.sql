{{ config(materialized='view',schema='stg')}}
Select
	cast([ABBREVIATION] as nvarchar(4000)) [Abbreviation],
	cast([FULLNAME] as nvarchar(4000)) [FullName],
	[COUNTRYID] [CountryID],
	cast([ACTIVE] as nvarchar(4000)) [Active]
From stg.[Auct_StateProvince_Raw]
