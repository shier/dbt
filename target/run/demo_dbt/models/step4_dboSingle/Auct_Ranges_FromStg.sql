
  
  if object_id ('"dbo"."Auct_Ranges_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Ranges_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Ranges_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Ranges_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Ranges_FromStg__dbt_tmp_temp_view as
    
Select
	cast([RangeID] as int) [RangeID],
	cast([RangeName] as nvarchar(4000)) [RangeName],
	cast([ContactTypeID] as int) [ContactTypeID],
	cast([AuctionID] as int) [AuctionID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([ProjectedTime] as datetime) [ProjectedTime],
	cast([IsReserveLotFee] as int) [IsReserveLotFee],
	cast([RangeStart] as numeric(30,2)) [RangeStart],
	cast([RangeEnd] as numeric(30,2)) [RangeEnd],
	cast([RangeNumber] as numeric(30,4)) [RangeNumber] 
From stg.[Auct_Ranges_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Ranges_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Ranges_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Ranges_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Ranges_FromStg__dbt_tmp_temp_view"
    end


