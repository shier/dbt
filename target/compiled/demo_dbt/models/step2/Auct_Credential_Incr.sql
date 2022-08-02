
With hashData as (
		Select
			HASHBYTES('MD5', concat(CredentialName, Cast(Active as varchar), Cast(CreatedDate as varchar), Cast(CreatedByUserID as varchar), Cast(QueueID as varchar), Cast(FeeType_Credential_ID as varchar), Cast(FeeTypeID as varchar), Cast(CredentialQuantity as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Credential_Inter]
	)
Select * From hashData
