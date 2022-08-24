{{ config(materialized='view',schema='stg')}}
Select
	[MediaPhotoPassID],[MediaAuctionID],[PhotoPassNumber],[Created],[UpdateEventID] 
From stg.[Auct_MediaPhotoPass_Incr] 
Where [dbt_valid_to] is null