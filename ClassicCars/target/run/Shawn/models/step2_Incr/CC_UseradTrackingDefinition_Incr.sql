
      
  

    insert into "BJAC_DW_PROD"."stg"."CC_UseradTrackingDefinition_Incr" ("hashValue", "effectiveTime", "TrackingDefinition", "DataTokenID", "StartDateUTC", "EndDateUTC")
    (
        select "hashValue", "effectiveTime", "TrackingDefinition", "DataTokenID", "StartDateUTC", "EndDateUTC"
        from "BJAC_DW_PROD"."stg"."#CC_UseradTrackingDefinition_Incr__dbt_tmp"
    );

  