create view "stg"."CC_ShowcaseShuffle_Audit_InterView__dbt_tmp" as
    
Select
	[ShowcaseShuffle_AuditPK] [ShowcaseShuffle_AuditPK],
	[DateShowcasedUTC] [DateShowcasedUTC],
	[DateShowcaseExpiresUTC] [DateShowcaseExpiresUTC],
	[ListingId] [ListingID]
From stg.[CC_ShowcaseShuffle_Audit_Raw]
