
  
  if object_id ('"stg"."Auct_BidderAbsentee_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidderAbsentee_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_BidderAbsentee_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_BidderAbsentee_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_BidderAbsentee_Inter__dbt_tmp_temp_view as
    
Select
	BIDDERABSENTEEID BidderAbsenteeID,
	AUCTIONBIDDERID AuctionBidderID,
	MAXIMUMBID MaximumBID,
	AUCTIONID AuctionID,
	LOTNUMBER LotNumber,
	cast(NOTES as nvarchar(4000)) Notes,
	cast(CONTACTINFO as nvarchar(4000)) ContactInfo,
	cast(OTHERCONTACTINFO as nvarchar(4000)) OtherContactInfo
From Auct_BidderAbsentee_Raw
    ');

  CREATE TABLE "stg"."Auct_BidderAbsentee_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_BidderAbsentee_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_BidderAbsentee_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidderAbsentee_Inter__dbt_tmp_temp_view"
    end


