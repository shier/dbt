
  
  if object_id ('"stg"."AH_ReListHistory_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ReListHistory_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_ReListHistory_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_ReListHistory_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_ReListHistory_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	[CurrentPrice_Old] [CurrentPrice_Old],
	[CurrentPrice_New] [CurrentPrice_New],
	[ReservePrice] [ReservePrice],
	[ListingId] [ListingID],
	[NewRelistIteration] [NewreListiteration],
	[Duration_Old] [Duration_Old],
	[Duration_New] [Duration_New],
	[HighBidderId] [HighBidderID],
	[BidCount] [BidCount],
	[StartDTTM_New] [Startdttm_New],
	[EndDTTM_Old] [Enddttm_Old],
	[EndDTTM_New] [Enddttm_New],
	[RelistDTTM] [ReListdttm],
	[StartDTTM_Old] [Startdttm_Old],
	[MaxBidAmount] [MaxBidAmount],
	[ProxyBidAmount] [ProxyBidAmount],
	[BidIncrement] [BidIncrement],
	cast([ListingTitle] as nvarchar(4000)) [ListingTitle]
From stg.[AH_ReListHistory_Raw]
    ');

  CREATE TABLE "stg"."AH_ReListHistory_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_ReListHistory_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_ReListHistory_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ReListHistory_Inter__dbt_tmp_temp_view"
    end


