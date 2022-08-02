
  
  if object_id ('"stg"."Auct_MSPeer_Response_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MSPeer_Response_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_MSPeer_Response_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_MSPeer_Response_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_MSPeer_Response_Inter__dbt_tmp_temp_view as
    
Select
	[request_id] [Request_ID],
	cast([peer] as nvarchar(4000)) [Peer],
	cast([peer_db] as nvarchar(4000)) [Peer_Db],
	[received_date] [Received_Date]
From stg.[Auct_MSPeer_Response_Raw]
    ');

  CREATE TABLE "stg"."Auct_MSPeer_Response_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_MSPeer_Response_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_MSPeer_Response_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MSPeer_Response_Inter__dbt_tmp_temp_view"
    end


