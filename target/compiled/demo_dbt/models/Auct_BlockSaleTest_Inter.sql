
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