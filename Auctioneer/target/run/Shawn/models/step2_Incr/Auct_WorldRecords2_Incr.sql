
      
      
      delete from "BJAC_DW_PROD"."stg"."Auct_WorldRecords2_Incr"
          where (
                dbt_scd_id) in (
      select (dbt_scd_id)
      from "BJAC_DW_PROD"."stg"."#Auct_WorldRecords2_Incr__dbt_tmp"
          );

      
      

      insert into "BJAC_DW_PROD"."stg"."Auct_WorldRecords2_Incr" ("AuctionID", "WorldRecordSales$Hagerty", "WorldRecordSales$sPortsCarmarket", "WorldRecordSalesPrice", "Lot#", "Comments", "WorldRecordID", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to")
          (
      select "AuctionID", "WorldRecordSales$Hagerty", "WorldRecordSales$sPortsCarmarket", "WorldRecordSalesPrice", "Lot#", "Comments", "WorldRecordID", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to"
      from "BJAC_DW_PROD"."stg"."#Auct_WorldRecords2_Incr__dbt_tmp"
          )


  