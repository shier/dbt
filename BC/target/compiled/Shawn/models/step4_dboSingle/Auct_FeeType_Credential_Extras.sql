
Select
	cast([Active] as bit) [ACTIVE],
	cast([FeeTypeCredentialExtraID] as int) [FEETYPECREDENTIALEXTRAID],
	cast([Extra_Element_ID] as int) [EXTRA_ELEMENT_ID],
	cast([ExtraTag] as nvarchar(4000)) [EXTRATAG],
	cast([ExtraQuantity] as nvarchar(4000)) [EXTRAQUANTITY],
	cast([FeeType_Credential_ID] as int) [FEETYPE_CREDENTIAL_ID] 
From stg.[Auct_FeeType_Credential_Extras_FinalView]