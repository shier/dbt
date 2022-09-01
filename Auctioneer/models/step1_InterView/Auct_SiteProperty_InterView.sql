{{ config(materialized='view',schema='stg')}}
Select
	[SITEID] [SiteID],
	[DYNAMICPROPERTYID] [DynamicPropertyID],
	cast([VALUE] as nvarchar(4000)) [Value]
From stg.[Auct_SiteProperty_Raw]
