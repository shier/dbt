
  
  if object_id ('"dbo"."Auct_BankAccount_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BankAccount_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_BankAccount_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_BankAccount_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_BankAccount_FromStg__dbt_tmp_temp_view as
    
Select
	cast([BankAccountID] as int) [BankAccountID],
	cast([AccountTypeID] as int) [AccountTypeID],
	cast([AddressID] as int) [AddressID],
	cast([AccountNumber] as nvarchar(4000)) [AccountNumber],
	cast([Expiration] as DATETIME) [Expiration],
	cast([BankContact] as nvarchar(4000)) [BankContact],
	cast([OwnerCustomerAccountID] as int) [OwnerCustomerAccountID],
	cast([BankAccountStatusID] as int) [BankAccountStatusID],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([MbnaAccount1] as nvarchar(4000)) [MbnaAccount1],
	cast([MbnaAccount2] as nvarchar(4000)) [MbnaAccount2],
	cast([MbnaAccount3] as nvarchar(4000)) [MbnaAccount3],
	cast([PhoneID] as int) [PhoneID],
	cast([FaxID] as int) [FaxID],
	cast([BankName] as nvarchar(4000)) [BankName],
	cast([Active] as nvarchar(4000)) [Active] 
From stg.[Auct_BankAccount_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_BankAccount_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_BankAccount_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_BankAccount_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BankAccount_FromStg__dbt_tmp_temp_view"
    end


