
Select
	[ShowcaseShuffle_AuditPK],[ListingID],[DateShowcasedUTC],[DateShowcaseExpiresUTC] 
From stg.[CC_Audit_Incr] 
Where [dbt_valid_to] is null