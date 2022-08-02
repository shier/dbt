create view "stg"."Auct_CarOptionInclude_FinalView__dbt_tmp" as
    
Select
	[CarOptionIncludeID],[SourceCarOptionID],[TargetCarOptionID],[Include],[Created],[UpdateEventID] 
From stg.[Auct_CarOptionInclude_Incr] 
Where [dbt_valid_to] is null
