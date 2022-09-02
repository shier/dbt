{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[CreatedOn] [CreatedOn],
	[MediaId] [MediaID],
	[CommentId] [CommentID],
	[DisplayOrder] [DisplayOrder]
From stg.[AH_ListingCommentsMedias_Raw]
