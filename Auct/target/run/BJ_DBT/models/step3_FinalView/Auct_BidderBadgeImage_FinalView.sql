create view "stg"."Auct_BidderBadgeImage_FinalView__dbt_tmp" as
    
Select
	[BidderBadgeImageID],[IsDefault],[FileName],[UncPath],[BadgesIDEID],[Description],[AuctionID] 
From stg.[Auct_BidderBadgeImage_Incr] 
Where [dbt_valid_to] is null
