
  
  if object_id ('"stg"."Auct_OriginatorID_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_OriginatorID_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_OriginatorID_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_OriginatorID_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_OriginatorID_Inter__dbt_tmp_temp_view as
    
Select
	cast(originator_db as nvarchar(4000)) Originator_Db,
	inserted_date Inserted_Date,
	originator_id Originator_ID,
	originator_db_version Originator_Db_Version,
	originator_version Originator_Version,
	cast(originator_publication as nvarchar(4000)) Originator_Publication,
	cast(originator_node as nvarchar(4000)) Originator_Node
From Auct_OriginatorID_Raw
    ');

  CREATE TABLE "stg"."Auct_OriginatorID_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_OriginatorID_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_OriginatorID_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_OriginatorID_Inter__dbt_tmp_temp_view"
    end


