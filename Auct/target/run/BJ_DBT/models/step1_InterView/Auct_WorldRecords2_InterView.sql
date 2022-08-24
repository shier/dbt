create view "dbo_stg"."Auct_WorldRecords2_InterView__dbt_tmp" as
    
Select
	[AuctionID] [AuctionID],
	[WorldRecordSales$Hagerty] [WorldRecordSales$Hagerty],
	[WorldRecordSales$SportsCarMarket] [WorldRecordSales$sPortsCarmarket],
	[WorldRecordSalesPrice] [WorldRecordSalesPrice],
	[Lot#] [Lot#],
	cast([Comments] as nvarchar(4000)) [Comments],
	[WorldRecordID] [WorldRecordID]
From stg.[Auct_WorldRecords2_Raw]
