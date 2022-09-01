{{ config(materialized='view',schema='stg')}}
Select
	[ID],[UserMessage],[Exceptiondetails],[HttpMethod],[URL],[ReferrerURL],[UserAgent],[ClientAddress],[Headers],[Body],[MachineName],[Stacktrace],[CreateDate],[ModifyDate],[IsActive] 
From stg.[CC_ErrorLog_Incr] 
Where [dbt_valid_to] is null