
Select
	[CredentialID],[CredentialName],[Active],[CreatedDate],[CreatedByUserID],[QueueID],[FeeType_Credential_ID],[FeeTypeID],[CredentialQuantity] 
From stg.[Auct_Credential_Incr] 
Where [dbt_valid_to] is null