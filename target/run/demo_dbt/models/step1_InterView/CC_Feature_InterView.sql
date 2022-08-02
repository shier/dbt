create view "stg"."CC_Feature_InterView__dbt_tmp" as
    
Select
	cast([FeatureName] as nvarchar(4000)) [FeatureName],
	[Enabled] [Enabled]
From stg.[CC_Feature_Raw]
