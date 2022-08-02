{{ config(materialized='table',schema='dbo')}}
Select
	cast([AuctionID] as numeric(18,0)) [AuctionID],
	cast([WorldRecordSales$Hagerty] as numeric(19,4)) [WorldRecordSales$Hagerty],
	cast([WorldRecordSales$sPortsCarmarket] as numeric(19,4)) [WorldRecordSales$sPortsCarmarket],
	cast([WorldRecordSalesPrice] as numeric(19,4)) [WorldRecordSalesPrice],
	cast([Lot#] as real) [Lot#],
	cast([Comments] as nvarchar(4000)) [Comments],
	cast([WorldRecordID] as int) [WorldRecordID] 
From stg.[Auct_WorldRecords2_FinalView]