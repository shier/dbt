create view "stg"."Auct_SearchFor_FinalView__dbt_tmp" as
    
Select
	[SearchForID],[Active],[Name] 
From stg.[Auct_SearchFor_Incr] 
Where [dbt_valid_to] is null
