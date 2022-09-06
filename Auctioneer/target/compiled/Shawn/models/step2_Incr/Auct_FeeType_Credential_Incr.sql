
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([FeeType_Credential_ID] as varchar), Cast([CredentialID] as varchar), Cast([FeeTypeID] as varchar), Cast([CredentialQuantity] as varchar), Cast([CreatedByUserID] as varchar), Cast([CreatedDate] as varchar), Cast([QueueID] as varchar), [CredentialName], Cast([Active] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_FeeType_Credential_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."Auct_FeeType_Credential_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
