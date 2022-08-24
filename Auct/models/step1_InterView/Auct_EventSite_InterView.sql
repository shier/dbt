{{ config(materialized='view',schema='stg')}}
Select
	[EVENTID] [EventID],
	[SITEID] [SiteID]
From stg.[Auct_EventSite_Raw]
