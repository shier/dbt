{{ config(materialized='view',schema='stg')}}
Select
	[AccountingLogID],[AuctionID],[ConsignmentID],[AuctionBidderID],[BlockSaleID],[FieldName],[Oldvalue],[Newvalue],[ChangedByUserName],[ChangedStamp] 
From stg.[Auct_AccountingLog_Incr] 
Where [dbt_valid_to] is null