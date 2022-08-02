create view "stg"."Auct_SubordinateContact_FinalView__dbt_tmp" as
    
Select
	[SubordinateContactID],[MediaAuctionID],[SponsorAuctionID],[VendorID],[ContactID],[MediaPositionID],[DaysCovering],[JobTitle],[Created],[UpdateEventID] 
From stg.[Auct_SubordinateContact_Incr] 
Where [dbt_valid_to] is null
