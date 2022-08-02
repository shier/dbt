{{ config(materialized='view',schema='stg')}}
Select
	[AuditPK],[ListingFK],[AuditDateTimeUTC],[UserName],[DdlAction],[FieldName],[Oldvalue],[Newvalue] 
From stg.[CC_ListingAudit_Incr] 
Where [dbt_valid_to] is null