{{ config(materialized='view',schema='stg')}}
Select
	[MediaAuctionID],[MediaID],[AuctionID],[AnticipatedDate],[PublishPhotos],[Galainvites],[Comments],[Created],[UpdateEventID] 
From stg.[Auct_MediaAuction_Incr] 
Where [dbt_valid_to] is null