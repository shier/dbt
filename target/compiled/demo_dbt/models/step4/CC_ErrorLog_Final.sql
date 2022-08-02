
Select
	[ID],[IsActive],[CreateDate],[ModifyDate],[UserAgent],[ClientAddress],[Headers],[Body],[MachineName],[Stacktrace],[UserMessage],[Exceptiondetails],[HttpMethod],[URL],[ReferrerURL] 
From stg.[CC_ErrorLog_Incr] 
Where [dbt_valid_to] is null