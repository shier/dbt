
      
  
  if object_id ('"stg"."Auct_Users_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Users_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Users_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Users_Incr"
    end


   EXEC('create view stg.Auct_Users_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Name, EmailAddress, Password, SecretAnswer, Enabled, Title, DeScripton, Address, City, State, PostalCode, Reason, WinLogon, WinDomain, SMSNotificationNumber, Phone1, Phone2, Cast(QuestionID as varchar), Cast(UpdateEventID as varchar), Cast(SMSNotificationBit as varchar), Cast(DepartmentID as varchar), Cast(LastLoggedin as varchar), Cast(LastActivity as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Users_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Users_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Users_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Users_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Users_Incr_temp_view"
    end



  