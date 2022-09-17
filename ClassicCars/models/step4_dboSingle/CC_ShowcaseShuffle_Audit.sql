{{ config(materialized='table',schema='dbo')}}
Select
	cast([DateShowcasedUTC] as datetime) [DateShowcasedUTC],
	cast([DateShowcaseExpiresUTC] as datetime) [DateShowcaseExpiresUTC],
	cast([ShowcaseShuffle_AuditPK] as int) [ShowcaseShuffle_AuditPK],
	cast([ListingID] as int) [ListingId] 
From stg.[CC_ShowcaseShuffle_Audit_FinalView]