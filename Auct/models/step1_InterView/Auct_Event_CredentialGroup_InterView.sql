{{ config(materialized='view',schema='stg')}}
Select
	[CREDENTIALGROUPID] [CredentialGroupID],
	[ACTIVE] [Active],
	[ISDEFAULT] [IsDefault],
	[EXTERNALEVENTID] [ExternalEventID],
	[AUCTIONID] [AuctionID]
From stg.[Auct_Event_CredentialGroup_Raw]
