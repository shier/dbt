create view "stg"."Auct_KeyControlTransaction_FinalView__dbt_tmp" as
    
Select
	[KeyControlTransactionID],[KeyControlID],[UserID],[RecipientName],[ConsignmentID],[KeyControlStatusID],[TransactionTime] 
From stg.[Auct_KeyControlTransaction_Incr] 
Where [dbt_valid_to] is null
