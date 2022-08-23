
  
  if object_id ('"dbo"."Auct_MSPeer_OriginatorID_History_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MSPeer_OriginatorID_History_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_MSPeer_OriginatorID_History_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_MSPeer_OriginatorID_History_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_MSPeer_OriginatorID_History_FromStg__dbt_tmp_temp_view as
    
Select
	cast([Originator_ID] as int) [Originator_ID],
	cast([Originator_Publication] as nvarchar(4000)) [Originator_Publication],
	cast([Originator_Node] as nvarchar(4000)) [Originator_Node],
	cast([Originator_Db] as nvarchar(4000)) [Originator_Db],
	cast([Originator_Db_Version] as int) [Originator_Db_Version],
	cast([Originator_Version] as int) [Originator_Version],
	cast([Inserted_Date] as datetime) [Inserted_Date] 
From stg.[Auct_MSPeer_OriginatorID_History_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_MSPeer_OriginatorID_History_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_MSPeer_OriginatorID_History_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_MSPeer_OriginatorID_History_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MSPeer_OriginatorID_History_FromStg__dbt_tmp_temp_view"
    end


