{{ config(materialized='view',schema='stg')}}
Select
	[SiteID],[DynamicPropertyID],[Value] 
From [Auct_SiteProperty_Incr]