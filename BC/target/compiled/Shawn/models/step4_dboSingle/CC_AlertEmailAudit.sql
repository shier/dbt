
Select
	cast([DateSentUTC] as datetime) [DateSentUTC],
	cast([AlertEmailAuditPK] as int) [AlertEmailAuditPK],
	cast([SavedSearchID] as int) [SavedSearchId],
	cast([AlertFrequency] as nvarchar(4000)) [AlertFrequency],
	cast([EmailAddress] as nvarchar(4000)) [EmailAddress],
	cast([MandrillID] as nvarchar(4000)) [MandrillId],
	cast([MandrillStatus] as nvarchar(4000)) [MandrillStatus],
	cast([MandrillrejectReason] as nvarchar(4000)) [MandrillRejectReason] 
From stg.[CC_AlertEmailAudit_FinalView]