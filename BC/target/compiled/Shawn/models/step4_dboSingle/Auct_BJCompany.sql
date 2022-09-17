
Select
	cast([CompanyID] as int) [COMPANYID],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([Comments] as nvarchar(4000)) [COMMENTS],
	cast([Name] as nvarchar(4000)) [NAME] 
From stg.[Auct_BJCompany_FinalView]