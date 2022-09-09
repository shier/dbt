create view "stg"."Auct_SiteProperty_FinalView__dbt_tmp" as
    
Select
	[SiteID],[DynamicPropertyID],[Value] 
From [Auct_SiteProperty_Incr] 
Where [dbt_valid_to] is null
