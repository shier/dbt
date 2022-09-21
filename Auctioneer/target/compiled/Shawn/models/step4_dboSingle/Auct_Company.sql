
Select
	cast([CompanyID] as int) [COMPANYID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([IndustryTypeID] as int) [INDUSTRYTYPEID],
	cast([Comments] as nvarchar(4000)) [COMMENTS],
	cast([URL] as nvarchar(4000)) [URL],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_Company_FinalView]