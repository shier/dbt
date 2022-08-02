
Select
	cast(UNCPATH as nvarchar(4000)) UncPath,
	cast(FULLPATH as nvarchar(4000)) FullPath,
	EXPIRATION Expiration,
	CREATED Created,
	ACTIVE Active,
	CUSTOMERACCOUNTID CustomerAccountID,
	DOCUMENTIMAGETYPEID DocumentImageTypeID,
	AUCTIONID AuctionID,
	CREATEDBYUSERID CreatedByUserID,
	HEIGHT Height,
	WIDTH Width,
	DOCUMENTIMAGEID DocumentImageID
From Auct_DocumentImage_Raw