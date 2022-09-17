
Select
	cast([EmailAddress] as nvarchar(4000)) [EmailAddress],
	cast([MandrillID] as nvarchar(4000)) [MandrillId],
	cast([MandrillStatus] as nvarchar(4000)) [MandrillStatus],
	cast([MandrillrejectReason] as nvarchar(4000)) [MandrillRejectReason],
	cast([DateSentUTC] as datetime) [DateSentUTC],
	cast([ListingModifyDate] as datetime) [ListingModifyDate],
	cast([FsboSoftDeactivate_EmailAuditPK] as int) [FSBOSoftDeactivate_EmailAuditPK],
	cast([ListingID] as int) [ListingId],
	cast([Deactivatestage] as int) [DeactivateStage] 
From stg.[CC_FsboSoftDeactivate_EmailAudit_FinalView]