{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([MediaID] as int) [MediaID],
	cast([LinkURI] as nvarchar(4000)) [LinkURI],
	cast([BannerLocation] as nvarchar(4000)) [BannerLocation] 
From stg.[AH_Banners_FinalView]