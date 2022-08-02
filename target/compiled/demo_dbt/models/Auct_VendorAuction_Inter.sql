
Select
	cast(COMMENTS as nvarchar(4000)) Comments,
	SPACECOST Spacecost,
	SPECIALVENDORVALUE SpecialVendorValue,
	CONTRACTDATE ContractDate,
	APPLICATIONDATE ApplicationDate,
	CREATED Created,
	LEGACY_VENDORID Legacy_VendorID,
	SPECIALVENDORTYPEID SpecialVendorTypeID,
	VENDORAUCTIONID VendorAuctionID,
	AUCTIONID AuctionID,
	VENDORID VendorID,
	UPDATEEVENTID UpdateEventID
From Auct_VendorAuction_Raw