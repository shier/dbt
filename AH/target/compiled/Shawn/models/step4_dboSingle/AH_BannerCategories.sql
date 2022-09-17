
Select
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [ID],
	cast([BannerID] as int) [BannerID],
	cast([CategoryID] as int) [CategoryID] 
From stg.[AH_BannerCategories_FinalView]