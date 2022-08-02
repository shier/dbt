{{ config(materialized='view',schema='stg')}}
Select
	[Column1],[Column2] 
From stg.[Mer_Categorystuff_Incr] 
Where [dbt_valid_to] is null