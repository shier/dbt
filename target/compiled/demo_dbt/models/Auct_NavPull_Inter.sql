
Select
	ID ID,
	AUCTIONID AuctionID,
	STATUS Status,
	ENTRYNUMBER EntryNumber,
	AMOUNT Amount,
	CREDITAMT CreditAMT,
	DEBITAMT DebitAMT,
	POSTINGDATE PostingDate,
	CREATED Created,
	cast(HIDDEN as nvarchar(4000)) Hidden,
	cast(CUSTVENDID as nvarchar(4000)) CustvEndID,
	cast(DOCNUMBER as nvarchar(4000)) DocNumber,
	cast(BANKACCTNO as nvarchar(4000)) BankAcctno,
	cast(DESCRIPTION as nvarchar(4000)) Description,
	cast(PROJECTCODE as nvarchar(4000)) ProjectCode,
	cast(IMPORT as nvarchar(4000)) Import
From Auct_NavPull_Raw