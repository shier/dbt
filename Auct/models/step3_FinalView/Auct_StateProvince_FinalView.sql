{{ config(materialized='view',schema='stg')}}
Select
	[Abbreviation],[FullName],[CountryID],[Active] 
From [Auct_StateProvince_Incr]