{{ config(materialized='table',schema='dbo')}}
Select
	cast([MergeLogID] as int) [MERGELOGID],
	cast([SourceContactID] as int) [SOURCECONTACTID],
	cast([SourceLegacyID] as int) [SOURCELEGACYID],
	cast([SourceName] as nvarchar(4000)) [SOURCENAME],
	cast([DestinationContactID] as int) [DESTINATIONCONTACTID],
	cast([DestinationLegacyID] as int) [DESTINATIONLEGACYID],
	cast([UserName] as nvarchar(4000)) [USERNAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_MergeLog_FinalView]