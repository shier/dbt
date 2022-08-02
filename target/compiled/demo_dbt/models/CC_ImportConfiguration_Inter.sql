
Select
	cast(FileName as nvarchar(4000)) FileName,
	ActiveFromUTC ActiveFromUTC,
	ActiveToUTC ActivetOutC,
	LastSuccessFileTimestamp LastSuccessFileTimeStamp,
	LastSuccessCompletedUTC LastSuccessCompletedUTC,
	FileTimestamp FileTimeStamp,
	CycleStart CycleStart,
	CycleEnd CycleEnd,
	CompanyId CompanyID,
	FileSize_KBytes FileSize_kBytes,
	TotalEntries Totalentries,
	ValidEntries ValIDEntries,
	CompletedEntries Completedentries,
	AllowLinksInDescriptions AllowLinksinDescriptions,
	SkipMakeModelVerification SkipMakeModelVerification
From CC_ImportConfiguration_Raw