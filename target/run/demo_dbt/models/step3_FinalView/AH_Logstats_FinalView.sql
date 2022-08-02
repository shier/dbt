create view "stg"."AH_Logstats_FinalView__dbt_tmp" as
    
Select
	[FromDate],[RangeMinutes],[EntryCount],[IsArchived],[Severity] 
From [AH_Logstats_Incr]
