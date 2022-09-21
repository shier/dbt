
  
  if object_id ('"dbo"."Auct_Docket__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Docket__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Docket__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Docket__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Docket__dbt_tmp_temp_view as
    
Select
	cast([DocketID] as int) [DOCKETID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([LotStatus] as varchar(64)) [LOTSTATUS],
	cast([TargetTime] as datetime) [TARGETTIME],
	cast([ActualTime] as datetime) [ACTUALTIME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([LaneNumber] as int) [LANENUMBER] 
From stg.[Auct_Docket_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Docket__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Docket__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Docket__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Docket__dbt_tmp_temp_view"
    end


