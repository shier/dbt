{{ config(materialized='view',schema='stg')}}
Select
	[BotListPK] [BotListPK],
	cast([BotString] as nvarchar(4000)) [BotString]
From stg.[CC_BotList_Raw]
