
Select
	cast(EXTRATAG as nvarchar(4000)) ExtraTag,
	cast(EXTRAQUANTITY as nvarchar(4000)) ExtraQuantity,
	ACTIVE Active,
	FEETYPECREDENTIALEXTRAID FeeTypeCredentialExtraID,
	EXTRA_ELEMENT_ID Extra_Element_ID,
	FEETYPE_CREDENTIAL_ID FeeType_Credential_ID
From Auct_CredentialExtras_Raw