{{ config(materialized='view',schema='stg')}}
Select
	[AuctionID],[ShowOnlineBidding],[AuctionCompanyID],[Year],[Code],[Name],[ReadOnly],[OnlineAuction],[CurrentAuction],[AuctionBegins],[AuctionEnds],[AuctionMode],[Created],[UpdateEventID],[Project],[NavPullTime],[BusinessUnit],[SeasonID],[ShowonWeb],[UseCDN],[EMAEventID],[EMACCEventID],[EmamercEventID],[EmashowEventID],[IsArchived],[CDNBaseURL],[AuctionStatusBit],[EmailNotificationBit],[CredentialGroupID],[BidderBadgeID],[PulseQueueID],[AuctionTypeID],[AuctionPickupCutoff],[OnlineCarAuctionID],[OnlineMercAuctionID],[MapImageURL],[NotifyCustomerAfterDate] 
From stg.[Auct_Auction_Incr] 
Where [dbt_valid_to] is null