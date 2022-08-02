create view "stg"."CC_AlerttriggerReasons_FinalView__dbt_tmp" as
    
Select
	[ID],[Description] 
From stg.[CC_AlerttriggerReasons_Incr] 
Where [dbt_valid_to] is null
