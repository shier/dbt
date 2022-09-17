{{ config(materialized='table',schema='dbo')}}
Select
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [Id],
	cast([BannerID] as int) [BannerId],
	cast([CategoryID] as int) [CategoryId] 
From stg.[AH_BannerCategories_FinalView]