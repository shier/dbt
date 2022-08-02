
Select
	COMPANYID CompanyID,
	INDUSTRYTYPEID IndustryTypeID,
	UPDATEEVENTID UpdateEventID,
	CREATED Created,
	cast(NAME as nvarchar(4000)) Name,
	cast(COMMENTS as nvarchar(4000)) Comments,
	cast(URL as nvarchar(4000)) URL
From Auct_Company_Raw