
  
  if object_id ('"stg"."Auct_lsns_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_lsns_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_lsns_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_lsns_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_lsns_Inter__dbt_tmp_temp_view as
    
Select
	cast(originator_lsn as nvarchar(4000)) Originator_lsn,
	cast(originator_publication as nvarchar(4000)) Originator_Publication,
	cast(originator as nvarchar(4000)) Originator,
	cast(originator_db as nvarchar(4000)) Originator_Db,
	id ID,
	originator_publication_id Originator_Publication_ID,
	originator_db_version Originator_Db_Version,
	originator_version Originator_Version,
	originator_id Originator_ID,
	last_updated Last_Updated
From Auct_lsns_Raw
    ');

  CREATE TABLE "stg"."Auct_lsns_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_lsns_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_lsns_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_lsns_Inter__dbt_tmp_temp_view"
    end


