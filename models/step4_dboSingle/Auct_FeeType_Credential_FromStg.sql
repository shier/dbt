{{ config(materialized='table',schema='dbo')}}
Select
	cast([CredentialID] as int) [CredentialID],
	cast([FeeType_Credential_ID] as int) [FeeType_Credential_ID],
	cast([FeeTypeID] as int) [FeeTypeID],
	cast([CredentialQuantity] as int) [CredentialQuantity],
	cast([CreatedByUserID] as int) [CreatedByUserID],
	cast([CreatedDate] as datetime) [CreatedDate],
	cast([QueueID] as int) [QueueID],
	cast([CredentialName] as nvarchar(4000)) [CredentialName],
	cast([Active] as bit) [Active] 
From stg.[Auct_FeeType_Credential_FinalView]