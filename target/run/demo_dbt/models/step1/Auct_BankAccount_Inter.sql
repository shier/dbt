
  
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
	[BANKACCOUNTID] [BankAccountID],
	[ACCOUNTTYPEID] [AccountTypeID],
	[ADDRESSID] [AddressID],
	cast([ACCOUNTNUMBER] as nvarchar(4000)) [AccountNumber],
	[EXPIRATION] [Expiration],
	cast([BANKCONTACT] as nvarchar(4000)) [BankContact],
	[OWNERCUSTOMERACCOUNTID] [OwnerCustomerAccountID],
	[BANKACCOUNTSTATUSID] [BankAccountStatusID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([MBNAACCOUNT1] as nvarchar(4000)) [MbnaAccount1],
	cast([MBNAACCOUNT2] as nvarchar(4000)) [MbnaAccount2],
	cast([MBNAACCOUNT3] as nvarchar(4000)) [MbnaAccount3],
	[PHONEID] [PhoneID],
	[FAXID] [FaxID],
	cast([BANKNAME] as nvarchar(4000)) [BankName],
	cast([ACTIVE] as nvarchar(4000)) [Active]
From stg.[Auct_BankAccount_Raw]
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


