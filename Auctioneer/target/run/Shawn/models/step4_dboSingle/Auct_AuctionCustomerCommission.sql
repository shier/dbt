
  
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
	cast([SellerComission] as numeric(18,0)) [SELLERCOMISSION],
	cast([BuyerComission] as numeric(18,0)) [BUYERCOMISSION],
	cast([MinSellerCharge] as numeric(18,0)) [MINSELLERCHARGE],
	cast([MinBuyerCharge] as numeric(18,0)) [MINBUYERCHARGE],
	cast([AuctionID] as int) [AUCTIONID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([ItemTypeID] as int) [ITEMTYPEID] 
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


