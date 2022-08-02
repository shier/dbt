{{ config(materialized='view',schema='stg')}}
Select
	[ID],[LotNumber],[LastUpdatedUser],[IsSoftclosing],[SoftclosingGroup],[LotOrder],[AuctionEventID],[ClosingGroup],[CreatedOn],[UpdatedOn],[DeletedOn] 
From stg.[AH_Lots_Incr] 
Where [dbt_valid_to] is null