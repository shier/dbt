
Select
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [Id],
	cast([MediaID] as int) [MediaId],
	cast([LinkURI] as nvarchar(4000)) [LinkURI],
	cast([BannerLocation] as nvarchar(4000)) [BannerLocation] 
From stg.[AH_Banners_FinalView]