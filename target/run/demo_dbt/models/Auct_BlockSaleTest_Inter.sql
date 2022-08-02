
  
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
	PRICE Price,
	BUYERCOMMPERC BuyerCommPerc,
	BUYERCOMMDOLLARS BuyerCommDollars,
	CITYTAXDOLLARS CityTaxDollars,
	CITYTAXRATE CityTaxRate,
	COMMPERC CommPerc,
	COMMDOLLARS CommDollars,
	STATETAXDOLLARS StateTaxDollars,
	STATETAXRATE StateTaxRate,
	COUNTYTAXDOLLARS CountyTaxDollars,
	COUNTYTAXRATE CountyTaxRate,
	CREATED Created,
	RUNDATE RunDate,
	SALESTATUSID SaleStatusID,
	AUCTIONEERID AuctioneerID,
	UPDATEEVENTID UpdateEventID,
	BUYERCOMMOVERRIDE BuyerCommOverride,
	SELLERCOMMOVERRIDE SellerCommOverride,
	TAXOVERRIDE TaxOverride,
	BLOCKSALETESTID BlockSaleTestID,
	AUCTIONBIDDERID AuctionBidderID,
	DOCKETID DocketID,
	cast(COMMENTS as nvarchar(4000)) Comments,
	cast(TAXEXEMPTCODE as nvarchar(4000)) TaxExemptCode
From Auct_BlockSaleTest_Raw
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


