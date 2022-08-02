
  
  if object_id ('"stg"."Auct_MSPeer_lsns_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MSPeer_lsns_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_MSPeer_lsns_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_MSPeer_lsns_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_MSPeer_lsns_Inter__dbt_tmp_temp_view as
    
Select
	[id] [ID],
	[last_updated] [Last_Updated],
	cast([originator] as nvarchar(4000)) [Originator],
	cast([originator_db] as nvarchar(4000)) [Originator_Db],
	cast([originator_publication] as nvarchar(4000)) [Originator_Publication],
	[originator_publication_id] [Originator_Publication_ID],
	[originator_db_version] [Originator_Db_Version],
	cast([originator_lsn] as nvarchar(4000)) [Originator_lsn],
	[originator_version] [Originator_Version],
	[originator_id] [Originator_ID]
From stg.[Auct_MSPeer_lsns_Raw]
    ');

  CREATE TABLE "stg"."Auct_MSPeer_lsns_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_MSPeer_lsns_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_MSPeer_lsns_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MSPeer_lsns_Inter__dbt_tmp_temp_view"
    end


