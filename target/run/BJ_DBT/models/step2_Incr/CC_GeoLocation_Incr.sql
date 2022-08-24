
      
  
  if object_id ('"stg"."CC_GeoLocation_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_GeoLocation_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_GeoLocation_Incr"','U') is not null
    begin
    drop table "stg"."CC_GeoLocation_Incr"
    end


   EXEC('create view stg.CC_GeoLocation_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([GeoDataSource] as varchar), Cast([CreateDateUTC] as varchar), Cast([Latitude] as varchar), Cast([Longitude] as varchar), [IpAddress], [CountryCode], [RegionCode], [RegionName], [City], [ZipCode])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_GeoLocation_InterView]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_GeoLocation_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_GeoLocation_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_GeoLocation_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_GeoLocation_Incr_temp_view"
    end



  