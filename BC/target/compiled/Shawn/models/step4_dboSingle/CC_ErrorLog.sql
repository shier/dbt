
Select
	cast([UserMessage] as nvarchar(4000)) [UserMessage],
	cast([Exceptiondetails] as nvarchar(4000)) [ExceptionDetails],
	cast([HttpMethod] as nvarchar(4000)) [HttpMethod],
	cast([URL] as nvarchar(4000)) [Url],
	cast([ReferrerURL] as nvarchar(4000)) [ReferrerUrl],
	cast([UserAgent] as nvarchar(4000)) [UserAgent],
	cast([ClientAddress] as nvarchar(4000)) [ClientAddress],
	cast([Headers] as nvarchar(4000)) [Headers],
	cast([Body] as nvarchar(4000)) [Body],
	cast([MachineName] as nvarchar(4000)) [MachineName],
	cast([Stacktrace] as nvarchar(4000)) [StackTrace],
	cast([ID] as int) [Id],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([IsActive] as bit) [IsActive] 
From stg.[CC_ErrorLog_FinalView]