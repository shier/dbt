create view "stg"."CC_BotList_FinalView__dbt_tmp" as
    
Select
	[BotListPK],[BotString] 
From stg.[CC_BotList_Incr] 
Where [dbt_valid_to] is null
