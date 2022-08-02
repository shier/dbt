
  
  if object_id ('"stg"."AH_ReListHistory_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ReListHistory_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_ReListHistory_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_ReListHistory_Final__dbt_tmp"
    end


   EXEC('create view stg.AH_ReListHistory_Final__dbt_tmp_temp_view as
    
Select
	[ID],[CurrentPrice_Old],[CurrentPrice_New],[ReservePrice],[ListingID],[NewreListiteration],[Duration_Old],[Duration_New],[HighBidderID],[BidCount],[Startdttm_New],[Enddttm_Old],[Enddttm_New],[ReListdttm],[Startdttm_Old],[MaxBidAmount],[ProxyBidAmount],[BidIncrement],[ListingTitle] 
From stg.[AH_ReListHistory_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."AH_ReListHistory_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_ReListHistory_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_ReListHistory_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ReListHistory_Final__dbt_tmp_temp_view"
    end


