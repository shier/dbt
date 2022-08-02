{{ config(materialized='table',schema='dbo')}}
Select
	cast([SiteTypeID] as int) [SiteTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([ActiveImageURL] as nvarchar(4000)) [ActiveImageURL],
	cast([InActiveImageURL] as nvarchar(4000)) [InActiveImageURL],
	cast([SiteCategoryID] as int) [SiteCategoryID],
	cast([CanHaveChildren] as int) [CanHaveChildren],
	cast([ReservedImageURL] as nvarchar(4000)) [ReservedImageURL] 
From stg.[Auct_SiteType_FinalView]