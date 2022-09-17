
Select
	cast([Active] as bit) [ACTIVE],
	cast([DepartmentID] as int) [DEPARTMENTID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([BCDepartmentCode] as nvarchar(4000)) [BCDEPARTMENTCODE] 
From stg.[Auct_Department_FinalView]