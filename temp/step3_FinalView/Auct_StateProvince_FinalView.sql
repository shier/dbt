{{ config(materialized='view',schema='stg')}}
Select
	[Abbreviation],[FullName],[CountryID],[Active] 
From [Auct_StateProvince_Incr] 
Where [dbt_valid_to] is null