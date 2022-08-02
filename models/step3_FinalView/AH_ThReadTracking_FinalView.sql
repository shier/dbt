{{ config(materialized='view',schema='stg')}}
Select
	[ThReadGUID],[Name],[DaTestamp],[PrimarythRead] 
From stg.[AH_ThReadTracking_Incr] 
Where [dbt_valid_to] is null