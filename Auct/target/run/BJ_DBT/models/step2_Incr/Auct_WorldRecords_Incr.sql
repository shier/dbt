
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_WorldRecords_Incr" ("hashValue", "effectiveTime", "Wrsp", "LotNumber", "Wrsh", "Wrsscm", "AuctionID", "Comments", "Created")
    (
        select "hashValue", "effectiveTime", "Wrsp", "LotNumber", "Wrsh", "Wrsscm", "AuctionID", "Comments", "Created"
        from "BJAC_DW_PROD"."stg"."#Auct_WorldRecords_Incr__dbt_tmp"
    );

  