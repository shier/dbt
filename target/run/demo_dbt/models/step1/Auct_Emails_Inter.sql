
  
  if object_id ('"stg"."Auct_Emails_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Emails_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Emails_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Emails_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Emails_Inter__dbt_tmp_temp_view as
    
Select
	[EMAILID] [EmailID],
	cast([EMAILADDRESS] as nvarchar(4000)) [EmailAddress],
	[CONTACTID] [ContactID],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	cast([USE] as nvarchar(4000)) [Use],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([EMAILBLASTOPTIN] as nvarchar(4000)) [EmailBlastOptin],
	cast([EMAILBLASTOPTINPARTNERS] as nvarchar(4000)) [EmailBlastOptinPartners],
	cast([ACTIVE] as nvarchar(4000)) [Active]
From stg.[Auct_Emails_Raw]
    ');

  CREATE TABLE "stg"."Auct_Emails_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Emails_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Emails_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Emails_Inter__dbt_tmp_temp_view"
    end


