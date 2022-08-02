
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(AuctionBidderID as varchar), Cast(DocketID as varchar), Cast(SaleStatusID as varchar), Cast(AuctioneerID as varchar), Cast(UpdateEventID as varchar), Cast(BuyerCommOverride as varchar), Cast(SellerCommOverride as varchar), Cast(TaxOverride as varchar), Cast(StateTaxDollars as varchar), Cast(StateTaxRate as varchar), Cast(CountyTaxDollars as varchar), Cast(CountyTaxRate as varchar), Cast(CityTaxDollars as varchar), Cast(CityTaxRate as varchar), Cast(Price as varchar), Cast(BuyerCommPerc as varchar), Cast(BuyerCommDollars as varchar), Cast(CommPerc as varchar), Cast(CommDollars as varchar), Cast(Created as varchar), Cast(RunDate as varchar), Comments, TaxExemptCode)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BlockSale_Inter]
	)
Select * From hashData
