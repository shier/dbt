{{ config(materialized='view',schema='stg')}}
Select
	[FeeTypeCredentialExtraID],[Active],[Extra_Element_ID],[ExtraTag],[ExtraQuantity],[FeeType_Credential_ID] 
From stg.[Auct_FeeType_Credential_Extras_Incr] 
Where [dbt_valid_to] is null