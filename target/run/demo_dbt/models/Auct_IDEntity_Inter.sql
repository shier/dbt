
  
  if object_id ('"stg"."Auct_IDEntity_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_IDEntity_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_IDEntity_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_IDEntity_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_IDEntity_Inter__dbt_tmp_temp_view as
    
Select
	range Range,
	pub_range Pub_Range,
	current_pub_range Current_Pub_Range,
	last_seed Last_Seed,
	objid OBJID,
	threshold ThresHold
From Auct_IDEntity_Raw
    ');

  CREATE TABLE "stg"."Auct_IDEntity_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_IDEntity_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_IDEntity_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_IDEntity_Inter__dbt_tmp_temp_view"
    end


