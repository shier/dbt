
Select
	cast([ContactCompanyID] as int) [CONTACTCOMPANYID],
	cast([CompanyContactTypeID] as int) [COMPANYCONTACTTYPEID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([CompanyID] as int) [COMPANYID],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([DealerID] as int) [DEALERID] 
From stg.[Auct_ContactCompany_FinalView]