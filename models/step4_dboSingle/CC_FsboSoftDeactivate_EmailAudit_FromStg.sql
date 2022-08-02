{{ config(materialized='table',schema='dbo')}}
Select
	cast([FsboSoftDeactivate_EmailAuditPK] as int) [FsboSoftDeactivate_EmailAuditPK],
	cast([EmailAddress] as nvarchar(4000)) [EmailAddress],
	cast([MandrillID] as nvarchar(4000)) [MandrillID],
	cast([MandrillStatus] as nvarchar(4000)) [MandrillStatus],
	cast([MandrillrejectReason] as nvarchar(4000)) [MandrillrejectReason],
	cast([DateSentUTC] as datetime) [DateSentUTC],
	cast([ListingModifyDate] as datetime) [ListingModifyDate],
	cast([ListingID] as int) [ListingID],
	cast([Deactivatestage] as int) [Deactivatestage] 
From stg.[CC_FsboSoftDeactivate_EmailAudit_FinalView]