
Select
	cast([Active] as bit) [ACTIVE],
	cast([IsDefault] as bit) [ISDEFAULT],
	cast([ExternalEventID] as int) [EXTERNALEVENTID],
	cast([CredentialGroupID] as int) [CREDENTIALGROUPID],
	cast([AuctionID] as int) [AUCTIONID] 
From stg.[Auct_Event_CredentialGroup_FinalView]