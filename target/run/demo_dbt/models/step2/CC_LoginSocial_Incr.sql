
      
  
  if object_id ('"stg"."CC_LoginSocial_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_LoginSocial_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_LoginSocial_Incr"','U') is not null
    begin
    drop table "stg"."CC_LoginSocial_Incr"
    end


   EXEC('create view stg.CC_LoginSocial_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(SocialprovIDErKey, Cast(IsActive as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(UserID as varchar), Cast(SocialprovIDErID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_LoginSocial_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_LoginSocial_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_LoginSocial_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_LoginSocial_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_LoginSocial_Incr_temp_view"
    end



  