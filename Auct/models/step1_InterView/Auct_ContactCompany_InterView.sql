{{ config(materialized='view',schema='stg')}}
Select
	[CONTACTCOMPANYID] [ContactCompanyID],
	[COMPANYCONTACTTYPEID] [CompanyContactTypeID],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[COMPANYID] [CompanyID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[DEALERID] [DealerID]
From stg.[Auct_ContactCompany_Raw]
