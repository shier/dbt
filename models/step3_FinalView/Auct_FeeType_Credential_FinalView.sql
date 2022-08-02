{{ config(materialized='view',schema='stg')}}
Select
	[CredentialID],[FeeType_Credential_ID],[FeeTypeID],[CredentialQuantity],[CreatedByUserID],[CreatedDate],[QueueID],[CredentialName],[Active] 
From stg.[Auct_FeeType_Credential_Incr] 
Where [dbt_valid_to] is null