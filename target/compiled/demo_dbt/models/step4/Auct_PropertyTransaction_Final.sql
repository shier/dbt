
Select
	[PropertyTransactionID],[RecipientName],[Description],[PropertySpace],[ChangedFields],[PropertyID],[PropertyStatusID],[UserID],[PropertyTypeKey],[ConsignmentID],[TransactionTime] 
From stg.[Auct_PropertyTransaction_Incr] 
Where [dbt_valid_to] is null