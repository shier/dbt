{{ config(materialized='table',schema='dbo')}}
Select
	cast([DynamicPropertyID] as int) [DynamicPropertyID],
	cast([SiteTypeID] as int) [SiteTypeID],
	cast([IsRequired] as int) [IsRequired] 
From stg.[Auct_SiteTypeProperty_FinalView]