{{ config(materialized='view',schema='stg')}}
Select
	[AuctionID] [AuctionID],
	[WorldRecordSales$Hagerty] [WorldRecordSales$Hagerty],
	[WorldRecordSales$SportsCarMarket] [WorldRecordSales$sPortsCarmarket],
	[WorldRecordSalesPrice] [WorldRecordSalesPrice],
	[Lot#] [Lot#],
	cast([Comments] as nvarchar(4000)) [Comments],
	[WorldRecordID] [WorldRecordID]
From stg.[Auct_WorldRecords2_Raw]
