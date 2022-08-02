
  
  if object_id ('"stg"."Auct_MediaAuction_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MediaAuction_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_MediaAuction_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_MediaAuction_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_MediaAuction_Inter__dbt_tmp_temp_view as
    
Select
	ANTICIPATEDDATE AnticipatedDate,
	CREATED Created,
	MEDIAAUCTIONID MediaAuctionID,
	MEDIAID MediaID,
	AUCTIONID AuctionID,
	GALAINVITES Galainvites,
	UPDATEEVENTID UpdateEventID,
	cast(PUBLISHPHOTOS as nvarchar(4000)) PublishPhotos,
	cast(COMMENTS as nvarchar(4000)) Comments
From Auct_MediaAuction_Raw
    ');

  CREATE TABLE "stg"."Auct_MediaAuction_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_MediaAuction_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_MediaAuction_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MediaAuction_Inter__dbt_tmp_temp_view"
    end


