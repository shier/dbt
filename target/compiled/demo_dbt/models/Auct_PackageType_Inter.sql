
Select
	cast([NAME] as nvarchar(4000)) [Name],
	[ACTIVE] [Active],
	[PACKAGETYPEID] [PackageTypeID]
From stg.[Auct_PackageType_Raw]