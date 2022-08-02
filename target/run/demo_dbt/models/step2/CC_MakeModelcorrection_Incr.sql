
      
  
  if object_id ('"stg"."CC_MakeModelcorrection_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_MakeModelcorrection_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_MakeModelcorrection_Incr"','U') is not null
    begin
    drop table "stg"."CC_MakeModelcorrection_Incr"
    end


   EXEC('create view stg.CC_MakeModelcorrection_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(IsActive as varchar), BadMake, BadModel, GoodMake, GoodModel, GoodTrim)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_MakeModelcorrection_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_MakeModelcorrection_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_MakeModelcorrection_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_MakeModelcorrection_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_MakeModelcorrection_Incr_temp_view"
    end



  