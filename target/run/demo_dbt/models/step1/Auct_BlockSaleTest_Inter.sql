
  
  if object_id ('"stg"."Auct_BlockSaleTest_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BlockSaleTest_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_BlockSaleTest_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_BlockSaleTest_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_BlockSaleTest_Inter__dbt_tmp_temp_view as
    
Select
	[BLOCKSALETESTID] [BlockSaleTestID],
	[PRICE] [Price],
	[BUYERCOMMPERC] [BuyerCommPerc],
	[BUYERCOMMDOLLARS] [BuyerCommDollars],
	[COMMPERC] [CommPerc],
	[CITYTAXRATE] [CityTaxRate],
	[COMMDOLLARS] [CommDollars],
	[STATETAXDOLLARS] [StateTaxDollars],
	[STATETAXRATE] [StateTaxRate],
	[COUNTYTAXDOLLARS] [CountyTaxDollars],
	[COUNTYTAXRATE] [CountyTaxRate],
	[CITYTAXDOLLARS] [CityTaxDollars],
	[AUCTIONBIDDERID] [AuctionBidderID],
	[DOCKETID] [DocketID],
	[SALESTATUSID] [SaleStatusID],
	[AUCTIONEERID] [AuctioneerID],
	cast([COMMENTS] as nvarchar(4000)) [Comments],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[BUYERCOMMOVERRIDE] [BuyerCommOverride],
	[SELLERCOMMOVERRIDE] [SellerCommOverride],
	[RUNDATE] [RunDate],
	[TAXOVERRIDE] [TaxOverride],
	cast([TAXEXEMPTCODE] as nvarchar(4000)) [TaxExemptCode]
From stg.[Auct_BlockSaleTest_Raw]
    ');

  CREATE TABLE "stg"."Auct_BlockSaleTest_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_BlockSaleTest_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_BlockSaleTest_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BlockSaleTest_Inter__dbt_tmp_temp_view"
    end


