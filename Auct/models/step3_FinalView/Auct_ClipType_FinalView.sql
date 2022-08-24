{{ config(materialized='view',schema='stg')}}
Select
	[ClipTypeID],[Name],[Active] 
From stg.[Auct_ClipType_Incr] 
Where [dbt_valid_to] is null