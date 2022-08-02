{{ config(materialized='view',schema='stg')}}
Select
	[AlertEmailAuditPK] [AlertEmailAuditPK],
	[DateSentUTC] [DateSentUTC],
	[SavedSearchId] [SavedSearchID],
	cast([AlertFrequency] as nvarchar(4000)) [AlertFrequency],
	cast([EmailAddress] as nvarchar(4000)) [EmailAddress],
	cast([MandrillId] as nvarchar(4000)) [MandrillID],
	cast([MandrillStatus] as nvarchar(4000)) [MandrillStatus],
	cast([MandrillRejectReason] as nvarchar(4000)) [MandrillrejectReason]
From stg.[CC_AlertEmailAudit_Raw]
