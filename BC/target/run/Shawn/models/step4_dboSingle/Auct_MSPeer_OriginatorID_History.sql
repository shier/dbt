
  
  if object_id ('"dbo"."Auct_MSPeer_OriginatorID_History__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MSPeer_OriginatorID_History__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_MSPeer_OriginatorID_History__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_MSPeer_OriginatorID_History__dbt_tmp"
    end


   EXEC('create view dbo.Auct_MSPeer_OriginatorID_History__dbt_tmp_temp_view as
    
Select
	cast([Originator_Publication] as nvarchar(4000)) [originator_publication],
	cast([Originator_ID] as int) [originator_id],
	cast([Originator_Node] as nvarchar(4000)) [originator_node],
	cast([Originator_Db] as nvarchar(4000)) [originator_db],
	cast([Originator_Db_Version] as int) [originator_db_version],
	cast([Originator_Version] as int) [originator_version],
	cast([Inserted_Date] as datetime) [inserted_date] 
From stg.[Auct_MSPeer_OriginatorID_History_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_MSPeer_OriginatorID_History__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_MSPeer_OriginatorID_History__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_MSPeer_OriginatorID_History__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MSPeer_OriginatorID_History__dbt_tmp_temp_view"
    end


