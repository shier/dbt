
  
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
	cast(NOTE as nvarchar(4000)) Note,
	cast(MODIFIEDBY as nvarchar(4000)) ModifiedBy,
	cast(ARCHIVE as nvarchar(4000)) Archive,
	CREATED Created,
	INTERNALUSE Internaluse,
	NOTEID NoteID,
	CONTACTHISTORYID ContactHistoryID,
	CONTACTID ContactID,
	UPDATEEVENTID UpdateEventID
From Auct_ContactHistory_Raw
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


