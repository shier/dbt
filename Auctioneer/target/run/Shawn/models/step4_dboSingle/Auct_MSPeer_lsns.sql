
  
  if object_id ('"dbo"."Auct_MSPeer_lsns__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MSPeer_lsns__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_MSPeer_lsns__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_MSPeer_lsns__dbt_tmp"
    end


   EXEC('create view dbo.Auct_MSPeer_lsns__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [id],
	cast([Last_Updated] as datetime) [last_updated],
	cast([Originator] as nvarchar(4000)) [originator],
	cast([Originator_Db] as nvarchar(4000)) [originator_db],
	cast([Originator_Publication] as nvarchar(4000)) [originator_publication],
	cast([Originator_Publication_ID] as int) [originator_publication_id],
	cast([Originator_Db_Version] as int) [originator_db_version],
	cast([Originator_lsn] as varbinary(8000)) [originator_lsn],
	cast([Originator_Version] as int) [originator_version],
	cast([Originator_ID] as int) [originator_id] 
From stg.[Auct_MSPeer_lsns_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_MSPeer_lsns__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_MSPeer_lsns__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_MSPeer_lsns__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MSPeer_lsns__dbt_tmp_temp_view"
    end


