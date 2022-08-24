{{ config(materialized='view',schema='stg')}}
Select
	[ClipID],[ClipTypeID],[MultiMediaID],[Active],[Name],[Description] 
From stg.[Auct_Clip_Incr] 
Where [dbt_valid_to] is null