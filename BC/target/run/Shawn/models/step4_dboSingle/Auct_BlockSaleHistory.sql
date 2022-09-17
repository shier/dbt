
  
  if object_id ('"dbo"."Auct_BlockSaleHistory__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BlockSaleHistory__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_BlockSaleHistory__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_BlockSaleHistory__dbt_tmp"
    end


   EXEC('create view dbo.Auct_BlockSaleHistory__dbt_tmp_temp_view as
    
Select
	cast([StateTaxDollars] as numeric(19,4)) [STATETAXDOLLARS],
	cast([StateTaxRate] as numeric(18,6)) [STATETAXRATE],
	cast([CountyTaxDollars] as numeric(19,4)) [COUNTYTAXDOLLARS],
	cast([CountyTaxRate] as numeric(18,6)) [COUNTYTAXRATE],
	cast([CityTaxDollars] as numeric(19,4)) [CITYTAXDOLLARS],
	cast([CityTaxRate] as numeric(18,6)) [CITYTAXRATE],
	cast([Price] as numeric(19,4)) [PRICE],
	cast([BuyerCommPerc] as numeric(18,6)) [BUYERCOMMPERC],
	cast([BuyerCommDollars] as numeric(19,4)) [BUYERCOMMDOLLARS],
	cast([CommPerc] as numeric(18,6)) [COMMPERC],
	cast([CommDollars] as numeric(19,4)) [COMMDOLLARS],
	cast([BlockSaleID] as int) [BLOCKSALEID],
	cast([AuctionBidderID] as int) [AUCTIONBIDDERID],
	cast([DocketID] as int) [DOCKETID],
	cast([SaleStatusID] as int) [SALESTATUSID],
	cast([AuctioneerID] as int) [AUCTIONEERID],
	cast([Comments] as nvarchar(4000)) [COMMENTS],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([BuyerCommOverride] as int) [BUYERCOMMOVERRIDE],
	cast([SellerCommOverride] as int) [SELLERCOMMOVERRIDE],
	cast([RunDate] as DATETIME) [RUNDATE],
	cast([TaxOverride] as int) [TAXOVERRIDE],
	cast([TaxExemptCode] as nvarchar(4000)) [TAXEXEMPTCODE] 
From stg.[Auct_BlockSaleHistory_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_BlockSaleHistory__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_BlockSaleHistory__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_BlockSaleHistory__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BlockSaleHistory__dbt_tmp_temp_view"
    end


