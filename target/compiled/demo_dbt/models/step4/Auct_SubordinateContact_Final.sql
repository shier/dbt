
Select
	[SubordinateContactID],[DaysCovering],[JobTitle],[Created],[VendorID],[ContactID],[MediaPositionID],[UpdateEventID],[MediaAuctionID],[SponsorAuctionID] 
From stg.[Auct_SubordinateContact_Incr] 
Where [dbt_valid_to] is null