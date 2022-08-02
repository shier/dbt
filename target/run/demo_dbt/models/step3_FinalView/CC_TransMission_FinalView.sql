create view "stg"."CC_TransMission_FinalView__dbt_tmp" as
    
Select
	[ID],[Description] 
From stg.[CC_TransMission_Incr] 
Where [dbt_valid_to] is null
