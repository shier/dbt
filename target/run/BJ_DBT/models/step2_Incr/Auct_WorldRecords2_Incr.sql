
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_WorldRecords2_Incr" ("hashValue", "effectiveTime", "AuctionID", "WorldRecordSales$Hagerty", "WorldRecordSales$sPortsCarmarket", "WorldRecordSalesPrice", "Lot#", "Comments", "WorldRecordID")
    (
        select "hashValue", "effectiveTime", "AuctionID", "WorldRecordSales$Hagerty", "WorldRecordSales$sPortsCarmarket", "WorldRecordSalesPrice", "Lot#", "Comments", "WorldRecordID"
        from "BJAC_DW_PROD"."stg"."#Auct_WorldRecords2_Incr__dbt_tmp"
    );

  