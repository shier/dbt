{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([ConsignmentID] as varchar), Cast([CustomerAccountID] as varchar), Cast([ItemID] as varchar), Cast([ConsignmentStatusID] as varchar), Cast([AuctionID] as varchar), [ReserveTypeID], [ShortDescription], [LongDescription], [PhotosReceived], [Showcase], Cast([Created] as varchar), Cast([UpdateEventID] as varchar), [CarCard], [Titlein], [OnSite], [CheckedIn], [Completed], [Canceled], Cast([AddressID] as varchar), Cast([CarInfoID] as varchar), [OnSpeed], [OnHagerty], Cast([IsCharity] as varchar), Cast([CreatedUTC] as varchar), Cast([ModifiedUTC] as varchar), [EmainventoryID], [EMAEventID], [EMACCEventID], [EmashowEventID], [EmamercEventID], [EmalotID], [MarketingDescription], Cast([AuthorizedWeb] as varchar), Cast([AuthorizedSocial] as varchar), Cast([AuthorizedMarketing] as varchar), Cast([AuthorizedCarList] as varchar), Cast([LockMarketingDescription] as varchar), Cast([ReviewStateID] as varchar), Cast([DisplayStatusID] as varchar), Cast([AssignedtoUserID] as varchar), Cast([Priority] as varchar), Cast([Quality] as varchar), Cast([RequestedAuctionID] as varchar), [StockNumber], Cast([CreatedByUserID] as varchar), Cast([ModifiedByUserID] as varchar), Cast([ModifiedDateTime] as varchar), [ModifiedFields], Cast([ConsignmentCompleteStatusBit] as varchar), Cast([ModifiedDetailsUTC] as varchar), Cast([ModifiedDocketUTC] as varchar), Cast([PaymentStatusBit] as varchar), Cast([OnlineauctonItemID] as varchar), Cast([OnlineAuctionauctionItemID] as varchar), Cast([ConsignmentNotifyBit] as varchar), Cast([ReserveAmount] as varchar), Cast([CusTestimatedValue] as varchar), Cast([BJValue] as varchar), Cast([LotNumber] as varchar), Cast([IsOutTakeVehicle] as varchar), Cast([PaymentStatus] as varchar), Cast([ReleasedForTransPort] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_Consignment_InterView]
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
