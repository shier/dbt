
  
  if object_id ('"stg"."Auct_Sources_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Sources_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Sources_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Sources_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Sources_Inter__dbt_tmp_temp_view as
    
Select
	[SOURCEID] [SourceID],
	[WEBACTIVE] [WebActive],
	cast([SOURCENAME] as nvarchar(4000)) [SourceName],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([ACTIVE] as nvarchar(4000)) [Active],
	[DISPLAYORDER] [DisplayOrder]
From stg.[Auct_Sources_Raw]
    ');

  CREATE TABLE "stg"."Auct_Sources_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Sources_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Sources_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Sources_Inter__dbt_tmp_temp_view"
    end


