{{ config(materialized='view',schema='stg')}}
Select
	[FestivalID],[Active],[Name],[Longitude],[Latitude],[GBS_FestivalID] 
From stg.[Auct_GBS_Festival_Incr] 
Where [dbt_valid_to] is null