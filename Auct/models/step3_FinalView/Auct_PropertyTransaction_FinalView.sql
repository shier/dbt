{{ config(materialized='view',schema='stg')}}
Select
	[PropertyTransactionID],[PropertyID],[PropertyStatusID],[RecipientName],[TransactionTime],[UserID],[PropertyTypeKey],[Description],[PropertySpace],[ChangedFields],[ConsignmentID] 
From stg.[Auct_PropertyTransaction_Incr] 
Where [dbt_valid_to] is null