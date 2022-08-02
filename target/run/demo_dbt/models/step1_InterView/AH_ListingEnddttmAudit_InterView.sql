create view "stg"."AH_ListingEnddttmAudit_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	[SQLDateStamp] [SqlDaTestamp],
	[EndDTTM] [Enddttm],
	[SourceListingID] [SourceListingID],
	[ListingID] [ListingID],
	cast([Origin] as nvarchar(4000)) [Origin]
From stg.[AH_ListingEnddttmAudit_Raw]
