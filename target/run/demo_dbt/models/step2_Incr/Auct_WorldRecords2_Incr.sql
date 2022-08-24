
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_WorldRecords2_Incr" ("hashValue", "effectiveTime", "AuctionID", "WorldRecordSales$Hagerty", "WorldRecordSales$sPortsCarmarket", "WorldRecordSalesPrice", "Lot#", "Comments", "WorldRecordID")
    (
        select "hashValue", "effectiveTime", "AuctionID", "WorldRecordSales$Hagerty", "WorldRecordSales$sPortsCarmarket", "WorldRecordSalesPrice", "Lot#", "Comments", "WorldRecordID"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_WorldRecords2_Incr__dbt_tmp"
    );

  