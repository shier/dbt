
Select
	cast([Active] as bit) [ACTIVE],
	cast([PackageTypeID] as int) [PACKAGETYPEID],
	cast([Name] as nvarchar(4000)) [NAME] 
From stg.[Auct_PackageType_FinalView]