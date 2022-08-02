
  
  if object_id ('"stg"."Auct_TopoLogyResponse_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_TopoLogyResponse_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_TopoLogyResponse_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_TopoLogyResponse_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_TopoLogyResponse_Final__dbt_tmp_temp_view as
    
Select
	[Received_Date],[Request_ID],[Peer_Version],[Originator_ID],[Peer_Conflict_Retention],[Peer],[Peer_Db],[Connection_Info] 
From [Auct_TopoLogyResponse_Incr]
    ');

  CREATE TABLE "stg"."Auct_TopoLogyResponse_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_TopoLogyResponse_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_TopoLogyResponse_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_TopoLogyResponse_Final__dbt_tmp_temp_view"
    end


