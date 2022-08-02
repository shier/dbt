
Select
	cast(EmailAddress as nvarchar(4000)) EmailAddress,
	cast(MandrillId as nvarchar(4000)) MandrillID,
	cast(MandrillStatus as nvarchar(4000)) MandrillStatus,
	cast(MandrillRejectReason as nvarchar(4000)) MandrillrejectReason,
	FSBOSoftDeactivate_EmailAuditPK Fsbosoftdeactivate_Emailauditpk,
	ListingId ListingID,
	DeactivateStage DeactivaTestage,
	DateSentUTC DateSentUTC,
	ListingModifyDate ListingmodifyDate
From CC_Emailaudit_Raw