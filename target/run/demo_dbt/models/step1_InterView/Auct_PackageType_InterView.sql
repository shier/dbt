create view "stg"."Auct_PackageType_InterView__dbt_tmp" as
    
Select
	[PACKAGETYPEID] [PackageTypeID],
	[ACTIVE] [Active],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_PackageType_Raw]
