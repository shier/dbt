{{ config(materialized='table',schema='dbo')}}
Select
	cast([FeeType_Credential_ID] as int) [FEETYPE_CREDENTIAL_ID],
	cast([CredentialID] as int) [CREDENTIALID],
	cast([FeeTypeID] as int) [FEETYPEID],
	cast([CredentialQuantity] as int) [CREDENTIALQUANTITY],
	cast([CreatedByUserID] as int) [CREATEDBYUSERID],
	cast([CreatedDate] as datetime) [CREATEDDATE],
	cast([QueueID] as int) [QUEUEID],
	cast([CredentialName] as nvarchar(4000)) [CREDENTIALNAME],
	cast([Active] as bit) [ACTIVE] 
From stg.[Auct_FeeType_Credential_FinalView]