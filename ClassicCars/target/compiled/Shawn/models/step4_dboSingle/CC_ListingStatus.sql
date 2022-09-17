
Select
	cast([Description] as nvarchar(50)) [ListingStatus],
	cast([ID] as int) [ID] 
From stg.[CC_ListingStatus_FinalView]