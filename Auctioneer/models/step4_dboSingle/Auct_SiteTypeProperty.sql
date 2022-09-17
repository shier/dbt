{{ config(materialized='table',schema='dbo')}}
Select
	cast([DynamicPropertyID] as int) [DYNAMICPROPERTYID],
	cast([SiteTypeID] as int) [SITETYPEID],
	cast([IsRequired] as int) [ISREQUIRED] 
From stg.[Auct_SiteTypeProperty_FinalView]