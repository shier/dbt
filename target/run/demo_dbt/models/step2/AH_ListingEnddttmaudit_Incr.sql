
      
  
  if object_id ('"stg"."AH_ListingEnddttmaudit_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ListingEnddttmaudit_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."AH_ListingEnddttmaudit_Incr"','U') is not null
    begin
    drop table "stg"."AH_ListingEnddttmaudit_Incr"
    end


   EXEC('create view stg.AH_ListingEnddttmaudit_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(SqlDaTestamp as varchar), Cast(Enddttm as varchar), Cast(ListingID as varchar), Cast(SourceListingID as varchar), Origin)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_ListingEnddttmaudit_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."AH_ListingEnddttmaudit_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_ListingEnddttmaudit_Incr_temp_view)

   
  
  if object_id ('"stg"."AH_ListingEnddttmaudit_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ListingEnddttmaudit_Incr_temp_view"
    end



  