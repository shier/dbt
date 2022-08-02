{{ config(materialized='view',schema='stg')}}
Select
	[ShowcaseShuffle_AuditPK] [ShowcaseShuffle_AuditPK],
	[DateShowcasedUTC] [DateShowcasedUTC],
	[DateShowcaseExpiresUTC] [DateShowcaseExpiresUTC],
	[ListingId] [ListingID]
From stg.[CC_ShowcaseShuffle_Audit_Raw]
