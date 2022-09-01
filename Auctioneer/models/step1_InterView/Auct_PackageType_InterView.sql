{{ config(materialized='view',schema='stg')}}
Select
	[PACKAGETYPEID] [PackageTypeID],
	[ACTIVE] [Active],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_PackageType_Raw]
