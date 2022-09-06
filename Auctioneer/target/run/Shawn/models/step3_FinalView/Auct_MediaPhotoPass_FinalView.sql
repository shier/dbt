create view "stg"."Auct_MediaPhotoPass_FinalView__dbt_tmp" as
    
Select
	[MediaPhotoPassID],[MediaAuctionID],[PhotoPassNumber],[Created],[UpdateEventID] 
From stg.[Auct_MediaPhotoPass_Incr] 
Where [dbt_valid_to] is null
