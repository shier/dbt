
  
  if object_id ('"dbo"."Auct_MSPeer_TopoLogyRequest__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MSPeer_TopoLogyRequest__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_MSPeer_TopoLogyRequest__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_MSPeer_TopoLogyRequest__dbt_tmp"
    end


   EXEC('create view dbo.Auct_MSPeer_TopoLogyRequest__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [id],
	cast([Publication] as nvarchar(4000)) [publication],
	cast([Sent_Date] as datetime) [sent_date] 
From stg.[Auct_MSPeer_TopoLogyRequest_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_MSPeer_TopoLogyRequest__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_MSPeer_TopoLogyRequest__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_MSPeer_TopoLogyRequest__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MSPeer_TopoLogyRequest__dbt_tmp_temp_view"
    end


