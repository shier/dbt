{{ config(materialized='view',schema='stg')}}
Select
	[DynamicPropertyID],[SiteTypeID],[IsRequired] 
From [Auct_SiteTypeProperty_Incr]