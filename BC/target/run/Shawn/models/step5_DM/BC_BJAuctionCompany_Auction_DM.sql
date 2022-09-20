
  
  if object_id ('"dbo"."BC_BJAuctionCompany_Auction_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_Auction_DM__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."BC_BJAuctionCompany_Auction_DM__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."BC_BJAuctionCompany_Auction_DM__dbt_tmp"
    end


   EXEC('create view dbo.BC_BJAuctionCompany_Auction_DM__dbt_tmp_temp_view as
    
select 
    AuctionID,
    Name + '' - '' + convert(varchar(5), [Year]) as AuctionName,
    convert(date, AuctionBegins) as AuctionBegins,
    convert(date, AuctionEnds) as AuctionEnds,
    Project
from [stg].[Auct_Auction_FinalView]
    ');

  CREATE TABLE "dbo"."BC_BJAuctionCompany_Auction_DM__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.BC_BJAuctionCompany_Auction_DM__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."BC_BJAuctionCompany_Auction_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_Auction_DM__dbt_tmp_temp_view"
    end


