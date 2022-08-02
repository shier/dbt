
Select
	[LogPK],[CreateDateUTC],[ThReadID],[ServerName],[Message] 
From stg.[CC_InmemorySearchEngineLogging_Incr] 
Where [dbt_valid_to] is null