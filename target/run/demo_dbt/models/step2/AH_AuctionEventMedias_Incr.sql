
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."AH_AuctionEventMedias_Incr" ("effectiveTime", "EventID", "DisplayOrder", "ID", "MediaID", "Deletedon", "Createdon", "Updatedon")
    (
        select "effectiveTime", "EventID", "DisplayOrder", "ID", "MediaID", "Deletedon", "Createdon", "Updatedon"
        from "DedicatedSQLpoolBJ"."stg"."#AH_AuctionEventMedias_Incr__dbt_tmp"
    );

  