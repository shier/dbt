{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[UserId] [UserID],
	[ListingId] [ListingID],
	[DeletedOn] [DeletedOn],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser]
From stg.[AH_Watches_Raw]
