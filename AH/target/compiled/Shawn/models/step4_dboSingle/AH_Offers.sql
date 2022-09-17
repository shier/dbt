
Select
	cast([Amount] as numeric(19,4)) [Amount],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([OfferMessage] as nvarchar(4000)) [OfferMessage],
	cast([Status] as nvarchar(4000)) [Status],
	cast([DecLineMessage] as nvarchar(4000)) [DecLineMessage],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([Expirationdttm] as datetime) [Expirationdttm],
	cast([ID] as int) [ID],
	cast([SEndingUserID] as int) [SEndingUserID],
	cast([ReceivINgUserID] as int) [ReceivINgUserID],
	cast([BuyerID] as int) [BuyerID],
	cast([Quantity] as int) [Quantity],
	cast([ListingID] as int) [ListingID] 
From stg.[AH_Offers_FinalView]