
  
  if object_id ('"stg"."Auct_BlockSale_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BlockSale_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_BlockSale_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_BlockSale_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_BlockSale_Inter__dbt_tmp_temp_view as
    
Select
	AUCTIONBIDDERID AuctionBidderID,
	DOCKETID DocketID,
	SALESTATUSID SaleStatusID,
	AUCTIONEERID AuctioneerID,
	UPDATEEVENTID UpdateEventID,
	BUYERCOMMOVERRIDE BuyerCommOverride,
	BLOCKSALEID BlockSaleID,
	SELLERCOMMOVERRIDE SellerCommOverride,
	TAXOVERRIDE TaxOverride,
	STATETAXDOLLARS StateTaxDollars,
	STATETAXRATE StateTaxRate,
	COUNTYTAXDOLLARS CountyTaxDollars,
	COUNTYTAXRATE CountyTaxRate,
	CITYTAXDOLLARS CityTaxDollars,
	CITYTAXRATE CityTaxRate,
	PRICE Price,
	BUYERCOMMPERC BuyerCommPerc,
	BUYERCOMMDOLLARS BuyerCommDollars,
	COMMPERC CommPerc,
	COMMDOLLARS CommDollars,
	CREATED Created,
	RUNDATE RunDate,
	cast(COMMENTS as nvarchar(4000)) Comments,
	cast(TAXEXEMPTCODE as nvarchar(4000)) TaxExemptCode
From Auct_BlockSale_Raw
    ');

  CREATE TABLE "stg"."Auct_BlockSale_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_BlockSale_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_BlockSale_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BlockSale_Inter__dbt_tmp_temp_view"
    end


