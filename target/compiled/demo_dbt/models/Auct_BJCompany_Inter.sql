
Select
	COMPANYID CompanyID,
	UPDATEEVENTID UpdateEventID,
	CREATED Created,
	cast(COMMENTS as nvarchar(4000)) Comments,
	cast(NAME as nvarchar(4000)) Name
From Auct_BJCompany_Raw