
  
  if object_id ('"dbo"."Auct_SponsorBanners__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SponsorBanners__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SponsorBanners__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SponsorBanners__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SponsorBanners__dbt_tmp_temp_view as
    
Select
	cast([SponsorBannersID] as int) [SPONSORBANNERSID],
	cast([BannerTypeID] as int) [BANNERTYPEID],
	cast([SponsorAuctionID] as int) [SPONSORAUCTIONID],
	cast([SponsorBannerNumber] as int) [SPONSORBANNERNUMBER],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_SponsorBanners_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SponsorBanners__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SponsorBanners__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SponsorBanners__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SponsorBanners__dbt_tmp_temp_view"
    end


