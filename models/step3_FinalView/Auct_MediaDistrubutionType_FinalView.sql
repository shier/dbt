{{ config(materialized='view',schema='stg')}}
Select
	[DistributionTypeID],[Name] 
From stg.[Auct_MediaDistrubutionType_Incr] 
Where [dbt_valid_to] is null