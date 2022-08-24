create view "dbo_stg"."Auct_AcctArchive_InterView__dbt_tmp" as
    
Select
	[ARCHIVEID] [ArchiveID],
	[PAYMENTAMT] [PaymentAMT],
	[LOTNUMBER] [LotNumber],
	[FEEAMOUNT] [FeeAmount],
	[CONTACTID] [ContactID],
	[AUCTIONID] [AuctionID],
	cast([ACCTTYPE] as nvarchar(4000)) [AcctType],
	cast([FEENAME] as nvarchar(4000)) [FeeName],
	cast([PAYMENTTYPE] as nvarchar(4000)) [PaymentType],
	cast([SYSTEMNOTE] as nvarchar(4000)) [SystemNote],
	cast([USERNOTE] as nvarchar(4000)) [UserNote],
	[CREATED] [Created],
	cast([USERNAME] as nvarchar(4000)) [UserName],
	cast([DEPT] as nvarchar(4000)) [Dept],
	[DOCUMENTTYPE] [DocumentType],
	cast([VCONTACTID] as nvarchar(4000)) [VContactID]
From stg.[Auct_AcctArchive_Raw]
