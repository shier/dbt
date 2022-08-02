{{ config(materialized='table',schema='dbo')}}
Select
	cast([FeatureName] as nvarchar(4000)) [FeatureName],
	cast([Enabled] as bit) [Enabled] 
From stg.[CC_Feature_FinalView]