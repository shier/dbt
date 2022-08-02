
  
  if object_id ('"stg"."Auct_MultiMedia_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MultiMedia_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_MultiMedia_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_MultiMedia_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_MultiMedia_Inter__dbt_tmp_temp_view as
    
Select
	[MULTIMEDIAID] [MultiMediaID],
	[CONTENTID] [ContentID],
	[MULTIMEDIATYPEID] [MultiMediaTypeID],
	cast([FILENAME] as nvarchar(4000)) [FileName],
	[DATECREATED] [DateCreated],
	[ACTIVE] [Active],
	[MULTIMEDIACATEGORYID] [MultiMediaCategoryID],
	cast([NAME] as nvarchar(4000)) [Name],
	[PATHID] [PathID],
	cast([SUBPATH] as nvarchar(4000)) [SubPath]
From stg.[Auct_MultiMedia_Raw]
    ');

  CREATE TABLE "stg"."Auct_MultiMedia_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_MultiMedia_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_MultiMedia_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MultiMedia_Inter__dbt_tmp_temp_view"
    end


