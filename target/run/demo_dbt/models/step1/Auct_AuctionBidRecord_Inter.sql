
  
  if object_id ('"stg"."Auct_AuctionBidRecord_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctionBidRecord_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AuctionBidRecord_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_AuctionBidRecord_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_AuctionBidRecord_Inter__dbt_tmp_temp_view as
    
Select
	[AUCTIONBIDRECORDID] [AuctionBidRecordID],
	[LOTNUMBER] [LotNumber],
	[AUCTIONBIDDERNUMBER] [AuctionBidderNumber],
	[AUCTIONID] [AuctionID],
	[CREATED] [Created]
From stg.[Auct_AuctionBidRecord_Raw]
    ');

  CREATE TABLE "stg"."Auct_AuctionBidRecord_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AuctionBidRecord_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_AuctionBidRecord_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctionBidRecord_Inter__dbt_tmp_temp_view"
    end


