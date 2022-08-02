{{ config(materialized='view',schema='stg')}}
Select
	[ID] [ID],
	[DEBITAMT] [DebitAMT],
	[AMOUNT] [Amount],
	[CREDITAMT] [CreditAMT],
	[POSTINGDATE] [PostingDate],
	[CREATED] [Created],
	cast([CUSTVENDID] as nvarchar(4000)) [CustvEndID],
	cast([DOCNUMBER] as nvarchar(4000)) [DocNumber],
	cast([BANKACCTNO] as nvarchar(4000)) [BankAcctno],
	cast([DESCRIPTION] as nvarchar(4000)) [Description],
	[AUCTIONID] [AuctionID],
	cast([PROJECTCODE] as nvarchar(4000)) [ProjectCode],
	[STATUS] [Status],
	cast([IMPORT] as nvarchar(4000)) [Import],
	cast([HIDDEN] as nvarchar(4000)) [Hidden],
	[ENTRYNUMBER] [EntryNumber]
From stg.[Auct_NavPull_Raw]
