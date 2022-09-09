{{ config(materialized='view',schema='stg')}}
Select
	[FEETYPE_CREDENTIAL_ID] [FeeType_Credential_ID],
	[CREDENTIALID] [CredentialID],
	[FEETYPEID] [FeeTypeID],
	[CREDENTIALQUANTITY] [CredentialQuantity],
	[CREATEDBYUSERID] [CreatedByUserID],
	[CREATEDDATE] [CreatedDate],
	[QUEUEID] [QueueID],
	cast([CREDENTIALNAME] as nvarchar(4000)) [CredentialName],
	[ACTIVE] [Active]
From stg.[Auct_FeeType_Credential_Raw]
