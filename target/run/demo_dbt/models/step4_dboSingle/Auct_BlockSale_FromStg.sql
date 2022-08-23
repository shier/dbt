
  
  if object_id ('"dbo"."Auct_BlockSale_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BlockSale_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_BlockSale_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_BlockSale_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_BlockSale_FromStg__dbt_tmp_temp_view as
    
Select
	cast([BlockSaleID] as int) [BlockSaleID],
	cast([AuctionBidderID] as int) [AuctionBidderID],
	cast([DocketID] as int) [DocketID],
	cast([SaleStatusID] as int) [SaleStatusID],
	cast([AuctioneerID] as int) [AuctioneerID],
	cast([Comments] as varchar(512)) [Comments],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([BuyerCommOverride] as int) [BuyerCommOverride],
	cast([SellerCommOverride] as int) [SellerCommOverride],
	cast([RunDate] as datetime) [RunDate],
	cast([TaxOverride] as int) [TaxOverride],
	cast([TaxExemptCode] as varchar(4)) [TaxExemptCode],
	cast([Price] as money) [Price],
	cast([BuyerCommPerc] as numeric(18,6)) [BuyerCommPct],
	cast([BuyerCommDollars] as money) [BuyerCommDollars],
	cast([CommPerc] as numeric(18,6)) [CommPct],
	cast([CityTaxRate] as numeric(18,6)) [CityTaxRate],
	cast([CommDollars] as money) [CommDollars],
	cast([StateTaxDollars] as money) [StateTaxDollars],
	cast([StateTaxRate] as numeric(18,6)) [StateTaxRate],
	cast([CountyTaxDollars] as money) [CountyTaxDollars],
	cast([CountyTaxRate] as numeric(18,6)) [CountyTaxRate],
	cast([CityTaxDollars] as money) [CityTaxDollars] 
From stg.[Auct_BlockSale_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_BlockSale_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_BlockSale_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_BlockSale_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BlockSale_FromStg__dbt_tmp_temp_view"
    end


