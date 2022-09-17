
Select
	cast([VendorAuctionID] as int) [VENDORAUCTIONID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([VendorID] as int) [VENDORID],
	cast([ContractDate] as datetime) [CONTRACTDATE],
	cast([ApplicationDate] as datetime) [APPLICATIONDATE],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([Comments] as nvarchar(4000)) [COMMENTS],
	cast([Legacy_VendorID] as int) [LEGACY_VENDORID],
	cast([SpecialVendorTypeID] as int) [SPECIALVENDORTYPEID],
	cast([Spacecost] as numeric(19,4)) [SPACECOST],
	cast([SpecialVendorValue] as numeric(19,4)) [SPECIALVENDORVALUE] 
From stg.[Auct_VendorAuction_FinalView]