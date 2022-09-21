
  
  if object_id ('"dbo"."Auct_TimedLot__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_TimedLot__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_TimedLot__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_TimedLot__dbt_tmp"
    end


   EXEC('create view dbo.Auct_TimedLot__dbt_tmp_temp_view as
    
Select
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([TargetTime] as datetime) [TARGETTIME] 
From stg.[Auct_TimedLot_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_TimedLot__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_TimedLot__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_TimedLot__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_TimedLot__dbt_tmp_temp_view"
    end


