{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Amount],[LastUpdatedUser],[OfferMessage],[Status],[DecLineMessage],[CreatedOn],[UpdatedOn],[DeletedOn],[Expirationdttm],[SEndingUserID],[ReceivINgUserID],[BuyerID],[Quantity],[ListingID] 
From stg.[AH_Offers_Incr] 
Where [dbt_valid_to] is null