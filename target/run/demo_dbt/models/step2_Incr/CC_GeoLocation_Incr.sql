
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."CC_GeoLocation_Incr" ("hashValue", "effectiveTime", "GeoDataSource", "CreateDateUTC", "Latitude", "Longitude", "IpAddress", "CountryCode", "RegionCode", "RegionName", "City", "ZipCode")
    (
        select "hashValue", "effectiveTime", "GeoDataSource", "CreateDateUTC", "Latitude", "Longitude", "IpAddress", "CountryCode", "RegionCode", "RegionName", "City", "ZipCode"
        from "DedicatedSQLpoolBJ"."stg"."#CC_GeoLocation_Incr__dbt_tmp"
    );

  