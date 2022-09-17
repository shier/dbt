
  
  if object_id ('"dbo"."Auct_BlockSale__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BlockSale__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_BlockSale__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_BlockSale__dbt_tmp"
    end


   EXEC('create view dbo.Auct_BlockSale__dbt_tmp_temp_view as
    
Select
	cast([BlockSaleID] as int) [BLOCKSALEID],
	cast([AuctionBidderID] as int) [AUCTIONBIDDERID],
	cast([DocketID] as int) [DOCKETID],
	cast([SaleStatusID] as int) [SALESTATUSID],
	cast([AuctioneerID] as int) [AUCTIONEERID],
	cast([Comments] as varchar(512)) [COMMENTS],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([BuyerCommOverride] as int) [BUYERCOMMOVERRIDE],
	cast([SellerCommOverride] as int) [SELLERCOMMOVERRIDE],
	cast([RunDate] as datetime) [RUNDATE],
	cast([TaxOverride] as int) [TAXOVERRIDE],
	cast([TaxExemptCode] as varchar(4)) [TAXEXEMPTCODE],
	cast([Price] as money) [PRICE],
	cast([BuyerCommPerc] as numeric(18,6)) [BUYERCOMMPERC],
	cast([BuyerCommDollars] as money) [BUYERCOMMDOLLARS],
	cast([CommPerc] as numeric(18,6)) [COMMPERC],
	cast([CityTaxRate] as numeric(18,6)) [CITYTAXRATE],
	cast([CommDollars] as money) [COMMDOLLARS],
	cast([StateTaxDollars] as money) [STATETAXDOLLARS],
	cast([StateTaxRate] as numeric(18,6)) [STATETAXRATE],
	cast([CountyTaxDollars] as money) [COUNTYTAXDOLLARS],
	cast([CountyTaxRate] as numeric(18,6)) [COUNTYTAXRATE],
	cast([CityTaxDollars] as money) [CITYTAXDOLLARS] 
From stg.[Auct_BlockSale_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_BlockSale__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_BlockSale__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_BlockSale__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BlockSale__dbt_tmp_temp_view"
    end


