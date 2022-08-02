
  
  if object_id ('"stg"."Auct_BankAccount_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BankAccount_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_BankAccount_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_BankAccount_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_BankAccount_Inter__dbt_tmp_temp_view as
    
Select
	ADDRESSID AddressID,
	OWNERCUSTOMERACCOUNTID OwnerCustomerAccountID,
	BANKACCOUNTSTATUSID BankAccountStatusID,
	UPDATEEVENTID UpdateEventID,
	PHONEID PhoneID,
	FAXID FaxID,
	ACCOUNTTYPEID AccountTypeID,
	BANKACCOUNTID BankAccountID,
	EXPIRATION Expiration,
	CREATED Created,
	cast(ACCOUNTNUMBER as nvarchar(4000)) AccountNumber,
	cast(BANKCONTACT as nvarchar(4000)) BankContact,
	cast(MBNAACCOUNT1 as nvarchar(4000)) MbnaAccount1,
	cast(MBNAACCOUNT2 as nvarchar(4000)) MbnaAccount2,
	cast(MBNAACCOUNT3 as nvarchar(4000)) MbnaAccount3,
	cast(BANKNAME as nvarchar(4000)) BankName,
	cast(ACTIVE as nvarchar(4000)) Active
From Auct_BankAccount_Raw
    ');

  CREATE TABLE "stg"."Auct_BankAccount_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_BankAccount_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_BankAccount_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BankAccount_Inter__dbt_tmp_temp_view"
    end


