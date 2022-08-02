create view "stg"."CC_Feature_FinalView__dbt_tmp" as
    
Select
	[FeatureName],[Enabled] 
From stg.[CC_Feature_Incr] 
Where [dbt_valid_to] is null
