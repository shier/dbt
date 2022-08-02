
  
  if object_id ('"stg"."Auct_Ranges_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Ranges_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Ranges_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Ranges_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Ranges_Inter__dbt_tmp_temp_view as
    
Select
	[RANGEID] [RangeID],
	cast([RANGENAME] as nvarchar(4000)) [RangeName],
	[CONTACTTYPEID] [ContactTypeID],
	[AUCTIONID] [AuctionID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[PROJECTEDTIME] [ProjectedTime],
	[ISRESERVELOTFEE] [IsReserveLotFee],
	[RANGESTART] [RangeStart],
	[RANGEEND] [RangeEnd],
	[RANGENUMBER] [RangeNumber]
From stg.[Auct_Ranges_Raw]
    ');

  CREATE TABLE "stg"."Auct_Ranges_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Ranges_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Ranges_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Ranges_Inter__dbt_tmp_temp_view"
    end


