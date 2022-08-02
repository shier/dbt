create view "stg"."CC_DriveTrain_FinalView__dbt_tmp" as
    
Select
	[ID],[Description] 
From stg.[CC_DriveTrain_Incr] 
Where [dbt_valid_to] is null
