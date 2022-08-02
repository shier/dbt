
  
  if object_id ('"stg"."Auct_BidderBadge_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidderBadge_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_BidderBadge_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_BidderBadge_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_BidderBadge_Inter__dbt_tmp_temp_view as
    
Select
	BIDDERBADGEID BidderBadgeID,
	BIDDERBADGEIMAGEID BidderBadgeImageID,
	BIDDERSTATUSID BidderStatusID,
	AUCTIONID AuctionID
From Auct_BidderBadge_Raw
    ');

  CREATE TABLE "stg"."Auct_BidderBadge_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_BidderBadge_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_BidderBadge_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidderBadge_Inter__dbt_tmp_temp_view"
    end


