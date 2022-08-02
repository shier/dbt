{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Priority],[EventID],[SqlDaTestamp],[EntryDaTestamp],[MachineName],[Message],[Title],[FunctionalArea],[Severity],[Actor],[ExceptionClass],[Stacktrace],[Properties] 
From stg.[AH_Logentries_Incr] 
Where [dbt_valid_to] is null