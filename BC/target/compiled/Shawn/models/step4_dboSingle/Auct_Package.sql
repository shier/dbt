
Select
	cast([PackageID] as int) [PACKAGEID],
	cast([PackageTypeID] as int) [PACKAGETYPEID],
	cast([PackageTypeName] as nvarchar(4000)) [PACKAGETYPENAME],
	cast([TrackingNumber] as nvarchar(4000)) [TRACKINGNUMBER],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([DateCreated] as datetime) [DATECREATED],
	cast([AuctionID] as int) [AUCTIONID],
	cast([PackageCarrierID] as int) [PACKAGECARRIERID],
	cast([Note] as nvarchar(4000)) [NOTE] 
From stg.[Auct_Package_FinalView]