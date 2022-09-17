
Select
	cast([OldVendorID] as int) [OLDVENDORID],
	cast([NewVendorID] as int) [NEWVENDORID],
	cast([VendorAuctionID] as int) [VENDORAUCTIONID] 
From stg.[Auct_VendorRef_FinalView]