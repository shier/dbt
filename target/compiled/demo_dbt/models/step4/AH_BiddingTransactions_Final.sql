
Select
	[ID],[Active],[Maxmindscore],[Amount],[TransactionID],[ListingActionID],[CreditCardID] 
From stg.[AH_BiddingTransactions_Incr] 
Where [dbt_valid_to] is null