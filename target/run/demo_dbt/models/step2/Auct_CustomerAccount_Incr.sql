
      
  
  if object_id ('"stg"."Auct_CustomerAccount_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CustomerAccount_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_CustomerAccount_Incr"','U') is not null
    begin
    drop table "stg"."Auct_CustomerAccount_Incr"
    end


   EXEC('create view stg.Auct_CustomerAccount_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(ContactID as varchar), Cast(CompanyID as varchar), Cast(BankAccountID as varchar), Cast(CustomerAccountStatusID as varchar), Cast(UpdateEventID as varchar), Cast(PhoneAssignmentID as varchar), Cast(ProxiBidID as varchar), Cast(OnlineUserID as varchar), Cast(Created as varchar), WebGUID)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_CustomerAccount_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_CustomerAccount_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_CustomerAccount_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_CustomerAccount_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CustomerAccount_Incr_temp_view"
    end



  