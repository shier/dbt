
  
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
	cast(FILENAME as nvarchar(4000)) FileName,
	cast(NAME as nvarchar(4000)) Name,
	cast(SUBPATH as nvarchar(4000)) SubPath,
	SHOTID ShotID,
	CONTENTID ContentID,
	ACTIVE Active,
	PATHID PathID,
	MULTIMEDIATYPEID MultiMediaTypeID,
	DATECREATED DateCreated
From Auct_Shot_Raw
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


