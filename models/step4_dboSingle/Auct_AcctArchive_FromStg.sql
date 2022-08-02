{{ config(materialized='table',schema='dbo')}}
Select
	cast([ArchiveID] as int) [ArchiveID],
	cast([PaymentAMT] as numeric(19,4)) [Paymentamt],
	cast([LotNumber] as numeric(182)) [LotNumber],
	cast([FeeAmount] as numeric(19,4)) [Feeamount],
	cast([ContactID] as int) [ContactID],
	cast([AuctionID] as int) [AuctionID],
	cast([AcctType] as nvarchar(4000)) [AcctType],
	cast([FeeName] as nvarchar(4000)) [FeeName],
	cast([PaymentType] as nvarchar(4000)) [PaymentType],
	cast([SystemNote] as nvarchar(4000)) [Systemnote],
	cast([UserNote] as nvarchar(4000)) [Usernote],
	cast([Created] as DATETIME) [Created],
	cast([UserName] as nvarchar(4000)) [Username],
	cast([Dept] as nvarchar(4000)) [Dept],
	cast([DocumentType] as int) [DocumentType],
	cast([VContactID] as nvarchar(4000)) [Vcontactid] 
From stg.[Auct_AcctArchive_FinalView]