
Select
	RangeMinutes RangeMinutes,
	EntryCount EntryCount,
	IsArchived IsArchived,
	FromDate FromDate,
	cast(Severity as nvarchar(4000)) Severity
From AH_Logstats_Raw