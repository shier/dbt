
  
  if object_id ('"dbo"."Auct_ChargeatSaleAuctionFeeType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ChargeatSaleAuctionFeeType__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ChargeatSaleAuctionFeeType__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ChargeatSaleAuctionFeeType__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ChargeatSaleAuctionFeeType__dbt_tmp_temp_view as
    
Select
	cast([Active] as bit) [ACTIVE],
	cast([FeeTypeID] as int) [FEETYPEID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([CreatedByUserID] as int) [CREATEDBYUSERID],
	cast([ItemTypeID] as int) [ITEMTYPEID] 
From stg.[Auct_ChargeatSaleAuctionFeeType_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ChargeatSaleAuctionFeeType__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ChargeatSaleAuctionFeeType__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ChargeatSaleAuctionFeeType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ChargeatSaleAuctionFeeType__dbt_tmp_temp_view"
    end


