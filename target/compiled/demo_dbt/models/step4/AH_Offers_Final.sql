
Select
	[ID],[Amount],[LastUpdatedUser],[OfferMessage],[Status],[DecLineMessage],[CreatedOn],[UpdatedOn],[DeletedOn],[Expirationdttm],[Quantity],[ListingID],[SEndingUserID],[ReceivINgUserID],[BuyerID] 
From stg.[AH_Offers_Incr] 
Where [dbt_valid_to] is null