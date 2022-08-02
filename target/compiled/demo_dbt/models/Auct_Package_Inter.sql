
Select
	cast(PACKAGETYPENAME as nvarchar(4000)) PackageTypeName,
	cast(TRACKINGNUMBER as nvarchar(4000)) TrackingNumber,
	cast(NOTE as nvarchar(4000)) Note,
	PACKAGEID PackageID,
	PACKAGETYPEID PackageTypeID,
	CUSTOMERACCOUNTID CustomerAccountID,
	AUCTIONID AuctionID,
	PACKAGECARRIERID PackageCarrierID,
	DATECREATED DateCreated
From Auct_Package_Raw