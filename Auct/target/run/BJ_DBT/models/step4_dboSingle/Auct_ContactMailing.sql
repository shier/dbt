
  
  if object_id ('"dbo"."Auct_ContactMailing__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ContactMailing__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ContactMailing__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ContactMailing__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ContactMailing__dbt_tmp_temp_view as
    
Select
	cast([ContactMailingID] as int) [ContactMailingID],
	cast([MailingTypeID] as int) [MailingTypeID],
	cast([ContactID] as int) [ContactID],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_ContactMailing_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ContactMailing__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ContactMailing__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ContactMailing__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ContactMailing__dbt_tmp_temp_view"
    end


