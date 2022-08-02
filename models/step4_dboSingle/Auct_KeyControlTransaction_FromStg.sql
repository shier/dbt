{{ config(materialized='table',schema='dbo')}}
Select
	cast([KeyControlTransactionID] as int) [KeyControlTransActionID],
	cast([KeyControlID] as int) [KeyControlID],
	cast([UserID] as int) [UserID],
	cast([RecipientName] as nvarchar(4000)) [RecipientName],
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([KeyControlStatusID] as int) [KeyControlStatusID],
	cast([TransactionTime] as DATETIME) [TransactionTime] 
From stg.[Auct_KeyControlTransaction_FinalView]