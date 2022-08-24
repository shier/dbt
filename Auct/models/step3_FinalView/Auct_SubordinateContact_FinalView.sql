{{ config(materialized='view',schema='stg')}}
Select
	[SubordinateContactID],[MediaAuctionID],[SponsorAuctionID],[VendorID],[ContactID],[MediaPositionID],[DaysCovering],[JobTitle],[Created],[UpdateEventID] 
From stg.[Auct_SubordinateContact_Incr] 
Where [dbt_valid_to] is null