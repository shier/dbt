create view "stg"."AH_ListingsReserveHistory_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	[ListingId] [ListingID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[OldReserve] [OldReserve],
	[NewReserve] [NewReserve]
From stg.[AH_ListingsReserveHistory_Raw]
