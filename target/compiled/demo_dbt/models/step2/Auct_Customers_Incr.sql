
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([ContactID] as varchar), Cast([CustomerAccountID] as varchar), [Name], [EmailAddress], [Type], Cast([ContactTypeID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Customers_Inter]
	)
Select * From hashData
