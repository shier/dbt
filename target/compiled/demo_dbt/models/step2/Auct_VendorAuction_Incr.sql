
With hashData as (
		Select
			HASHBYTES('MD5', concat(Comments, Cast(Spacecost as varchar), Cast(SpecialVendorValue as varchar), Cast(ContractDate as varchar), Cast(ApplicationDate as varchar), Cast(Created as varchar), Cast(Legacy_VendorID as varchar), Cast(SpecialVendorTypeID as varchar), Cast(AuctionID as varchar), Cast(VendorID as varchar), Cast(UpdateEventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_VendorAuction_Inter]
	)
Select * From hashData
