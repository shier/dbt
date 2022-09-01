{{ config(materialized='view',schema='stg')}}
Select
	[FeatureName],[Enabled] 
From stg.[CC_Feature_Incr] 
Where [dbt_valid_to] is null