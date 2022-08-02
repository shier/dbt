
  
  if object_id ('"stg"."Auct_Shot_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Shot_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Shot_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Shot_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Shot_Inter__dbt_tmp_temp_view as
    
Select
	[SHOTID] [ShotID],
	[CONTENTID] [ContentID],
	cast([FILENAME] as nvarchar(4000)) [FileName],
	[DATECREATED] [DateCreated],
	[ACTIVE] [Active],
	cast([NAME] as nvarchar(4000)) [Name],
	[PATHID] [PathID],
	cast([SUBPATH] as nvarchar(4000)) [SubPath],
	[MULTIMEDIATYPEID] [MultiMediaTypeID]
From stg.[Auct_Shot_Raw]
    ');

  CREATE TABLE "stg"."Auct_Shot_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Shot_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Shot_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Shot_Inter__dbt_tmp_temp_view"
    end


