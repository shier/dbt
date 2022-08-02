
Select
	DateSentUTC DateSentUTC,
	AlertEmailAuditPK AlertEmailauditpk,
	SavedSearchId SavedSearchID,
	cast(MandrillRejectReason as nvarchar(4000)) MandrillrejectReason,
	cast(AlertFrequency as nvarchar(4000)) AlertFrequency,
	cast(EmailAddress as nvarchar(4000)) EmailAddress,
	cast(MandrillId as nvarchar(4000)) MandrillID,
	cast(MandrillStatus as nvarchar(4000)) MandrillStatus
From CC_AlertEmailaudit_Raw