create view "stg"."Auct_AccountingLog_FinalView__dbt_tmp" as
    
Select
	[AccountingLogID],[AuctionID],[ConsignmentID],[AuctionBidderID],[BlockSaleID],[FieldName],[Oldvalue],[Newvalue],[ChangedByUserName],[ChangedStamp] 
From stg.[Auct_AccountingLog_Incr] 
Where [dbt_valid_to] is null
