
  
  if object_id ('"stg"."Auct_SponsorBanners_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SponsorBanners_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SponsorBanners_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SponsorBanners_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_SponsorBanners_Inter__dbt_tmp_temp_view as
    
Select
	CREATED Created,
	SPONSORBANNERSID SponsorBannersID,
	BANNERTYPEID BannerTypeID,
	SPONSORAUCTIONID SponsorAuctionID,
	SPONSORBANNERNUMBER SponsorBannerNumber,
	UPDATEEVENTID UpdateEventID
From Auct_SponsorBanners_Raw
    ');

  CREATE TABLE "stg"."Auct_SponsorBanners_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SponsorBanners_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SponsorBanners_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SponsorBanners_Inter__dbt_tmp_temp_view"
    end


