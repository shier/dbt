{{ config(materialized='view',schema='stg')}}
Select
	cast([FeatureName] as nvarchar(4000)) [FeatureName],
	[Enabled] [Enabled]
From stg.[CC_Feature_Raw]
