
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_NewSalestoInvoice_Inter]
	)
Select * From hashData
