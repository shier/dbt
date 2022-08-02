create view "stg"."CC_UserCreationSources_FinalView__dbt_tmp" as
    
Select
	[ID],[Description] 
From stg.[CC_UserCreationSources_Incr] 
Where [dbt_valid_to] is null
