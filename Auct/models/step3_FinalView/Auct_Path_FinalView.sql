{{ config(materialized='view',schema='stg')}}
Select
	[PathID],[Path],[Active] 
From stg.[Auct_Path_Incr] 
Where [dbt_valid_to] is null