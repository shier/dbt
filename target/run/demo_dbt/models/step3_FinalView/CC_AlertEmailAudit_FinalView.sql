create view "stg"."CC_AlertEmailAudit_FinalView__dbt_tmp" as
    
Select
	[AlertEmailAuditPK],[DateSentUTC],[SavedSearchID],[AlertFrequency],[EmailAddress],[MandrillID],[MandrillStatus],[MandrillrejectReason] 
From stg.[CC_AlertEmailAudit_Incr] 
Where [dbt_valid_to] is null
