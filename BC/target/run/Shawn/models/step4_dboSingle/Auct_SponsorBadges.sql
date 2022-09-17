
  
  if object_id ('"dbo"."Auct_SponsorBadges__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SponsorBadges__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SponsorBadges__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SponsorBadges__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SponsorBadges__dbt_tmp_temp_view as
    
Select
	cast([SponsorBadgesID] as int) [SPONSORBADGESID],
	cast([BadgeTypeID] as int) [BADGETYPEID],
	cast([SponsorAuctionID] as int) [SPONSORAUCTIONID],
	cast([SponsorBadgeNumber] as int) [SPONSORBADGENUMBER],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_SponsorBadges_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SponsorBadges__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SponsorBadges__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SponsorBadges__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SponsorBadges__dbt_tmp_temp_view"
    end


