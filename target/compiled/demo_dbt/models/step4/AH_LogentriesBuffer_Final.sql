
Select
	[ID],[Message],[Title],[FunctionalArea],[Severity],[Actor],[ExceptionClass],[Stacktrace],[Properties],[MachineName],[SqlDaTestamp],[EntryDaTestamp],[Priority],[EventID] 
From stg.[AH_LogentriesBuffer_Incr] 
Where [dbt_valid_to] is null