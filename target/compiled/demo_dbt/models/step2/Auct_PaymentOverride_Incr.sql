
With hashData as (
		Select
			HASHBYTES('MD5', concat(Description, Cast(ConsignmentID as varchar), Cast(ApproverUserID as varchar), Cast(RequestUserID as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_PaymentOverride_Inter]
	)
Select * From hashData
