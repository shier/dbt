
Select
	[ID],[EventID],[DisplayOrder],[MediaID],[DeletedOn],[CreatedOn],[UpdatedOn] 
From stg.[AH_AuctionEventMedias_Incr] 
Where [dbt_valid_to] is null