
  
  if object_id ('"stg"."Auct_Notes_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Notes_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Notes_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Notes_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Notes_Inter__dbt_tmp_temp_view as
    
Select
	[NOTEID] [NoteID],
	cast([TEXT] as nvarchar(4000)) [Text],
	[NOTECATEGORYID] [NoteCategoryID],
	cast([USERNAME] as nvarchar(4000)) [UserName],
	[CREATED] [Created]
From stg.[Auct_Notes_Raw]
    ');

  CREATE TABLE "stg"."Auct_Notes_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Notes_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Notes_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Notes_Inter__dbt_tmp_temp_view"
    end


