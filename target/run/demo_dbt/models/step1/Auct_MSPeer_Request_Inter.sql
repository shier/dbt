
  
  if object_id ('"stg"."Auct_MSPeer_Request_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MSPeer_Request_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_MSPeer_Request_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_MSPeer_Request_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_MSPeer_Request_Inter__dbt_tmp_temp_view as
    
Select
	[id] [ID],
	cast([publication] as nvarchar(4000)) [Publication],
	[sent_date] [Sent_Date],
	cast([description] as nvarchar(4000)) [Description]
From stg.[Auct_MSPeer_Request_Raw]
    ');

  CREATE TABLE "stg"."Auct_MSPeer_Request_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_MSPeer_Request_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_MSPeer_Request_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MSPeer_Request_Inter__dbt_tmp_temp_view"
    end


