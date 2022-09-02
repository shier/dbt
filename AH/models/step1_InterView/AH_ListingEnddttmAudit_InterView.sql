{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[SQLDateStamp] [SqlDaTestamp],
	[EndDTTM] [Enddttm],
	[SourceListingID] [SourceListingID],
	[ListingID] [ListingID],
	cast([Origin] as nvarchar(4000)) [Origin]
From stg.[AH_ListingEnddttmAudit_Raw]
