{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[Amount] [Amount],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([OfferMessage] as nvarchar(4000)) [OfferMessage],
	cast([Status] as nvarchar(4000)) [Status],
	cast([DeclineMessage] as nvarchar(4000)) [DecLineMessage],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[ExpirationDTTM] [Expirationdttm],
	[SendingUserId] [SEndingUserID],
	[ReceivingUserId] [ReceivINgUserID],
	[BuyerId] [BuyerID],
	[Quantity] [Quantity],
	[ListingId] [ListingID]
From stg.[AH_Offers_Raw]
