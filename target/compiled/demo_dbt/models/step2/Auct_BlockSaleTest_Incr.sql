
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Price as varchar), Cast(BuyerCommPerc as varchar), Cast(BuyerCommDollars as varchar), Cast(CityTaxDollars as varchar), Cast(CityTaxRate as varchar), Cast(CommPerc as varchar), Cast(CommDollars as varchar), Cast(StateTaxDollars as varchar), Cast(StateTaxRate as varchar), Cast(CountyTaxDollars as varchar), Cast(CountyTaxRate as varchar), Cast(Created as varchar), Cast(RunDate as varchar), Cast(SaleStatusID as varchar), Cast(AuctioneerID as varchar), Cast(UpdateEventID as varchar), Cast(BuyerCommOverride as varchar), Cast(SellerCommOverride as varchar), Cast(TaxOverride as varchar), Cast(AuctionBidderID as varchar), Cast(DocketID as varchar), Comments, TaxExemptCode)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BlockSaleTest_Inter]
	)
Select * From hashData
