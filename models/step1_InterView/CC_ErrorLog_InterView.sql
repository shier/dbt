{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	cast([UserMessage] as nvarchar(4000)) [UserMessage],
	cast([ExceptionDetails] as nvarchar(4000)) [Exceptiondetails],
	cast([HttpMethod] as nvarchar(4000)) [HttpMethod],
	cast([Url] as nvarchar(4000)) [URL],
	cast([ReferrerUrl] as nvarchar(4000)) [ReferrerURL],
	cast([UserAgent] as nvarchar(4000)) [UserAgent],
	cast([ClientAddress] as nvarchar(4000)) [ClientAddress],
	cast([Headers] as nvarchar(4000)) [Headers],
	cast([Body] as nvarchar(4000)) [Body],
	cast([MachineName] as nvarchar(4000)) [MachineName],
	cast([StackTrace] as nvarchar(4000)) [Stacktrace],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	[IsActive] [IsActive]
From stg.[CC_ErrorLog_Raw]
