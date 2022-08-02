
Select
	cast(CREDENTIALNAME as nvarchar(4000)) CredentialName,
	ACTIVE Active,
	CREATEDDATE CreatedDate,
	CREATEDBYUSERID CreatedByUserID,
	QUEUEID QueueID,
	FEETYPE_CREDENTIAL_ID FeeType_Credential_ID,
	CREDENTIALID CredentialID,
	FEETYPEID FeeTypeID,
	CREDENTIALQUANTITY CredentialQuantity
From Auct_Credential_Raw