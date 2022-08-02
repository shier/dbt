create view "stg"."AH_Banners_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[MediaId] [MediaID],
	cast([LinkURI] as nvarchar(4000)) [LinkURI],
	cast([BannerLocation] as nvarchar(4000)) [BannerLocation]
From stg.[AH_Banners_Raw]
