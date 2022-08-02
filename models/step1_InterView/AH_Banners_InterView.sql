{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[MediaId] [MediaID],
	cast([LinkURI] as nvarchar(4000)) [LinkURI],
	cast([BannerLocation] as nvarchar(4000)) [BannerLocation]
From stg.[AH_Banners_Raw]
