
  
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
	cast([BidderBadgeImageID] as int) [BidderBadgeImageID],
	cast([IsDefault] as bit) [IsDefault],
	cast([FileName] as nvarchar(4000)) [FileName],
	cast([UncPath] as nvarchar(4000)) [UNCPath],
	cast([BadgesIDEID] as int) [BadgesIDEID],
	cast([Description] as nvarchar(4000)) [Description],
	cast([AuctionID] as int) [AuctionID] 
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


