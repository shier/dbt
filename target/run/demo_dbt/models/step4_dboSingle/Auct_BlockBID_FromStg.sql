
  
  if object_id ('"dbo"."Auct_BlockBID_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BlockBID_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_BlockBID_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_BlockBID_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_BlockBID_FromStg__dbt_tmp_temp_view as
    
Select
	cast([BlockBidID] as int) [BlockBidID],
	cast([AskingBID] as numeric(19,4)) [AskingBid],
	cast([HighBID] as numeric(19,4)) [HighBid],
	cast([DocketID] as int) [DocketID],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([StartTime] as DATETIME) [StartTime],
	cast([EndTime] as DATETIME) [EndTime] 
From stg.[Auct_BlockBID_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_BlockBID_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_BlockBID_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_BlockBID_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BlockBID_FromStg__dbt_tmp_temp_view"
    end


