
  
  if object_id ('"dbo"."Auct_Emails__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Emails__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Emails__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Emails__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Emails__dbt_tmp_temp_view as
    
Select
	cast([EmailID] as int) [EMAILID],
	cast([EmailAddress] as nvarchar(320)) [EMAILADDRESS],
	cast([ContactID] as int) [CONTACTID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([Use] as char(1)) [USE],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([EmailBlastOptin] as char(1)) [EMAILBLASTOPTIN],
	cast([EmailBlastOptinPartners] as char(1)) [EMAILBLASTOPTINPARTNERS],
	cast([Active] as bit) [ACTIVE] 
From stg.[Auct_Emails_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Emails__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Emails__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Emails__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Emails__dbt_tmp_temp_view"
    end


