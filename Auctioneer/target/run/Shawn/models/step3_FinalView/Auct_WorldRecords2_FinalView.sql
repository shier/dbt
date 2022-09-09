create view "stg"."Auct_WorldRecords2_FinalView__dbt_tmp" as
    
Select
	[AuctionID],[WorldRecordSales$Hagerty],[WorldRecordSales$sPortsCarmarket],[WorldRecordSalesPrice],[Lot#],[Comments],[WorldRecordID] 
From [Auct_WorldRecords2_Incr] 
Where [dbt_valid_to] is null
