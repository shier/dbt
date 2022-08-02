
  
  if object_id ('"stg"."Auct_AuctionBidderSkyBox_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctionBidderSkyBox_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AuctionBidderSkyBox_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_AuctionBidderSkyBox_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_AuctionBidderSkyBox_Inter__dbt_tmp_temp_view as
    
Select
	AUCTIONBIDDERID AuctionBidderID,
	SKYBOXTICKETNUMBER SkyBoxTicketNumber,
	CREATEDBYUSERID CreatedByUserID,
	AUCTIONID AuctionID,
	ACTIVE Active,
	CREATED Created
From Auct_AuctionBidderSkyBox_Raw
    ');

  CREATE TABLE "stg"."Auct_AuctionBidderSkyBox_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AuctionBidderSkyBox_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_AuctionBidderSkyBox_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctionBidderSkyBox_Inter__dbt_tmp_temp_view"
    end


