
  
  if object_id ('"dbo"."Auct_AuctionDeferedRevenue__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionDeferedRevenue__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AuctionDeferedRevenue__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AuctionDeferedRevenue__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AuctionDeferedRevenue__dbt_tmp_temp_view as
    
Select
	cast([DeferedPercentage] as numeric(18,6)) [DEFEREDPERCENTAGE],
	cast([ParentAuctionID] as int) [PARENTAUCTIONID],
	cast([DeferedAuctionID] as int) [DEFEREDAUCTIONID],
	cast([GlAccountNumber] as int) [GLACCOUNTNUMBER] 
From stg.[Auct_AuctionDeferedRevenue_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AuctionDeferedRevenue__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AuctionDeferedRevenue__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AuctionDeferedRevenue__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionDeferedRevenue__dbt_tmp_temp_view"
    end


