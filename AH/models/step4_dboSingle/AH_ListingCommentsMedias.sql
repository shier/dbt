{{ config(materialized='table',schema='dbo')}}
Select
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([ID] as int) [Id],
	cast([MediaID] as int) [MediaId],
	cast([CommentID] as int) [CommentId],
	cast([DisplayOrder] as int) [DisplayOrder] 
From stg.[AH_ListingCommentsMedias_FinalView]