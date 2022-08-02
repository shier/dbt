
      
  
  if object_id ('"stg"."CC_SocialprovIDEr_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SocialprovIDEr_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_SocialprovIDEr_Incr"','U') is not null
    begin
    drop table "stg"."CC_SocialprovIDEr_Incr"
    end


   EXEC('create view stg.CC_SocialprovIDEr_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Name, DisplayName, AppKey, AppSecret, Cast(IsActive as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_SocialprovIDEr_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_SocialprovIDEr_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_SocialprovIDEr_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_SocialprovIDEr_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SocialprovIDEr_Incr_temp_view"
    end



  