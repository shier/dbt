{{ config(materialized='table',schema='dbo')}}
Select
	cast([Abbreviation] as nvarchar(4000)) [Abbreviation],
	cast([FullName] as nvarchar(4000)) [FullName],
	cast([CountryID] as int) [CountryID],
	cast([Active] as nvarchar(4000)) [Active] 
From stg.[Auct_StateProvince_FinalView]