
  
  if object_id ('"dbo"."Auct_AuctionCustomerCommission__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionCustomerCommission__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AuctionCustomerCommission__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AuctionCustomerCommission__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AuctionCustomerCommission__dbt_tmp_temp_view as
    
Select
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([SellerComission] as numeric(18,0)) [SellerComission],
	cast([BuyerComission] as numeric(18,0)) [BuyerComission],
	cast([MinSellerCharge] as numeric(18,0)) [MinSellerCharge],
	cast([MinBuyerCharge] as numeric(18,0)) [MinBuyerCharge],
	cast([AuctionID] as int) [AuctionID],
	cast([ItemTypeID] as int) [ItemTypeID] 
From stg.[Auct_AuctionCustomerCommission_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AuctionCustomerCommission__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AuctionCustomerCommission__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AuctionCustomerCommission__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionCustomerCommission__dbt_tmp_temp_view"
    end


