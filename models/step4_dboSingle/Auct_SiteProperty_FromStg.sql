{{ config(materialized='table',schema='dbo')}}
Select
	cast([SiteID] as int) [SiteID],
	cast([DynamicPropertyID] as int) [DynamicPropertyID],
	cast([Value] as nvarchar(4000)) [Value] 
From stg.[Auct_SiteProperty_FinalView]