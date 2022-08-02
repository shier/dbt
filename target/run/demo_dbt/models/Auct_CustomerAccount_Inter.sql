
  
  if object_id ('"stg"."Auct_CustomerAccount_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CustomerAccount_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_CustomerAccount_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_CustomerAccount_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_CustomerAccount_Inter__dbt_tmp_temp_view as
    
Select
	CONTACTID ContactID,
	COMPANYID CompanyID,
	BANKACCOUNTID BankAccountID,
	CUSTOMERACCOUNTSTATUSID CustomerAccountStatusID,
	UPDATEEVENTID UpdateEventID,
	PHONEASSIGNMENTID PhoneAssignmentID,
	CUSTOMERACCOUNTID CustomerAccountID,
	PROXIBIDID ProxiBidID,
	ONLINEUSERID OnlineUserID,
	CREATED Created,
	cast(WEBGUID as nvarchar(4000)) WebGUID
From Auct_CustomerAccount_Raw
    ');

  CREATE TABLE "stg"."Auct_CustomerAccount_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_CustomerAccount_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_CustomerAccount_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CustomerAccount_Inter__dbt_tmp_temp_view"
    end


