{{ config(materialized='view',schema='stg')}}
Select
	[DYNAMICPROPERTYID] [DynamicPropertyID],
	[SITETYPEID] [SiteTypeID],
	[ISREQUIRED] [IsRequired]
From stg.[Auct_SiteTypeProperty_Raw]
