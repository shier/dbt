{{ config(materialized='view',schema='stg')}}
Select
	[SeasonID],[Name],[Active] 
From stg.[Auct_Season_Incr] 
Where [dbt_valid_to] is null