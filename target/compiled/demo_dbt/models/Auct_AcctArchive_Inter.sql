
Select
	LOTNUMBER LotNumber,
	FEEAMOUNT FeeAmount,
	PAYMENTAMT PaymentAMT,
	ARCHIVEID ArchiveID,
	CONTACTID ContactID,
	AUCTIONID AuctionID,
	DOCUMENTTYPE DocumentType,
	CREATED Created,
	cast(ACCTTYPE as nvarchar(4000)) AcctType,
	cast(FEENAME as nvarchar(4000)) FeeName,
	cast(PAYMENTTYPE as nvarchar(4000)) PaymentType,
	cast(SYSTEMNOTE as nvarchar(4000)) SystemNote,
	cast(USERNOTE as nvarchar(4000)) UserNote,
	cast(USERNAME as nvarchar(4000)) UserName,
	cast(DEPT as nvarchar(4000)) Dept,
	cast(VCONTACTID as nvarchar(4000)) VContactID
From Auct_AcctArchive_Raw