
  
  if object_id ('"dbo"."Auct_BlockedBidderNumbers__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BlockedBidderNumbers__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_BlockedBidderNumbers__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_BlockedBidderNumbers__dbt_tmp"
    end


   EXEC('create view dbo.Auct_BlockedBidderNumbers__dbt_tmp_temp_view as
    
Select
	cast([AuctionID] as int) [AUCTIONID],
	cast([AuctionBidderNumber] as int) [AUCTIONBIDDERNUMBER],
	cast([Comments] as nvarchar(4000)) [COMMENTS],
	cast([BlockedByUserID] as int) [BLOCKEDBYUSERID] 
From stg.[Auct_BlockedBidderNumbers_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_BlockedBidderNumbers__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_BlockedBidderNumbers__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_BlockedBidderNumbers__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BlockedBidderNumbers__dbt_tmp_temp_view"
    end


