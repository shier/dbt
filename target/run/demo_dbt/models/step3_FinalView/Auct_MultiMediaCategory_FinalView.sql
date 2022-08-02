create view "stg"."Auct_MultiMediaCategory_FinalView__dbt_tmp" as
    
Select
	[MultiMediaCategoryID],[Name],[Active] 
From stg.[Auct_MultiMediaCategory_Incr] 
Where [dbt_valid_to] is null
