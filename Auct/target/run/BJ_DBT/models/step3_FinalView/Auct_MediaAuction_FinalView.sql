create view "stg"."Auct_MediaAuction_FinalView__dbt_tmp" as
    
Select
	[MediaAuctionID],[MediaID],[AuctionID],[AnticipatedDate],[PublishPhotos],[Galainvites],[Comments],[Created],[UpdateEventID] 
From stg.[Auct_MediaAuction_Incr] 
Where [dbt_valid_to] is null
