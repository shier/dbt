
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(MediaAuctionID as varchar), Cast(UpdateEventID as varchar), CredentialNumber)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_MediaCredential_Inter]
	)
Select * From hashData
