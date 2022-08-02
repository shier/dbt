
  
  if object_id ('"stg"."Auct_Node_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Node_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Node_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Node_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Node_Inter__dbt_tmp_temp_view as
    
Select
	[NODEID] [NodeID],
	[NODETREEID] [NodeTreeID],
	[LEFT] [Left],
	[RIGHT] [Right],
	[CONTENTID] [ContentID]
From stg.[Auct_Node_Raw]
    ');

  CREATE TABLE "stg"."Auct_Node_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Node_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Node_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Node_Inter__dbt_tmp_temp_view"
    end


