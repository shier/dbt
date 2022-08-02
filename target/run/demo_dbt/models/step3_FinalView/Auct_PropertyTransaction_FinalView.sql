create view "stg"."Auct_PropertyTransaction_FinalView__dbt_tmp" as
    
Select
	[PropertyTransactionID],[PropertyID],[PropertyStatusID],[RecipientName],[TransactionTime],[UserID],[PropertyTypeKey],[Description],[PropertySpace],[ChangedFields],[ConsignmentID] 
From stg.[Auct_PropertyTransaction_Incr] 
Where [dbt_valid_to] is null
