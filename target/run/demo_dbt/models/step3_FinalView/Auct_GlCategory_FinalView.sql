create view "stg"."Auct_GlCategory_FinalView__dbt_tmp" as
    
Select
	[GlCategoryID],[Name],[Created] 
From stg.[Auct_GlCategory_Incr] 
Where [dbt_valid_to] is null
