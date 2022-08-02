{{ config(materialized='view',schema='stg')}}
Select
	[FsboSoftDeactivate_EmailAuditPK],[EmailAddress],[MandrillID],[MandrillStatus],[MandrillrejectReason],[DateSentUTC],[ListingModifyDate],[ListingID],[Deactivatestage] 
From stg.[CC_FsboSoftDeactivate_EmailAudit_Incr] 
Where [dbt_valid_to] is null