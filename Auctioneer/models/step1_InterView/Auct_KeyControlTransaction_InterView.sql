{{ config(materialized='view',schema='stg')}}
Select
	[KEYCONTROLTRANSACTIONID] [KeyControlTransactionID],
	[KEYCONTROLID] [KeyControlID],
	[USERID] [UserID],
	cast([RECIPIENTNAME] as nvarchar(4000)) [RecipientName],
	[CONSIGNMENTID] [ConsignmentID],
	[KEYCONTROLSTATUSID] [KeyControlStatusID],
	[TRANSACTIONTIME] [TransactionTime]
From stg.[Auct_KeyControlTransaction_Raw]
