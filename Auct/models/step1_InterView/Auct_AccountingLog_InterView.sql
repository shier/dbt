{{ config(materialized='view',schema='stg')}}
Select
	[ACCOUNTINGLOGID] [AccountingLogID],
	[AUCTIONID] [AuctionID],
	[CONSIGNMENTID] [ConsignmentID],
	[AUCTIONBIDDERID] [AuctionBidderID],
	[BLOCKSALEID] [BlockSaleID],
	cast([FIELDNAME] as nvarchar(4000)) [FieldName],
	cast([OLDVALUE] as nvarchar(4000)) [Oldvalue],
	cast([NEWVALUE] as nvarchar(4000)) [Newvalue],
	cast([CHANGEDBYUSERNAME] as nvarchar(4000)) [ChangedByUserName],
	[CHANGEDSTAMP] [ChangedStamp]
From stg.[Auct_AccountingLog_Raw]
