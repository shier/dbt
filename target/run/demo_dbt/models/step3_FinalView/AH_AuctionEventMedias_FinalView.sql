create view "stg"."AH_AuctionEventMedias_FinalView__dbt_tmp" as
    
Select
	[ID],[UpdatedOn],[DeletedOn],[CreatedOn],[DisplayOrder],[MediaID],[EventID] 
From stg.[AH_AuctionEventMedias_Incr] 
Where [dbt_valid_to] is null
