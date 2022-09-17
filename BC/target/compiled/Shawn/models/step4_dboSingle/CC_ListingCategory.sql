
Select
	cast([ID] as int) [Id],
	cast([Description] as nvarchar(50)) [Description] 
From stg.[CC_ListingCategory_FinalView]