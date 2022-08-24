{{ config(materialized='view',schema='stg')}}
Select
	[OrganizationID],[Name],[CompanyID],[Created],[UpdateEventID],[DeptCode] 
From stg.[Auct_Organization_Incr] 
Where [dbt_valid_to] is null