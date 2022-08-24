create view "dbo_stg"."Auct_SiteProperty_InterView__dbt_tmp" as
    
Select
	[SITEID] [SiteID],
	[DYNAMICPROPERTYID] [DynamicPropertyID],
	cast([VALUE] as nvarchar(4000)) [Value]
From stg.[Auct_SiteProperty_Raw]
