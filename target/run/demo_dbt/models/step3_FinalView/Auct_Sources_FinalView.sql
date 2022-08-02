create view "stg"."Auct_Sources_FinalView__dbt_tmp" as
    
Select
	[SourceID],[WebActive],[SourceName],[Created],[UpdateEventID],[Active],[DisplayOrder] 
From stg.[Auct_Sources_Incr] 
Where [dbt_valid_to] is null
