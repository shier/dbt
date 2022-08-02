
Select
	[ID],[MaxBidAmount],[ProxyBidAmount],[BidIncrement],[ReListdttm],[Startdttm_Old],[Startdttm_New],[Enddttm_Old],[Enddttm_New],[NewreListiteration],[Duration_Old],[Duration_New],[HighBidderID],[BidCount],[ListingID],[CurrentPrice_Old],[CurrentPrice_New],[ReservePrice],[ListingTitle] 
From stg.[AH_ReListHistory_Incr] 
Where [dbt_valid_to] is null