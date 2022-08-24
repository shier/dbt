{{ config(materialized='view',schema='stg')}}
Select
	[BannerTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_BannerType_Incr] 
Where [dbt_valid_to] is null