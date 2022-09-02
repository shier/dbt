{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[CreatedOn] [CreatedOn],
	[DisplayOrder] [DisplayOrder],
	[MediaId] [MediaID],
	[EventId] [EventID]
From stg.[AH_AuctionEventMedias_Raw]
