
Select
	[ContactCompanyID],[Created],[CustomerAccountID],[CompanyID],[UpdateEventID],[DealerID],[CompanyContactTypeID] 
From stg.[Auct_ContactCompany_Incr] 
Where [dbt_valid_to] is null