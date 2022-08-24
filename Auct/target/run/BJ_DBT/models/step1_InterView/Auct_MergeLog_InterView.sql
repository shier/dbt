create view "stg"."Auct_MergeLog_InterView__dbt_tmp" as
    
Select
	[MERGELOGID] [MergeLogID],
	[SOURCECONTACTID] [SourceContactID],
	[SOURCELEGACYID] [SourceLegacyID],
	cast([SOURCENAME] as nvarchar(4000)) [SourceName],
	[DESTINATIONCONTACTID] [DestinationContactID],
	[DESTINATIONLEGACYID] [DestinationLegacyID],
	cast([USERNAME] as nvarchar(4000)) [UserName],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_MergeLog_Raw]
