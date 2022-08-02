create view "stg"."AH_ListingCommentsMedias_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[CreatedOn] [CreatedOn],
	[MediaId] [MediaID],
	[CommentId] [CommentID],
	[DisplayOrder] [DisplayOrder]
From stg.[AH_ListingCommentsMedias_Raw]
