{{ config(materialized='view',schema='stg')}}
Select
	[BotListPK],[BotString] 
From stg.[CC_BotList_Incr] 
Where [dbt_valid_to] is null