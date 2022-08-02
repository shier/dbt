{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[BannerId] [BannerID],
	[CategoryId] [CategoryID]
From stg.[AH_BannerCategories_Raw]
