{{ config(materialized='table',schema='dbo')}}
Select
	cast([ContactCompanyID] as int) [ContactCompanyID],
	cast([CompanyContactTypeID] as int) [CompanyContactTypeID],
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([CompanyID] as int) [CompanyID],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([DealerID] as int) [DealerID] 
From stg.[Auct_ContactCompany_FinalView]