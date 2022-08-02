{{ config(materialized='table',schema='dbo')}}
Select
	cast([MergeLogID] as int) [MergeLogID],
	cast([SourceContactID] as int) [SourceContactID],
	cast([SourceLegacyID] as int) [SourceLegacyID],
	cast([SourceName] as nvarchar(4000)) [SourceName],
	cast([DestinationContactID] as int) [DestinationContactID],
	cast([DestinationLegacyID] as int) [DestinationLegacyID],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_MergeLog_FinalView]