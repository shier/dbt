{{ config(materialized='view',schema='stg')}}
Select
	[AuctionID],[WorldRecordSales$Hagerty],[WorldRecordSales$sPortsCarmarket],[WorldRecordSalesPrice],[Lot#],[Comments],[WorldRecordID] 
From [Auct_WorldRecords2_Incr]