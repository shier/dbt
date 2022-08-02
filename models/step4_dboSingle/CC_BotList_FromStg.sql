{{ config(materialized='table',schema='dbo')}}
Select
	cast([BotListPK] as int) [BotListPK],
	cast([BotString] as nvarchar(4000)) [BotString] 
From stg.[CC_BotList_FinalView]