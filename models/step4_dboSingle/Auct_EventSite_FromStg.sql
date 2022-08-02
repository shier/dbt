{{ config(materialized='table',schema='dbo')}}
Select
	cast([EventID] as int) [EventID],
	cast([SiteID] as int) [SiteID] 
From stg.[Auct_EventSite_FinalView]