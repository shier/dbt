{{ config(materialized='view',schema='stg')}}
Select
	[Make],[DateinsertedUTC] 
From stg.[CC_Lookup_PopularMakes_Incr] 
Where [dbt_valid_to] is null