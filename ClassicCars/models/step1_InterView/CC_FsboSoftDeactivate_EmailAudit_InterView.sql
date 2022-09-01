{{ config(materialized='view',schema='stg')}}
Select
	[FSBOSoftDeactivate_EmailAuditPK] [FsboSoftDeactivate_EmailAuditPK],
	cast([EmailAddress] as nvarchar(4000)) [EmailAddress],
	cast([MandrillId] as nvarchar(4000)) [MandrillID],
	cast([MandrillStatus] as nvarchar(4000)) [MandrillStatus],
	cast([MandrillRejectReason] as nvarchar(4000)) [MandrillrejectReason],
	[DateSentUTC] [DateSentUTC],
	[ListingModifyDate] [ListingModifyDate],
	[ListingId] [ListingID],
	[DeactivateStage] [Deactivatestage]
From stg.[CC_FsboSoftDeactivate_EmailAudit_Raw]
