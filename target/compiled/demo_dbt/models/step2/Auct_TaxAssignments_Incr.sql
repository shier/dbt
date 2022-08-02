
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(StateTaxRatesID as varchar), Cast(UpdateEventID as varchar), Cast(CustomerAccountID as varchar), Cast(CityTaxRatesID as varchar), Cast(CountyTaxRatesID as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_TaxAssignments_Inter]
	)
Select * From hashData
