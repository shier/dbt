
      
  
  if object_id ('"stg"."CC_User_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_User_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_User_Incr"','U') is not null
    begin
    drop table "stg"."CC_User_Incr"
    end


   EXEC('create view stg.CC_User_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(CompanyID as varchar), Cast(UserCreationSourceID as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(PasswordResetDate as varchar), Cast(TwoFactorResetDate as varchar), Cast(IsActive as varchar), Cast(EmailConfirmed as varchar), Cast(UseTwoFactor as varchar), DataTokenID, PasswordResetToken, TwoFactorToken, SessionToken, Email, FirstName, LastName)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_User_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_User_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_User_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_User_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_User_Incr_temp_view"
    end



  