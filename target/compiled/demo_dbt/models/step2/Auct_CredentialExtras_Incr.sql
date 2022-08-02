
With hashData as (
		Select
			HASHBYTES('MD5', concat(ExtraTag, ExtraQuantity, Cast(Active as varchar), Cast(Extra_Element_ID as varchar), Cast(FeeType_Credential_ID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_CredentialExtras_Inter]
	)
Select * From hashData
