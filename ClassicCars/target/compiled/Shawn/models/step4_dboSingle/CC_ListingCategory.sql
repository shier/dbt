
Select
	cast([ID] as int) [ID],
	cast([Description] as nvarchar(50)) [ListingCategory] 
From stg.[CC_ListingCategory_FinalView]