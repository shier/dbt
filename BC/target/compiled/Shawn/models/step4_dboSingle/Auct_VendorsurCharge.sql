
Select
	cast([VendorsurChargeID] as int) [VENDORSURCHARGEID],
	cast([VendorAuctionID] as int) [VENDORAUCTIONID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([Surchagecost] as numeric(19,4)) [SURCHAGECOST] 
From stg.[Auct_VendorsurCharge_FinalView]