{{ config(materialized='table',schema='dbo')}}
Select
	cast([ShowcaseShuffle_AuditPK] as int) [ShowcaseShuffle_AuditPK],
	cast([DateShowcasedUTC] as datetime) [DateShowcasedUTC],
	cast([DateShowcaseExpiresUTC] as datetime) [DateShowcaseExpiresUTC],
	cast([ListingID] as int) [ListingID] 
From stg.[CC_ShowcaseShuffle_Audit_FinalView]