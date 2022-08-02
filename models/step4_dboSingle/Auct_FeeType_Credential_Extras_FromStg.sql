{{ config(materialized='table',schema='dbo')}}
Select
	cast([FeeTypeCredentialExtraID] as int) [FeeTypeCredentialExtraID],
	cast([Active] as bit) [Active],
	cast([Extra_Element_ID] as int) [Extra_Element_ID],
	cast([ExtraTag] as nvarchar(4000)) [ExtraTag],
	cast([ExtraQuantity] as nvarchar(4000)) [ExtraQuantity],
	cast([FeeType_Credential_ID] as int) [FeeType_Credential_ID] 
From stg.[Auct_FeeType_Credential_Extras_FinalView]