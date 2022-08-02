
      
  
  if object_id ('"stg"."CC_ListingImagedefinition_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingImagedefinition_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ListingImagedefinition_Incr"','U') is not null
    begin
    drop table "stg"."CC_ListingImagedefinition_Incr"
    end


   EXEC('create view stg.CC_ListingImagedefinition_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(ListingImageFieldName, FileNamefragment, Cast(ShouldpopulateInitially as varchar), Cast(ImageWidth as varchar), Cast(ImageHeight as varchar), Cast(Quality as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ListingImagedefinition_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_ListingImagedefinition_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ListingImagedefinition_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_ListingImagedefinition_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingImagedefinition_Incr_temp_view"
    end



  