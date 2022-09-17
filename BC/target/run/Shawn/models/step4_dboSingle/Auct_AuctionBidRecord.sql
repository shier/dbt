
  
  if object_id ('"dbo"."Auct_AuctionBidRecord__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionBidRecord__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AuctionBidRecord__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AuctionBidRecord__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AuctionBidRecord__dbt_tmp_temp_view as
    
Select
	cast([LotNumber] as numeric(180)) [LOTNUMBER],
	cast([AuctionBidRecordID] as int) [AUCTIONBIDRECORDID],
	cast([AuctionBidderNumber] as int) [AUCTIONBIDDERNUMBER],
	cast([AuctionID] as int) [AUCTIONID],
	cast([Created] as DATETIME) [CREATED] 
From stg.[Auct_AuctionBidRecord_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AuctionBidRecord__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AuctionBidRecord__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AuctionBidRecord__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionBidRecord__dbt_tmp_temp_view"
    end


