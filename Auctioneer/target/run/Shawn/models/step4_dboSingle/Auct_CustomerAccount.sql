
  
  if object_id ('"dbo"."Auct_CustomerAccount__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CustomerAccount__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_CustomerAccount__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_CustomerAccount__dbt_tmp"
    end


   EXEC('create view dbo.Auct_CustomerAccount__dbt_tmp_temp_view as
    
Select
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([ContactID] as int) [CONTACTID],
	cast([CompanyID] as int) [COMPANYID],
	cast([BankAccountID] as int) [BANKACCOUNTID],
	cast([CustomerAccountStatusID] as int) [CUSTOMERACCOUNTSTATUSID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([PhoneAssignmentID] as int) [PHONEASSIGNMENTID],
	cast([WebGUID] as varchar(50)) [WEBGUID],
	cast([ProxiBidID] as int) [PROXIBIDID],
	cast([OnlineUserID] as int) [ONLINEUSERID] 
From stg.[Auct_CustomerAccount_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_CustomerAccount__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_CustomerAccount__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_CustomerAccount__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CustomerAccount__dbt_tmp_temp_view"
    end


