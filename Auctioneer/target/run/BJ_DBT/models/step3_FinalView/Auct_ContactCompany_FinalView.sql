create view "stg"."Auct_ContactCompany_FinalView__dbt_tmp" as
    
Select
	[ContactCompanyID],[CompanyContactTypeID],[CustomerAccountID],[CompanyID],[Created],[UpdateEventID],[DealerID] 
From stg.[Auct_ContactCompany_Incr] 
Where [dbt_valid_to] is null
