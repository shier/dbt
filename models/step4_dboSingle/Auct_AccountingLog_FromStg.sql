{{ config(materialized='table',schema='dbo')}}
Select
	cast([AccountingLogID] as int) [AccountingLogID],
	cast([AuctionID] as int) [AuctionID],
	cast([ConsignmentID] as int) [ConSignmentID],
	cast([AuctionBidderID] as int) [AuctionbIDderid],
	cast([BlockSaleID] as int) [BLockSaleID],
	cast([FieldName] as nvarchar(4000)) [FieldName],
	cast([Oldvalue] as nvarchar(4000)) [OldValue],
	cast([Newvalue] as nvarchar(4000)) [NewValue],
	cast([ChangedByUserName] as nvarchar(4000)) [ChangedByUserName],
	cast([ChangedStamp] as DATETIME) [ChangedStamp] 
From stg.[Auct_AccountingLog_FinalView]