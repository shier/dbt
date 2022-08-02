create view "stg"."CC_InmemorySearchEngineLogging_FinalView__dbt_tmp" as
    
Select
	[LogPK],[ServerName],[Message],[CreateDateUTC],[ThReadID] 
From stg.[CC_InmemorySearchEngineLogging_Incr] 
Where [dbt_valid_to] is null
