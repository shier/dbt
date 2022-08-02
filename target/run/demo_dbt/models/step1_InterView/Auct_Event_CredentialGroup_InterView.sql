create view "stg"."Auct_Event_CredentialGroup_InterView__dbt_tmp" as
    
Select
	[CREDENTIALGROUPID] [CredentialGroupID],
	[ACTIVE] [Active],
	[ISDEFAULT] [IsDefault],
	[EXTERNALEVENTID] [ExternalEventID],
	[AUCTIONID] [AuctionID]
From stg.[Auct_Event_CredentialGroup_Raw]
