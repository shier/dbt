create view "stg"."Auct_VendorRef_FinalView__dbt_tmp" as
    
Select
	[OldVendorID],[NewVendorID],[VendorAuctionID] 
From [Auct_VendorRef_Incr]
