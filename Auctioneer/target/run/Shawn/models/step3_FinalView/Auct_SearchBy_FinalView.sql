create view "stg"."Auct_SearchBy_FinalView__dbt_tmp" as
    
Select
	[SearchByID],[Active],[SearchForID],[Name],[DisplayOrder] 
From stg.[Auct_SearchBy_Incr] 
Where [dbt_valid_to] is null
