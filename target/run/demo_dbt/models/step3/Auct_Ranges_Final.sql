
  
  if object_id ('"stg"."Auct_Ranges_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Ranges_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Ranges_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Ranges_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_Ranges_Final__dbt_tmp_temp_view as
    
Select
	[RangeID],[RangeName],[ContactTypeID],[AuctionID],[Created],[UpdateEventID],[ProjectedTime],[IsReserveLotFee],[RangeStart],[RangeEnd],[RangeNumber] 
From stg.[Auct_Ranges_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_Ranges_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Ranges_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Ranges_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Ranges_Final__dbt_tmp_temp_view"
    end


