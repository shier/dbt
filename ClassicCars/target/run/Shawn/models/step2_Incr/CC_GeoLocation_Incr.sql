
      
  

    insert into "BJAC_DW_PROD"."stg"."CC_GeoLocation_Incr" ("hashValue", "effectiveTime", "GeoDataSource", "CreateDateUTC", "Latitude", "Longitude", "IpAddress", "CountryCode", "RegionCode", "RegionName", "City", "ZipCode")
    (
        select "hashValue", "effectiveTime", "GeoDataSource", "CreateDateUTC", "Latitude", "Longitude", "IpAddress", "CountryCode", "RegionCode", "RegionName", "City", "ZipCode"
        from "BJAC_DW_PROD"."stg"."#CC_GeoLocation_Incr__dbt_tmp"
    );

  