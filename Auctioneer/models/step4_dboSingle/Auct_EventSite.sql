{{ config(materialized='table',schema='dbo')}}
Select
	cast([EventID] as int) [EVENTID],
	cast([SiteID] as int) [SITEID] 
From stg.[Auct_EventSite_FinalView]