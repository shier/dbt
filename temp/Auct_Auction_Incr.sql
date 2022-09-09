{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([ShowOnlineBidding] as varchar), Cast([AuctionID] as varchar), Cast([AuctionCompanyID] as varchar), Cast([Year] as varchar), [Code], [Name], [ReadOnly], Cast([OnlineAuction] as varchar), Cast([CurrentAuction] as varchar), Cast([AuctionBegins] as varchar), Cast([AuctionEnds] as varchar), [AuctionMode], Cast([Created] as varchar), Cast([UpdateEventID] as varchar), [Project], [NavPullTime], [BusinessUnit], Cast([SeasonID] as varchar), Cast([ShowonWeb] as varchar), Cast([UseCDN] as varchar), [EMAEventID], [EMACCEventID], [EmamercEventID], [EmashowEventID], Cast([IsArchived] as varchar), [CDNBaseURL], Cast([AuctionStatusBit] as varchar), Cast([EmailNotificationBit] as varchar), Cast([CredentialGroupID] as varchar), Cast([BidderBadgeID] as varchar), Cast([PulseQueueID] as varchar), Cast([AuctionTypeID] as varchar), Cast([AuctionPickupCutoff] as varchar), Cast([OnlineCarAuctionID] as varchar), Cast([OnlineMercAuctionID] as varchar), [MapImageURL], Cast([NotifyCustomerAfterDate] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_Auction_InterView]
	)
Select * From hashData
{% if is_incremental() %}
	where not exists 
	(
		select dbt_scd_id 
		from {{ this }} compareData
		where hashData.dbt_scd_id=compareData.dbt_scd_id
	)
{% endif %}
