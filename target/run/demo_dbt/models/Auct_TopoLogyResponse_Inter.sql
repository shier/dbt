
  
  if object_id ('"stg"."Auct_TopoLogyResponse_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_TopoLogyResponse_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_TopoLogyResponse_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_TopoLogyResponse_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_TopoLogyResponse_Inter__dbt_tmp_temp_view as
    
Select
	received_date Received_Date,
	request_id Request_ID,
	peer_version Peer_Version,
	originator_id Originator_ID,
	peer_conflict_retention Peer_Conflict_Retention,
	cast(peer as nvarchar(4000)) Peer,
	cast(peer_db as nvarchar(4000)) Peer_Db,
	cast(connection_info as nvarchar(4000)) Connection_Info
From Auct_TopoLogyResponse_Raw
    ');

  CREATE TABLE "stg"."Auct_TopoLogyResponse_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_TopoLogyResponse_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_TopoLogyResponse_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_TopoLogyResponse_Inter__dbt_tmp_temp_view"
    end


