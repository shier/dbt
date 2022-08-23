
  
  if object_id ('"dbo"."Auct_ChargeatSaleAuctionFeeType_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ChargeatSaleAuctionFeeType_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ChargeatSaleAuctionFeeType_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ChargeatSaleAuctionFeeType_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ChargeatSaleAuctionFeeType_FromStg__dbt_tmp_temp_view as
    
Select
	cast([FeeTypeID] as int) [FeeTypeID],
	cast([Active] as bit) [Active],
	cast([AuctionID] as int) [AuctionID],
	cast([CreatedByUserID] as int) [CreatedByUserID],
	cast([ItemTypeID] as int) [ItemTypeID] 
From stg.[Auct_ChargeatSaleAuctionFeeType_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ChargeatSaleAuctionFeeType_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ChargeatSaleAuctionFeeType_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ChargeatSaleAuctionFeeType_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ChargeatSaleAuctionFeeType_FromStg__dbt_tmp_temp_view"
    end


