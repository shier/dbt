
Select
	cast([LocalCategoryID] as int) [localCategoryId],
	cast([ForeignCategoryID] as int) [foreignCategoryId] 
From stg.[AH_ImportedCategoryMap_FinalView]