create view "stg"."Auct_EventSite_InterView__dbt_tmp" as
    
Select
	[EVENTID] [EventID],
	[SITEID] [SiteID]
From stg.[Auct_EventSite_Raw]
