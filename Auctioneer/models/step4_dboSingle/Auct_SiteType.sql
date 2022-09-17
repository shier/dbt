{{ config(materialized='table',schema='dbo')}}
Select
	cast([SiteTypeID] as int) [SITETYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([ActiveImageURL] as nvarchar(4000)) [ACTIVEIMAGEURL],
	cast([InActiveImageURL] as nvarchar(4000)) [INACTIVEIMAGEURL],
	cast([SiteCategoryID] as int) [SITECATEGORYID],
	cast([CanHaveChildren] as int) [CANHAVECHILDREN],
	cast([ReservedImageURL] as nvarchar(4000)) [RESERVEDIMAGEURL] 
From stg.[Auct_SiteType_FinalView]