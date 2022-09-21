
Select
	cast([OrganizationID] as int) [ORGANIZATIONID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([CompanyID] as int) [COMPANYID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([DeptCode] as nvarchar(4000)) [DEPTCODE] 
From stg.[Auct_Organization_FinalView]