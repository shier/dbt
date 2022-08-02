
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(ItemTypeID as varchar), Cast(ItemStatusID as varchar), Cast(ContactID as varchar), Cast(UpdateEventID as varchar), Cast(ItemTaxTypeID as varchar), Cast(Created as varchar), Cast(EstimatedValue as varchar), Descr)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Item_Inter]
	)
Select * From hashData
