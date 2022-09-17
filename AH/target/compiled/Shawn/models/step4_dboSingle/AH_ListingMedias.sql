
Select
	cast([CreatedOn] as datetime) [Created],
	cast([UpdatedOn] as datetime) [UpdatedDate],
	cast([DeletedOn] as datetime) [DeletedDate],
	cast([ID] as int) [ID],
	cast([MediaID] as int) [MediaID],
	cast([ListingID] as int) [ListingID],
	cast([DisplayOrder] as int) [DisplayOrder] 
From stg.[AH_ListingMedias_FinalView]