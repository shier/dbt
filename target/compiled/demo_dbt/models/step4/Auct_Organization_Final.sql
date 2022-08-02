
Select
	[OrganizationID],[Created],[CompanyID],[UpdateEventID],[Name],[DeptCode] 
From stg.[Auct_Organization_Incr] 
Where [dbt_valid_to] is null