{{ config(materialized='view',schema='stg')}}
Select
	[DateID],[Date] 
From stg.[Mer_Date_Incr] 
Where [dbt_valid_to] is null