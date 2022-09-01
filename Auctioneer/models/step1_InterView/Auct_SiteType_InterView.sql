{{ config(materialized='view',schema='stg')}}
Select
	[SITETYPEID] [SiteTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([ACTIVEIMAGEURL] as nvarchar(4000)) [ActiveImageURL],
	cast([INACTIVEIMAGEURL] as nvarchar(4000)) [InActiveImageURL],
	[SITECATEGORYID] [SiteCategoryID],
	[CANHAVECHILDREN] [CanHaveChildren],
	cast([RESERVEDIMAGEURL] as nvarchar(4000)) [ReservedImageURL]
From stg.[Auct_SiteType_Raw]
