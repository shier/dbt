create view "stg"."CC_BotList_InterView__dbt_tmp" as
    
Select
	[BotListPK] [BotListPK],
	cast([BotString] as nvarchar(4000)) [BotString]
From stg.[CC_BotList_Raw]
