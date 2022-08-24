create view "stg"."Auct_Inspection_FinalView__dbt_tmp" as
    
Select
	[InspectionID],[CarID],[OwnerContactID],[PerFormedByContactID],[Results],[DateperFormed],[DateRequested],[Created],[UpdateEventID] 
From stg.[Auct_Inspection_Incr] 
Where [dbt_valid_to] is null
