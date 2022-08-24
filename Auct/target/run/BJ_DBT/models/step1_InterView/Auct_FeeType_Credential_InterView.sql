create view "dbo_stg"."Auct_FeeType_Credential_InterView__dbt_tmp" as
    
Select
	[CREDENTIALID] [CredentialID],
	[FEETYPE_CREDENTIAL_ID] [FeeType_Credential_ID],
	[FEETYPEID] [FeeTypeID],
	[CREDENTIALQUANTITY] [CredentialQuantity],
	[CREATEDBYUSERID] [CreatedByUserID],
	[CREATEDDATE] [CreatedDate],
	[QUEUEID] [QueueID],
	cast([CREDENTIALNAME] as nvarchar(4000)) [CredentialName],
	[ACTIVE] [Active]
From stg.[Auct_FeeType_Credential_Raw]
