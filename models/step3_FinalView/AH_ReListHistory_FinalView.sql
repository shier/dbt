{{ config(materialized='view',schema='stg')}}
Select
	[ID],[CurrentPrice_Old],[CurrentPrice_New],[ReservePrice],[ListingID],[NewreListiteration],[Duration_Old],[Duration_New],[HighBidderID],[BidCount],[Startdttm_New],[Enddttm_Old],[Enddttm_New],[ReListdttm],[Startdttm_Old],[MaxBidAmount],[ProxyBidAmount],[BidIncrement],[ListingTitle] 
From stg.[AH_ReListHistory_Incr] 
Where [dbt_valid_to] is null