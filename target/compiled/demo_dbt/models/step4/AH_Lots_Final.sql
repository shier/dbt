
Select
	[ID],[LotNumber],[LastUpdatedUser],[CreatedOn],[UpdatedOn],[DeletedOn],[ClosingGroup],[SoftclosingGroup],[LotOrder],[AuctionEventID],[IsSoftclosing] 
From stg.[AH_Lots_Incr] 
Where [dbt_valid_to] is null