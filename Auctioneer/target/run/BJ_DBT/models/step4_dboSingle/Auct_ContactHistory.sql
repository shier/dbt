
  
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
	cast([ContactHistoryID] as int) [ContactHistoryID],
	cast([ContactID] as int) [ContactID],
	cast([Note] as nvarchar(4000)) [Note],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([ModifiedBy] as nvarchar(4000)) [ModifiedBy],
	cast([Internaluse] as int) [InternalUse],
	cast([Archive] as nvarchar(4000)) [Archive],
	cast([NoteID] as int) [NoteID] 
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


