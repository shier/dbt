
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_Node_Incr" ("hashValue", "effectiveTime", "NodeID", "NodeTreeID", "Left", "Right", "ContentID")
    (
        select "hashValue", "effectiveTime", "NodeID", "NodeTreeID", "Left", "Right", "ContentID"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_Node_Incr__dbt_tmp"
    );

  