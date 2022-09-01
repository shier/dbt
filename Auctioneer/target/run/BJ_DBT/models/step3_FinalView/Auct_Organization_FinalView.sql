create view "stg"."Auct_Organization_FinalView__dbt_tmp" as
    
Select
	[OrganizationID],[Name],[CompanyID],[Created],[UpdateEventID],[DeptCode] 
From stg.[Auct_Organization_Incr] 
Where [dbt_valid_to] is null
