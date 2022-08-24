{{ config(materialized='view',schema='stg')}}
Select
	[InspectionID],[CarID],[OwnerContactID],[PerFormedByContactID],[Results],[DateperFormed],[DateRequested],[Created],[UpdateEventID] 
From stg.[Auct_Inspection_Incr] 
Where [dbt_valid_to] is null