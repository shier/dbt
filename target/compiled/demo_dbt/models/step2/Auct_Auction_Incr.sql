
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(AuctionStatusBit as varchar), Cast(EmailNotificationBit as varchar), Cast(CredentialGroupID as varchar), Cast(BidderBadgeID as varchar), Cast(PulseQueueID as varchar), Cast(AuctionTypeID as varchar), Cast(CurrentAuction as varchar), Cast(UpdateEventID as varchar), Cast(SeasonID as varchar), Cast(ShowonWeb as varchar), Cast(UseCDN as varchar), Cast(IsArchived as varchar), Cast(OnlineCarAuctionID as varchar), Cast(OnlineMercAuctionID as varchar), Cast(AuctionCompanyID as varchar), Cast(Year as varchar), Cast(OnlineAuction as varchar), Cast(AuctionBegins as varchar), Cast(AuctionEnds as varchar), Cast(Created as varchar), Cast(AuctionPickupCutoff as varchar), Cast(NotifyCustomerAfterDate as varchar), Cast(ShowOnlineBidding as varchar), EmashowEventID, CDNBaseURL, MapImageURL, Project, NavPullTime, BusinessUnit, EMAEventID, EMACCEventID, EmamercEventID, Code, Name, ReadOnly, AuctionMode)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Auction_Inter]
	)
Select * From hashData
