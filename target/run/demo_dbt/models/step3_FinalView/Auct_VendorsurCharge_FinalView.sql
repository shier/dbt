create view "stg"."Auct_VendorsurCharge_FinalView__dbt_tmp" as
    
Select
	[VendorsurChargeID],[VendorAuctionID],[Created],[UpdateEventID],[Surchagecost] 
From stg.[Auct_VendorsurCharge_Incr] 
Where [dbt_valid_to] is null
