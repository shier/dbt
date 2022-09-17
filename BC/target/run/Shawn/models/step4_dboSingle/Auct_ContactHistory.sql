
  
  if object_id ('"dbo"."Auct_ContactHistory__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ContactHistory__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ContactHistory__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ContactHistory__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ContactHistory__dbt_tmp_temp_view as
    
Select
	cast([ContactHistoryID] as int) [CONTACTHISTORYID],
	cast([ContactID] as int) [CONTACTID],
	cast([Note] as nvarchar(4000)) [NOTE],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([ModifiedBy] as nvarchar(4000)) [MODIFIEDBY],
	cast([Internaluse] as int) [INTERNALUSE],
	cast([Archive] as nvarchar(4000)) [ARCHIVE],
	cast([NoteID] as int) [NOTEID] 
From stg.[Auct_ContactHistory_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ContactHistory__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ContactHistory__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ContactHistory__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ContactHistory__dbt_tmp_temp_view"
    end


