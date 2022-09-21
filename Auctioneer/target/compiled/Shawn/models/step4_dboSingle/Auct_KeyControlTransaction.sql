
Select
	cast([KeyControlTransactionID] as int) [KEYCONTROLTRANSACTIONID],
	cast([KeyControlID] as int) [KEYCONTROLID],
	cast([UserID] as int) [USERID],
	cast([RecipientName] as nvarchar(4000)) [RECIPIENTNAME],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([KeyControlStatusID] as int) [KEYCONTROLSTATUSID],
	cast([TransactionTime] as DATETIME) [TRANSACTIONTIME] 
From stg.[Auct_KeyControlTransaction_FinalView]