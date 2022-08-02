
  
  if object_id ('"stg"."Auct_BidderBadgeImage_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidderBadgeImage_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_BidderBadgeImage_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_BidderBadgeImage_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_BidderBadgeImage_Inter__dbt_tmp_temp_view as
    
Select
	[BIDDERBADGEIMAGEID] [BidderBadgeImageID],
	[ISDEFAULT] [IsDefault],
	cast([FILENAME] as nvarchar(4000)) [FileName],
	cast([UNCPATH] as nvarchar(4000)) [UncPath],
	[BADGESIDEID] [BadgesIDEID],
	cast([DESCRIPTION] as nvarchar(4000)) [Description],
	[AUCTIONID] [AuctionID]
From stg.[Auct_BidderBadgeImage_Raw]
    ');

  CREATE TABLE "stg"."Auct_BidderBadgeImage_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_BidderBadgeImage_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_BidderBadgeImage_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidderBadgeImage_Inter__dbt_tmp_temp_view"
    end


