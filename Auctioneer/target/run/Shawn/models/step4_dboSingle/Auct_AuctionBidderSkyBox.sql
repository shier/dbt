
  
  if object_id ('"dbo"."Auct_AuctionBidderSkyBox__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionBidderSkyBox__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AuctionBidderSkyBox__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AuctionBidderSkyBox__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AuctionBidderSkyBox__dbt_tmp_temp_view as
    
Select
	cast([Active] as bit) [ACTIVE],
	cast([AuctionBidderID] as int) [AUCTIONBIDDERID],
	cast([SkyBoxTicketNumber] as int) [SKYBOXTICKETNUMBER],
	cast([Created] as DATETIME) [CREATED],
	cast([CreatedByUserID] as int) [CREATEDBYUSERID],
	cast([AuctionID] as int) [AUCTIONID] 
From stg.[Auct_AuctionBidderSkyBox_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AuctionBidderSkyBox__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AuctionBidderSkyBox__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AuctionBidderSkyBox__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionBidderSkyBox__dbt_tmp_temp_view"
    end


