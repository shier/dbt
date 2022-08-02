
Select
	cast(RECIPIENTNAME as nvarchar(4000)) RecipientName,
	KEYCONTROLTRANSACTIONID KeyControlTransactionID,
	KEYCONTROLID KeyControlID,
	USERID UserID,
	CONSIGNMENTID ConsignmentID,
	KEYCONTROLSTATUSID KeyControlStatusID,
	TRANSACTIONTIME TransactionTime
From Auct_KeyControlTransaction_Raw