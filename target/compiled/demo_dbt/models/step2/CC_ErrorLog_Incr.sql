
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(IsActive as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), UserAgent, ClientAddress, Headers, Body, MachineName, Stacktrace, UserMessage, Exceptiondetails, HttpMethod, URL, ReferrerURL)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ErrorLog_Inter]
	)
Select * From hashData
