
  
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
	CREATED Created,
	PROJECTEDTIME ProjectedTime,
	RANGENUMBER RangeNumber,
	RANGESTART RangeStart,
	RANGEEND RangeEnd,
	RANGEID RangeID,
	CONTACTTYPEID ContactTypeID,
	AUCTIONID AuctionID,
	UPDATEEVENTID UpdateEventID,
	ISRESERVELOTFEE IsReserveLotFee,
	cast(RANGENAME as nvarchar(4000)) RangeName
From Auct_Ranges_Raw
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


