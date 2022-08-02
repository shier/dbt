{{ config(materialized='table',schema='dbo')}}
Select
	cast([CredentialGroupID] as int) [CredentialGroupID],
	cast([Active] as bit) [Active],
	cast([IsDefault] as bit) [IsDefault],
	cast([ExternalEventID] as int) [ExternalEventID],
	cast([AuctionID] as int) [AuctionID] 
From stg.[Auct_Event_CredentialGroup_FinalView]