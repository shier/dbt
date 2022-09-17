
Select
	cast([Description] as nvarchar(4000)) [Description],
	cast([ID] as int) [ID] 
From stg.[CC_CompanyType_FinalView]