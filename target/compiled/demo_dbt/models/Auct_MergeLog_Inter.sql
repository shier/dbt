
Select
	CREATED Created,
	UPDATEEVENTID UpdateEventID,
	MERGELOGID MergeLogID,
	SOURCECONTACTID SourceContactID,
	SOURCELEGACYID SourceLegacyID,
	DESTINATIONCONTACTID DestinationContactID,
	DESTINATIONLEGACYID DestinationLegacyID,
	cast(SOURCENAME as nvarchar(4000)) SourceName,
	cast(USERNAME as nvarchar(4000)) UserName
From Auct_MergeLog_Raw