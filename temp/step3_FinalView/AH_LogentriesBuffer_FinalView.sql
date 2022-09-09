{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Message],[Properties],[MachineName],[Title],[FunctionalArea],[Severity],[Actor],[ExceptionClass],[Stacktrace],[SqlDaTestamp],[EntryDaTestamp],[Priority],[EventID] 
From stg.[AH_LogentriesBuffer_Incr] 
Where [dbt_valid_to] is null