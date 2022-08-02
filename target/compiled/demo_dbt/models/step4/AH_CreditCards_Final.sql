
Select
	[ID],[ExpirationMonth],[ExpirationYear],[CreditCardTypeID],[CreatedOn],[UpdatedOn],[DeletedOn],[UserID],[AddressID],[CardNumber],[LastUpdatedUser],[LastFourdigits],[Description] 
From stg.[AH_CreditCards_Incr] 
Where [dbt_valid_to] is null