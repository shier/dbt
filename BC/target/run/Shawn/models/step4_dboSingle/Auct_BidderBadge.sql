
  
  if object_id ('"dbo"."Auct_BidderBadge__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BidderBadge__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_BidderBadge__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_BidderBadge__dbt_tmp"
    end


   EXEC('create view dbo.Auct_BidderBadge__dbt_tmp_temp_view as
    
Select
	cast([BidderBadgeID] as int) [BIDDERBADGEID],
	cast([BidderBadgeImageID] as int) [BIDDERBADGEIMAGEID],
	cast([BidderStatusID] as int) [BIDDERSTATUSID],
	cast([AuctionID] as int) [AUCTIONID] 
From stg.[Auct_BidderBadge_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_BidderBadge__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_BidderBadge__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_BidderBadge__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BidderBadge__dbt_tmp_temp_view"
    end


