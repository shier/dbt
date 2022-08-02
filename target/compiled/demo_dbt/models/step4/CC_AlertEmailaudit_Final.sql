
Select
	[AlertEmailAuditPK],[DateSentUTC],[SavedSearchID],[MandrillrejectReason],[AlertFrequency],[EmailAddress],[MandrillID],[MandrillStatus] 
From stg.[CC_AlertEmailaudit_Incr] 
Where [dbt_valid_to] is null