
Select
	[InspectionID],[DateperFormed],[DateRequested],[Created],[CarID],[OwnerContactID],[PerFormedByContactID],[UpdateEventID],[Results] 
From stg.[Auct_Inspection_Incr] 
Where [dbt_valid_to] is null