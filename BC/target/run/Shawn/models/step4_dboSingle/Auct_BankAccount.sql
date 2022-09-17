
  
  if object_id ('"dbo"."Auct_BankAccount__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BankAccount__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_BankAccount__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_BankAccount__dbt_tmp"
    end


   EXEC('create view dbo.Auct_BankAccount__dbt_tmp_temp_view as
    
Select
	cast([AccountTypeID] as int) [ACCOUNTTYPEID],
	cast([BankAccountID] as int) [BANKACCOUNTID],
	cast([AddressID] as int) [ADDRESSID],
	cast([AccountNumber] as nvarchar(4000)) [ACCOUNTNUMBER],
	cast([Expiration] as DATETIME) [EXPIRATION],
	cast([BankContact] as nvarchar(4000)) [BANKCONTACT],
	cast([OwnerCustomerAccountID] as int) [OWNERCUSTOMERACCOUNTID],
	cast([BankAccountStatusID] as int) [BANKACCOUNTSTATUSID],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([MbnaAccount1] as nvarchar(4000)) [MBNAACCOUNT1],
	cast([MbnaAccount2] as nvarchar(4000)) [MBNAACCOUNT2],
	cast([MbnaAccount3] as nvarchar(4000)) [MBNAACCOUNT3],
	cast([PhoneID] as int) [PHONEID],
	cast([FaxID] as int) [FAXID],
	cast([BankName] as nvarchar(4000)) [BANKNAME],
	cast([Active] as nvarchar(4000)) [ACTIVE] 
From stg.[Auct_BankAccount_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_BankAccount__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_BankAccount__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_BankAccount__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BankAccount__dbt_tmp_temp_view"
    end


