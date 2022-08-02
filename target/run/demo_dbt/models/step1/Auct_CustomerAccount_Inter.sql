
  
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
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[CONTACTID] [ContactID],
	[COMPANYID] [CompanyID],
	[BANKACCOUNTID] [BankAccountID],
	[CUSTOMERACCOUNTSTATUSID] [CustomerAccountStatusID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[PHONEASSIGNMENTID] [PhoneAssignmentID],
	cast([WEBGUID] as nvarchar(4000)) [WebGUID],
	[PROXIBIDID] [ProxiBidID],
	[ONLINEUSERID] [OnlineUserID]
From stg.[Auct_CustomerAccount_Raw]
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


