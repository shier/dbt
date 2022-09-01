
  
  if object_id ('"dbo"."Auct_MSPeer_Response__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MSPeer_Response__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_MSPeer_Response__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_MSPeer_Response__dbt_tmp"
    end


   EXEC('create view dbo.Auct_MSPeer_Response__dbt_tmp_temp_view as
    
Select
	cast([Request_ID] as int) [Request_ID],
	cast([Peer] as nvarchar(4000)) [Peer],
	cast([Peer_Db] as nvarchar(4000)) [Peer_Db],
	cast([Received_Date] as datetime) [Received_Date] 
From stg.[Auct_MSPeer_Response_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_MSPeer_Response__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_MSPeer_Response__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_MSPeer_Response__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MSPeer_Response__dbt_tmp_temp_view"
    end


