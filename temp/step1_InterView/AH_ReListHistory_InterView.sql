{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[CurrentPrice_Old] [CurrentPrice_Old],
	[CurrentPrice_New] [CurrentPrice_New],
	[ReservePrice] [ReservePrice],
	[ListingId] [ListingID],
	[NewRelistIteration] [NewreListiteration],
	[Duration_Old] [Duration_Old],
	[Duration_New] [Duration_New],
	[HighBidderId] [HighBidderID],
	[BidCount] [BidCount],
	[StartDTTM_New] [Startdttm_New],
	[EndDTTM_Old] [Enddttm_Old],
	[EndDTTM_New] [Enddttm_New],
	[RelistDTTM] [ReListdttm],
	[StartDTTM_Old] [Startdttm_Old],
	[MaxBidAmount] [MaxBidAmount],
	[ProxyBidAmount] [ProxyBidAmount],
	[BidIncrement] [BidIncrement],
	cast([ListingTitle] as nvarchar(4000)) [ListingTitle]
From stg.[AH_ReListHistory_Raw]
