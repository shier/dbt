
Select
	cast([AuctionID] as int) [AUCTIONID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([AuctionBidderID] as int) [AUCTIONBIDDERID],
	cast([BlockSaleID] as int) [BLOCKSALEID],
	cast([FieldName] as nvarchar(4000)) [FIELDNAME],
	cast([Oldvalue] as nvarchar(4000)) [OLDVALUE],
	cast([Newvalue] as nvarchar(4000)) [NEWVALUE],
	cast([ChangedByUserName] as nvarchar(4000)) [CHANGEDBYUSERNAME],
	cast([ChangedStamp] as DATETIME) [CHANGEDSTAMP],
	cast([AccountingLogID] as int) [ACCOUNTINGLOGID] 
From stg.[Auct_AccountingLog_FinalView]