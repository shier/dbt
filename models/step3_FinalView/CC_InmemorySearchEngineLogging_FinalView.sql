{{ config(materialized='view',schema='stg')}}
Select
	[LogPK],[ServerName],[Message],[CreateDateUTC],[ThReadID] 
From stg.[CC_InmemorySearchEngineLogging_Incr] 
Where [dbt_valid_to] is null