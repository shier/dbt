create view "dbo_stg"."Auct_SiteTypeProperty_InterView__dbt_tmp" as
    
Select
	[DYNAMICPROPERTYID] [DynamicPropertyID],
	[SITETYPEID] [SiteTypeID],
	[ISREQUIRED] [IsRequired]
From stg.[Auct_SiteTypeProperty_Raw]
