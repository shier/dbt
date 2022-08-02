{{ config(materialized='table',schema='dbo')}}
Select
	cast([PropertyTransactionID] as int) [PropertyTransactionID],
	cast([PropertyID] as int) [PropertyID],
	cast([PropertyStatusID] as int) [PropertyStatusID],
	cast([RecipientName] as nvarchar(4000)) [RecipientName],
	cast([TransactionTime] as datetime) [TransactionTime],
	cast([UserID] as int) [UserID],
	cast([PropertyTypeKey] as int) [PropertyTypeKey],
	cast([Description] as nvarchar(4000)) [Description],
	cast([PropertySpace] as nvarchar(4000)) [PropertySpace],
	cast([ChangedFields] as nvarchar(4000)) [ChangedFields],
	cast([ConsignmentID] as int) [ConsignmentID] 
From stg.[Auct_PropertyTransaction_FinalView]