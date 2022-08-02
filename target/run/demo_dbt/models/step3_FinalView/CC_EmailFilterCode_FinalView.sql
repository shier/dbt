create view "stg"."CC_EmailFilterCode_FinalView__dbt_tmp" as
    
Select
	[ID],[Description] 
From stg.[CC_EmailFilterCode_Incr] 
Where [dbt_valid_to] is null
