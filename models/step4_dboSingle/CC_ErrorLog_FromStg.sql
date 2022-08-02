{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([UserMessage] as nvarchar(4000)) [UserMessage],
	cast([Exceptiondetails] as nvarchar(4000)) [Exceptiondetails],
	cast([HttpMethod] as nvarchar(4000)) [HttpMethod],
	cast([URL] as nvarchar(4000)) [URL],
	cast([ReferrerURL] as nvarchar(4000)) [ReferrerURL],
	cast([UserAgent] as nvarchar(4000)) [UserAgent],
	cast([ClientAddress] as nvarchar(4000)) [ClientAddress],
	cast([Headers] as nvarchar(4000)) [Headers],
	cast([Body] as nvarchar(4000)) [Body],
	cast([MachineName] as nvarchar(4000)) [MachineName],
	cast([Stacktrace] as nvarchar(4000)) [Stacktrace],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([IsActive] as bit) [IsActive] 
From stg.[CC_ErrorLog_FinalView]