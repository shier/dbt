
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(ExternalEventID as varchar), Cast(AuctionID as varchar), Cast(Active as varchar), Cast(IsDefault as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_CredentialGroup_Inter]
	)
Select * From hashData
