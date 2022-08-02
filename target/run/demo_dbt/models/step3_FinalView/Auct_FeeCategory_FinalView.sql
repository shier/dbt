create view "stg"."Auct_FeeCategory_FinalView__dbt_tmp" as
    
Select
	[FeeCategoryID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_FeeCategory_Incr] 
Where [dbt_valid_to] is null
