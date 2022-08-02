
With hashData as (
		Select
			HASHBYTES('MD5', concat(RecipientName, Description, PropertySpace, ChangedFields, Cast(PropertyID as varchar), Cast(PropertyStatusID as varchar), Cast(UserID as varchar), Cast(PropertyTypeKey as varchar), Cast(ConsignmentID as varchar), Cast(TransactionTime as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_PropertyTransaction_Inter]
	)
Select * From hashData
