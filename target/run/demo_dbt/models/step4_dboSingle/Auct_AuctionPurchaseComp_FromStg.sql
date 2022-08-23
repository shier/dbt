
  
  if object_id ('"dbo"."Auct_AuctionPurchaseComp_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionPurchaseComp_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AuctionPurchaseComp_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AuctionPurchaseComp_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AuctionPurchaseComp_FromStg__dbt_tmp_temp_view as
    
Select
	cast([PurchaseAuctionID] as int) [PurchaseAuctionID],
	cast([CompedAuctionID] as int) [CompedAuctionID] 
From stg.[Auct_AuctionPurchaseComp_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AuctionPurchaseComp_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AuctionPurchaseComp_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AuctionPurchaseComp_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionPurchaseComp_FromStg__dbt_tmp_temp_view"
    end

