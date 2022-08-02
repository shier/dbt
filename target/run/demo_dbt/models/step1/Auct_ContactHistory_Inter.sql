
  
  if object_id ('"stg"."Auct_ContactHistory_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ContactHistory_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ContactHistory_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_ContactHistory_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_ContactHistory_Inter__dbt_tmp_temp_view as
    
Select
	[CONTACTHISTORYID] [ContactHistoryID],
	[CONTACTID] [ContactID],
	cast([NOTE] as nvarchar(4000)) [Note],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([MODIFIEDBY] as nvarchar(4000)) [ModifiedBy],
	[INTERNALUSE] [Internaluse],
	cast([ARCHIVE] as nvarchar(4000)) [Archive],
	[NOTEID] [NoteID]
From stg.[Auct_ContactHistory_Raw]
    ');

  CREATE TABLE "stg"."Auct_ContactHistory_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ContactHistory_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_ContactHistory_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ContactHistory_Inter__dbt_tmp_temp_view"
    end


