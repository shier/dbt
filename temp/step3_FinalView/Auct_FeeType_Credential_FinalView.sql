{{ config(materialized='view',schema='stg')}}
Select
	[FeeType_Credential_ID],[CredentialID],[FeeTypeID],[CredentialQuantity],[CreatedByUserID],[CreatedDate],[QueueID],[CredentialName],[Active] 
From [Auct_FeeType_Credential_Incr] 
Where [dbt_valid_to] is null