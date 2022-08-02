
  
  if object_id ('"stg"."Auct_Mspub_IDEntity_Range_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Mspub_IDEntity_Range_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Mspub_IDEntity_Range_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Mspub_IDEntity_Range_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Mspub_IDEntity_Range_Inter__dbt_tmp_temp_view as
    
Select
	[objid] [OBJID],
	[threshold] [ThresHold],
	[range] [Range],
	[pub_range] [Pub_Range],
	[current_pub_range] [Current_Pub_Range],
	[last_seed] [Last_Seed]
From stg.[Auct_Mspub_IDEntity_Range_Raw]
    ');

  CREATE TABLE "stg"."Auct_Mspub_IDEntity_Range_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Mspub_IDEntity_Range_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Mspub_IDEntity_Range_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Mspub_IDEntity_Range_Inter__dbt_tmp_temp_view"
    end


