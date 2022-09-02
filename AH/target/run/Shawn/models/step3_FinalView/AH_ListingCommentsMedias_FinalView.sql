create view "stg"."AH_ListingCommentsMedias_FinalView__dbt_tmp" as
    
Select
	[ID],[UpdatedOn],[DeletedOn],[CreatedOn],[MediaID],[CommentID],[DisplayOrder] 
From stg.[AH_ListingCommentsMedias_Incr] 
Where [dbt_valid_to] is null
