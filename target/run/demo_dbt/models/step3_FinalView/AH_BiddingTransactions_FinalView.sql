create view "stg"."AH_BiddingTransactions_FinalView__dbt_tmp" as
    
Select
	[ID],[TransactionID],[Maxmindscore],[Amount],[ListingActionID],[CreditCardID],[Active] 
From stg.[AH_BiddingTransactions_Incr] 
Where [dbt_valid_to] is null
