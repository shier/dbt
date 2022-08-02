create view "stg"."Auct_BJCompany_FinalView__dbt_tmp" as
    
Select
	[CompanyID],[Created],[UpdateEventID],[Comments],[Name] 
From stg.[Auct_BJCompany_Incr] 
Where [dbt_valid_to] is null
