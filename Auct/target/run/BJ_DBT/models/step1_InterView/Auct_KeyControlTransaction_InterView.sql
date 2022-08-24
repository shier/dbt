create view "dbo_stg"."Auct_KeyControlTransaction_InterView__dbt_tmp" as
    
Select
	[KEYCONTROLTRANSACTIONID] [KeyControlTransactionID],
	[KEYCONTROLID] [KeyControlID],
	[USERID] [UserID],
	cast([RECIPIENTNAME] as nvarchar(4000)) [RecipientName],
	[CONSIGNMENTID] [ConsignmentID],
	[KEYCONTROLSTATUSID] [KeyControlStatusID],
	[TRANSACTIONTIME] [TransactionTime]
From stg.[Auct_KeyControlTransaction_Raw]
