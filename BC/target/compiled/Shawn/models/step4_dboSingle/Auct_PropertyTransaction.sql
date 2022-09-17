
Select
	cast([PropertyTransactionID] as int) [PROPERTYTRANSACTIONID],
	cast([PropertyID] as int) [PROPERTYID],
	cast([PropertyStatusID] as int) [PROPERTYSTATUSID],
	cast([RecipientName] as nvarchar(4000)) [RECIPIENTNAME],
	cast([TransactionTime] as datetime) [TRANSACTIONTIME],
	cast([UserID] as int) [USERID],
	cast([PropertyTypeKey] as int) [PROPERTYTYPEKEY],
	cast([Description] as nvarchar(4000)) [DESCRIPTION],
	cast([PropertySpace] as nvarchar(4000)) [PROPERTYSPACE],
	cast([ChangedFields] as nvarchar(4000)) [CHANGEDFIELDS],
	cast([ConsignmentID] as int) [CONSIGNMENTID] 
From stg.[Auct_PropertyTransaction_FinalView]