
Select
	[CompanyID],[Name],[IndustryTypeID],[Comments],[URL],[Created],[UpdateEventID] 
From stg.[Auct_Company_Incr] 
Where [dbt_valid_to] is null