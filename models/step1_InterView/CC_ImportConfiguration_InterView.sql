{{ config(materialized='view',schema='stg')}}
Select
	[CompanyId] [CompanyID],
	[FileSize_KBytes] [FileSize_kBytes],
	[TotalEntries] [Totalentries],
	[ValidEntries] [ValIDEntries],
	[CompletedEntries] [Completedentries],
	[ActiveFromUTC] [ActiveFromUTC],
	[ActiveToUTC] [ActivetOutC],
	[LastSuccessFileTimestamp] [LastSuccessFileTimeStamp],
	[LastSuccessCompletedUTC] [LastSuccessCompletedUTC],
	[FileTimestamp] [FileTimeStamp],
	[CycleStart] [CycleStart],
	[CycleEnd] [CycleEnd],
	[AllowLinksInDescriptions] [AllowLinksinDescriptions],
	[SkipMakeModelVerification] [SkipMakeModelVerification],
	cast([FileName] as nvarchar(4000)) [FileName]
From stg.[CC_ImportConfiguration_Raw]
