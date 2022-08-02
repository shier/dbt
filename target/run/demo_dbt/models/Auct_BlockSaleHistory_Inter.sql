
  
  if object_id ('"stg"."Auct_BlockSaleHistory_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BlockSaleHistory_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_BlockSaleHistory_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_BlockSaleHistory_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_BlockSaleHistory_Inter__dbt_tmp_temp_view as
    
Select
	cast(COMMENTS as nvarchar(4000)) Comments,
	cast(TAXEXEMPTCODE as nvarchar(4000)) TaxExemptCode,
	CREATED Created,
	RUNDATE RunDate,
	CITYTAXDOLLARS CityTaxDollars,
	CITYTAXRATE CityTaxRate,
	COMMPERC CommPerc,
	COMMDOLLARS CommDollars,
	STATETAXDOLLARS StateTaxDollars,
	STATETAXRATE StateTaxRate,
	COUNTYTAXDOLLARS CountyTaxDollars,
	COUNTYTAXRATE CountyTaxRate,
	PRICE Price,
	BUYERCOMMPERC BuyerCommPerc,
	BUYERCOMMDOLLARS BuyerCommDollars,
	BLOCKSALEID BlockSaleID,
	SELLERCOMMOVERRIDE SellerCommOverride,
	TAXOVERRIDE TaxOverride,
	AUCTIONBIDDERID AuctionBidderID,
	DOCKETID DocketID,
	SALESTATUSID SaleStatusID,
	AUCTIONEERID AuctioneerID,
	UPDATEEVENTID UpdateEventID,
	BUYERCOMMOVERRIDE BuyerCommOverride
From Auct_BlockSaleHistory_Raw
    ');

  CREATE TABLE "stg"."Auct_BlockSaleHistory_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_BlockSaleHistory_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_BlockSaleHistory_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BlockSaleHistory_Inter__dbt_tmp_temp_view"
    end


