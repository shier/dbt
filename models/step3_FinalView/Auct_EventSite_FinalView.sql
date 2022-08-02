{{ config(materialized='view',schema='stg')}}
Select
	[EventID],[SiteID] 
From [Auct_EventSite_Incr]