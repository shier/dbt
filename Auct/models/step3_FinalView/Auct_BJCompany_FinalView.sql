{{ config(materialized='view',schema='stg')}}
Select
	[CompanyID],[Created],[UpdateEventID],[Comments],[Name] 
From stg.[Auct_BJCompany_Incr] 
Where [dbt_valid_to] is null