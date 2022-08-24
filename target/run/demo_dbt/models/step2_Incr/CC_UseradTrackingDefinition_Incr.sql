
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."CC_UseradTrackingDefinition_Incr" ("hashValue", "effectiveTime", "TrackingDefinition", "DataTokenID", "StartDateUTC", "EndDateUTC")
    (
        select "hashValue", "effectiveTime", "TrackingDefinition", "DataTokenID", "StartDateUTC", "EndDateUTC"
        from "DedicatedSQLpoolBJ"."stg"."#CC_UseradTrackingDefinition_Incr__dbt_tmp"
    );

  