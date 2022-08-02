{{ config(materialized='view',schema='stg')}}
Select
	[FromDate],[RangeMinutes],[EntryCount],[IsArchived],[Severity] 
From [AH_Logstats_Incr]