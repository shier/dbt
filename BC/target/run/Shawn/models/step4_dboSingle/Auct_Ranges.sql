
  
  if object_id ('"dbo"."Auct_Ranges__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Ranges__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Ranges__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Ranges__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Ranges__dbt_tmp_temp_view as
    
Select
	cast([RangeID] as int) [RANGEID],
	cast([RangeName] as nvarchar(4000)) [RANGENAME],
	cast([ContactTypeID] as int) [CONTACTTYPEID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([ProjectedTime] as datetime) [PROJECTEDTIME],
	cast([IsReserveLotFee] as int) [ISRESERVELOTFEE],
	cast([RangeStart] as numeric(30,2)) [RANGESTART],
	cast([RangeEnd] as numeric(30,2)) [RANGEEND],
	cast([RangeNumber] as numeric(30,4)) [RANGENUMBER] 
From stg.[Auct_Ranges_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Ranges__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Ranges__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Ranges__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Ranges__dbt_tmp_temp_view"
    end


