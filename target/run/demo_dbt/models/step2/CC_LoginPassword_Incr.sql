
      
  
  if object_id ('"stg"."CC_LoginPassword_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_LoginPassword_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_LoginPassword_Incr"','U') is not null
    begin
    drop table "stg"."CC_LoginPassword_Incr"
    end


   EXEC('create view stg.CC_LoginPassword_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(UserID as varchar), Cast(AccessfailedCount as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(LockOutEnd as varchar), Cast(IsActive as varchar), Password)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_LoginPassword_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_LoginPassword_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_LoginPassword_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_LoginPassword_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_LoginPassword_Incr_temp_view"
    end



  