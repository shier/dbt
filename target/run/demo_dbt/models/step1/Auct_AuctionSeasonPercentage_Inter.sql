
  
  if object_id ('"stg"."Auct_AuctionSeasonPercentage_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctionSeasonPercentage_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AuctionSeasonPercentage_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_AuctionSeasonPercentage_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_AuctionSeasonPercentage_Inter__dbt_tmp_temp_view as
    
Select
	[CURRENTAUCTIONID] [CurrentAuctionID],
	[AUCTIONID] [AuctionID],
	[PERCENTAGE] [Percentage]
From stg.[Auct_AuctionSeasonPercentage_Raw]
    ');

  CREATE TABLE "stg"."Auct_AuctionSeasonPercentage_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AuctionSeasonPercentage_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_AuctionSeasonPercentage_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctionSeasonPercentage_Inter__dbt_tmp_temp_view"
    end


