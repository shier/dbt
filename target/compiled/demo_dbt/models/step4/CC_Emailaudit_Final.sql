
Select
	[FsboSoftDeactivate_EmailAuditPK],[EmailAddress],[MandrillID],[MandrillStatus],[MandrillrejectReason],[ListingID],[Deactivatestage],[DateSentUTC],[ListingModifyDate] 
From stg.[CC_Emailaudit_Incr] 
Where [dbt_valid_to] is null