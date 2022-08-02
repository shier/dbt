create view "stg"."Auct_VendorBooth_FinalView__dbt_tmp" as
    
Select
	[VendorBoothID],[BoothID],[VendorAuctionID],[UpdateEventID],[Created] 
From stg.[Auct_VendorBooth_Incr] 
Where [dbt_valid_to] is null
