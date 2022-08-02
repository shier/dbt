{{ config(materialized='view',schema='stg')}}
Select
	[FEETYPECREDENTIALEXTRAID] [FeeTypeCredentialExtraID],
	[ACTIVE] [Active],
	[EXTRA_ELEMENT_ID] [Extra_Element_ID],
	cast([EXTRATAG] as nvarchar(4000)) [ExtraTag],
	cast([EXTRAQUANTITY] as nvarchar(4000)) [ExtraQuantity],
	[FEETYPE_CREDENTIAL_ID] [FeeType_Credential_ID]
From stg.[Auct_FeeType_Credential_Extras_Raw]
