
With hashData as (
		Select
			HASHBYTES('MD5', concat(City, StateProvince, County, Cast(ItemTaxTypeID as varchar), Cast(Created as varchar), Cast(TaxRatesID as varchar), Cast(TaxType as varchar), Cast(UpdateEventID as varchar), Cast(TaxLevelID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_TaxLookup_Inter]
	)
Select * From hashData
