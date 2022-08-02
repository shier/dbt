create view "stg"."Auct_ContactCompany_InterView__dbt_tmp" as
    
Select
	[CONTACTCOMPANYID] [ContactCompanyID],
	[COMPANYCONTACTTYPEID] [CompanyContactTypeID],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[COMPANYID] [CompanyID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[DEALERID] [DealerID]
From stg.[Auct_ContactCompany_Raw]
