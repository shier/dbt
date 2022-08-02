{{ config(materialized='view',schema='stg')}}
Select
	[VendorBoothID],[BoothID],[VendorAuctionID],[UpdateEventID],[Created] 
From stg.[Auct_VendorBooth_Incr] 
Where [dbt_valid_to] is null