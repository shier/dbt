create view "stg"."Auct_SiteTypeProperty_FinalView__dbt_tmp" as
    
Select
	[DynamicPropertyID],[SiteTypeID],[IsRequired] 
From [Auct_SiteTypeProperty_Incr] 
Where [dbt_valid_to] is null
