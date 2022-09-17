{{ config(materialized='table',schema='dbo')}}
Select
	cast([DebitAMT] as numeric(19,4)) [DEBITAMT],
	cast([Amount] as numeric(19,4)) [AMOUNT],
	cast([CreditAMT] as numeric(19,4)) [CREDITAMT],
	cast([ID] as int) [ID],
	cast([PostingDate] as datetime) [POSTINGDATE],
	cast([Created] as datetime) [CREATED],
	cast([CustvEndID] as nvarchar(4000)) [CUSTVENDID],
	cast([DocNumber] as nvarchar(4000)) [DOCNUMBER],
	cast([BankAcctno] as nvarchar(4000)) [BANKACCTNO],
	cast([Description] as nvarchar(4000)) [DESCRIPTION],
	cast([AuctionID] as int) [AUCTIONID],
	cast([ProjectCode] as nvarchar(4000)) [PROJECTCODE],
	cast([Status] as int) [STATUS],
	cast([Import] as nvarchar(4000)) [IMPORT],
	cast([Hidden] as nvarchar(4000)) [HIDDEN],
	cast([EntryNumber] as int) [ENTRYNUMBER] 
From stg.[Auct_NavPull_FinalView]