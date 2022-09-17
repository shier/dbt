
  
  if object_id ('"dbo"."Auct_BidderBadgeImage__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BidderBadgeImage__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_BidderBadgeImage__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_BidderBadgeImage__dbt_tmp"
    end


   EXEC('create view dbo.Auct_BidderBadgeImage__dbt_tmp_temp_view as
    
Select
	cast([IsDefault] as bit) [ISDEFAULT],
	cast([BidderBadgeImageID] as int) [BIDDERBADGEIMAGEID],
	cast([FileName] as nvarchar(4000)) [FILENAME],
	cast([UncPath] as nvarchar(4000)) [UNCPATH],
	cast([BadgesIDEID] as int) [BADGESIDEID],
	cast([Description] as nvarchar(4000)) [DESCRIPTION],
	cast([AuctionID] as int) [AUCTIONID] 
From stg.[Auct_BidderBadgeImage_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_BidderBadgeImage__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_BidderBadgeImage__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_BidderBadgeImage__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BidderBadgeImage__dbt_tmp_temp_view"
    end


