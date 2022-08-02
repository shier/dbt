{{ config(materialized='view',schema='stg')}}
Select
	[ShowcaseShuffle_AuditPK],[DateShowcasedUTC],[DateShowcaseExpiresUTC],[ListingID] 
From stg.[CC_ShowcaseShuffle_Audit_Incr] 
Where [dbt_valid_to] is null