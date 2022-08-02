
  
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
	SOURCEID SourceID,
	UPDATEEVENTID UpdateEventID,
	DISPLAYORDER DisplayOrder,
	WEBACTIVE WebActive,
	CREATED Created,
	cast(SOURCENAME as nvarchar(4000)) SourceName,
	cast(ACTIVE as nvarchar(4000)) Active
From Auct_Sources_Raw
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


