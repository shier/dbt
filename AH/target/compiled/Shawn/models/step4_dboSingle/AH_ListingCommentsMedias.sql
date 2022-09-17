
Select
	cast([UpdatedOn] as datetime) [UpdatedDate_AHListingCommentsMedias],
	cast([DeletedOn] as datetime) [DeletedDate_AHListingCommentsMedias],
	cast([CreatedOn] as datetime) [Created_AHListingCommentsMedias],
	cast([ID] as int) [ID],
	cast([MediaID] as int) [MediaID],
	cast([CommentID] as int) [CommentID],
	cast([DisplayOrder] as int) [DisplayOrder] 
From stg.[AH_ListingCommentsMedias_FinalView]