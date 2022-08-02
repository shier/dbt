
Select
	CREATED Created,
	ORGANIZATIONID OrganizationID,
	COMPANYID CompanyID,
	UPDATEEVENTID UpdateEventID,
	cast(NAME as nvarchar(4000)) Name,
	cast(DEPTCODE as nvarchar(4000)) DeptCode
From Auct_Organization_Raw