{{ config(materialized='view',schema='stg')}}
Select
	[ContactCompanyID],[CompanyContactTypeID],[CustomerAccountID],[CompanyID],[Created],[UpdateEventID],[DealerID] 
From stg.[Auct_ContactCompany_Incr] 
Where [dbt_valid_to] is null