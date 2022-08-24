{{ config(materialized='view',schema='stg')}}
Select
	[CityID],[Name],[County],[State],[StateAbbreviation],[PostalCode] 
From stg.[Auct_City_Incr] 
Where [dbt_valid_to] is null