{{ config(materialized='view',schema='stg')}}
Select
	[ID],[UpdatedOn],[DeletedOn],[CreatedOn],[DisplayOrder],[MediaID],[EventID] 
From stg.[AH_AuctionEventMedias_Incr] 
Where [dbt_valid_to] is null