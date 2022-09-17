
Select
	cast([ListingSourcePK] as int) [ListingSourcePK],
	cast([Description] as nvarchar(50)) [ListingSource] 
From stg.[CC_ListingSources_FinalView]