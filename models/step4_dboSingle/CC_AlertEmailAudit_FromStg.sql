{{ config(materialized='table',schema='dbo')}}
Select
	cast([AlertEmailAuditPK] as int) [AlertEmailAuditPK],
	cast([DateSentUTC] as datetime) [DateSentUTC],
	cast([SavedSearchID] as int) [SavedSearchID],
	cast([AlertFrequency] as nvarchar(4000)) [AlertFrequency],
	cast([EmailAddress] as nvarchar(4000)) [EmailAddress],
	cast([MandrillID] as nvarchar(4000)) [MandrillID],
	cast([MandrillStatus] as nvarchar(4000)) [MandrillStatus],
	cast([MandrillrejectReason] as nvarchar(4000)) [MandrillrejectReason] 
From stg.[CC_AlertEmailAudit_FinalView]