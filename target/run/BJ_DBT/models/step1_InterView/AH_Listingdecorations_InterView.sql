create view "stg"."AH_Listingdecorations_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[DecorationId] [DecorationID],
	[ListingId] [ListingID]
From stg.[AH_Listingdecorations_Raw]
