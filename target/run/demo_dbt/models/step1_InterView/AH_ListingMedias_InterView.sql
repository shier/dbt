create view "stg"."AH_ListingMedias_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[MediaId] [MediaID],
	[ListingId] [ListingID],
	[DisplayOrder] [DisplayOrder]
From stg.[AH_ListingMedias_Raw]
