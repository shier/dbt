
Select
	[AccountingLogID],[AuctionID],[ConsignmentID],[AuctionBidderID],[BlockSaleID],[ChangedStamp],[ChangedByUserName],[FieldName],[Oldvalue],[Newvalue] 
From stg.[Auct_AccountingLog_Incr] 
Where [dbt_valid_to] is null