
With hashData as (
		Select
			HASHBYTES('MD5', concat(RecipientName, Cast(KeyControlID as varchar), Cast(UserID as varchar), Cast(ConsignmentID as varchar), Cast(KeyControlStatusID as varchar), Cast(TransactionTime as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_KeyControlTransaction_Inter]
	)
Select * From hashData
