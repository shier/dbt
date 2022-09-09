{{ config(materialized='view',schema='stg')}}
Select
	[EventID],[SiteID] 
From [Auct_EventSite_Incr] 
Where [dbt_valid_to] is null