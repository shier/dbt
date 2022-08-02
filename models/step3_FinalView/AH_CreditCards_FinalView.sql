{{ config(materialized='view',schema='stg')}}
Select
	[ID],[ExpirationMonth],[ExpirationYear],[CreditCardTypeID],[UserID],[AddressID],[CreatedOn],[UpdatedOn],[DeletedOn],[CardNumber],[LastUpdatedUser],[LastFourdigits],[Description] 
From stg.[AH_CreditCards_Incr] 
Where [dbt_valid_to] is null