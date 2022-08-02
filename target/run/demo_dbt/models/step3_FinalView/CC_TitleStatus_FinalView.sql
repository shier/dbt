create view "stg"."CC_TitleStatus_FinalView__dbt_tmp" as
    
Select
	[ID],[Description] 
From stg.[CC_TitleStatus_Incr] 
Where [dbt_valid_to] is null
