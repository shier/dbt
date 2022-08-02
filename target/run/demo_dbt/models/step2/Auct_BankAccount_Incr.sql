
      
  
  if object_id ('"stg"."Auct_BankAccount_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BankAccount_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_BankAccount_Incr"','U') is not null
    begin
    drop table "stg"."Auct_BankAccount_Incr"
    end


   EXEC('create view stg.Auct_BankAccount_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(AddressID as varchar), Cast(OwnerCustomerAccountID as varchar), Cast(BankAccountStatusID as varchar), Cast(UpdateEventID as varchar), Cast(PhoneID as varchar), Cast(FaxID as varchar), Cast(AccountTypeID as varchar), Cast(Expiration as varchar), Cast(Created as varchar), AccountNumber, BankContact, MbnaAccount1, MbnaAccount2, MbnaAccount3, BankName, Active)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BankAccount_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_BankAccount_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_BankAccount_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_BankAccount_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BankAccount_Incr_temp_view"
    end



  