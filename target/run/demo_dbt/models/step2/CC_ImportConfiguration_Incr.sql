
      
  
  if object_id ('"stg"."CC_ImportConfiguration_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ImportConfiguration_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ImportConfiguration_Incr"','U') is not null
    begin
    drop table "stg"."CC_ImportConfiguration_Incr"
    end


   EXEC('create view stg.CC_ImportConfiguration_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(FileName, Cast(ActiveFromUTC as varchar), Cast(ActivetOutC as varchar), Cast(LastSuccessFileTimeStamp as varchar), Cast(LastSuccessCompletedUTC as varchar), Cast(FileTimeStamp as varchar), Cast(CycleStart as varchar), Cast(CycleEnd as varchar), Cast(FileSize_kBytes as varchar), Cast(Totalentries as varchar), Cast(ValIDEntries as varchar), Cast(Completedentries as varchar), Cast(AllowLinksinDescriptions as varchar), Cast(SkipMakeModelVerification as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ImportConfiguration_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_ImportConfiguration_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ImportConfiguration_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_ImportConfiguration_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ImportConfiguration_Incr_temp_view"
    end



  