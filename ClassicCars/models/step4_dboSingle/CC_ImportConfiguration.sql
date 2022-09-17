{{ config(materialized='table',schema='dbo')}}
Select
	cast([CompanyID] as int) [CompanyId],
	cast([FileSize_kBytes] as int) [FileSize_KBytes],
	cast([Totalentries] as int) [TotalEntries],
	cast([ValIDEntries] as int) [ValidEntries],
	cast([Completedentries] as int) [CompletedEntries],
	cast([ActiveFromUTC] as datetime) [ActiveFromUTC],
	cast([ActivetOutC] as datetime) [ActiveToUTC],
	cast([LastSuccessFileTimeStamp] as datetime) [LastSuccessFileTimestamp],
	cast([LastSuccessCompletedUTC] as datetime) [LastSuccessCompletedUTC],
	cast([FileTimeStamp] as datetime) [FileTimestamp],
	cast([CycleStart] as datetime) [CycleStart],
	cast([CycleEnd] as datetime) [CycleEnd],
	cast([AllowLinksinDescriptions] as bit) [AllowLinksInDescriptions],
	cast([SkipMakeModelVerification] as bit) [SkipMakeModelVerification],
	cast([FileName] as nvarchar(4000)) [FileName] 
From stg.[CC_ImportConfiguration_FinalView]