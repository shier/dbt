
Select
	AuctionID AuctionID,
	WorldRecordSales$Hagerty WorldRecordSales$Hagerty,
	WorldRecordSales$SportsCarMarket WorldRecordSales$sPortsCarmarket,
	WorldRecordSalesPrice WorldRecordSalesPrice,
	Lot# Lot#,
	WorldRecordID WorldRecordID,
	cast(Comments as nvarchar(4000)) Comments
From Auct_WorldRecords2_Raw