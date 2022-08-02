
With hashData as (
		Select
			HASHBYTES('MD5', concat(Comments, TaxExemptCode, Cast(Created as varchar), Cast(RunDate as varchar), Cast(CityTaxDollars as varchar), Cast(CityTaxRate as varchar), Cast(CommPerc as varchar), Cast(CommDollars as varchar), Cast(StateTaxDollars as varchar), Cast(StateTaxRate as varchar), Cast(CountyTaxDollars as varchar), Cast(CountyTaxRate as varchar), Cast(Price as varchar), Cast(BuyerCommPerc as varchar), Cast(BuyerCommDollars as varchar), Cast(SellerCommOverride as varchar), Cast(TaxOverride as varchar), Cast(AuctionBidderID as varchar), Cast(DocketID as varchar), Cast(SaleStatusID as varchar), Cast(AuctioneerID as varchar), Cast(UpdateEventID as varchar), Cast(BuyerCommOverride as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BlockSaleHistory_Inter]
	)
Select * From hashData
