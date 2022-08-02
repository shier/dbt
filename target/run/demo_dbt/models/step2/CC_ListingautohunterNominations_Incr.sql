
      
  
  if object_id ('"stg"."CC_ListingautohunterNominations_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingautohunterNominations_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ListingautohunterNominations_Incr"','U') is not null
    begin
    drop table "stg"."CC_ListingautohunterNominations_Incr"
    end


   EXEC('create view stg.CC_ListingautohunterNominations_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(NominationDateUTC as varchar), Cast(ListingID as varchar), Cast(CompanyID as varchar), Cast(Nominationaccepted as varchar), Cast(NominationSalesForceProcessed as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ListingautohunterNominations_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_ListingautohunterNominations_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ListingautohunterNominations_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_ListingautohunterNominations_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingautohunterNominations_Incr_temp_view"
    end



  