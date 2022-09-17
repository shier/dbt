
  
  if object_id ('"dbo"."Auct_BlockBID__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BlockBID__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_BlockBID__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_BlockBID__dbt_tmp"
    end


   EXEC('create view dbo.Auct_BlockBID__dbt_tmp_temp_view as
    
Select
	cast([AskingBID] as numeric(19,4)) [ASKINGBID],
	cast([HighBID] as numeric(19,4)) [HIGHBID],
	cast([BlockBidID] as int) [BLOCKBIDID],
	cast([DocketID] as int) [DOCKETID],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([StartTime] as DATETIME) [STARTTIME],
	cast([EndTime] as DATETIME) [ENDTIME] 
From stg.[Auct_BlockBID_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_BlockBID__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_BlockBID__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_BlockBID__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BlockBID__dbt_tmp_temp_view"
    end


