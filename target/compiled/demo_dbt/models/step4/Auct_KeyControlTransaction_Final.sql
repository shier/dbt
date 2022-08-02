
Select
	[KeyControlTransactionID],[RecipientName],[KeyControlID],[UserID],[ConsignmentID],[KeyControlStatusID],[TransactionTime] 
From stg.[Auct_KeyControlTransaction_Incr] 
Where [dbt_valid_to] is null