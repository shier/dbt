
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_WorldRecords_Incr" ("hashValue", "effectiveTime", "Wrsp", "LotNumber", "Wrsh", "Wrsscm", "AuctionID", "Comments", "Created")
    (
        select "hashValue", "effectiveTime", "Wrsp", "LotNumber", "Wrsh", "Wrsscm", "AuctionID", "Comments", "Created"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_WorldRecords_Incr__dbt_tmp"
    );

  