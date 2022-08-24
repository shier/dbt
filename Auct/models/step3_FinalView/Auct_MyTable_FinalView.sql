{{ config(materialized='view',schema='stg')}}
Select
	[MyTableID],[Code],[Description] 
From stg.[Auct_MyTable_Incr] 
Where [dbt_valid_to] is null