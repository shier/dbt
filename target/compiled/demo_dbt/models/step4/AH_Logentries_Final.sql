
Select
	[ID],[Priority],[EventID],[SqlDaTestamp],[EntryDaTestamp],[Title],[FunctionalArea],[Severity],[Actor],[ExceptionClass],[Stacktrace],[Message],[Properties],[MachineName] 
From stg.[AH_Logentries_Incr] 
Where [dbt_valid_to] is null