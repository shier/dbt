
  
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
	cast([SponsorBadgesID] as int) [SponsorBadgesID],
	cast([BadgeTypeID] as int) [BadgeTypeID],
	cast([SponsorAuctionID] as int) [SponsorAuctionID],
	cast([SponsorBadgeNumber] as int) [SponsorBadgeNumber],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
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


