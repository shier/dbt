
Select
	AUCTIONID AuctionID,
	CONSIGNMENTID ConsignmentID,
	AUCTIONBIDDERID AuctionBidderID,
	BLOCKSALEID BlockSaleID,
	ACCOUNTINGLOGID AccountingLogID,
	CHANGEDSTAMP ChangedStamp,
	cast(CHANGEDBYUSERNAME as nvarchar(4000)) ChangedByUserName,
	cast(FIELDNAME as nvarchar(4000)) FieldName,
	cast(OLDVALUE as nvarchar(4000)) Oldvalue,
	cast(NEWVALUE as nvarchar(4000)) Newvalue
From Auct_AccountingLog_Raw