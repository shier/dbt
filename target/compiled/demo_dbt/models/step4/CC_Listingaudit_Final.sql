
Select
	[AuditPK],[Newvalue],[UserName],[DdlAction],[FieldName],[Oldvalue],[ListingFK],[AuditDateTimeUTC] 
From stg.[CC_Listingaudit_Incr] 
Where [dbt_valid_to] is null