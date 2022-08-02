
Select
	CREATED Created,
	MEDIACREDENTIALID MediaCredentialID,
	MEDIAAUCTIONID MediaAuctionID,
	UPDATEEVENTID UpdateEventID,
	cast(CREDENTIALNUMBER as nvarchar(4000)) CredentialNumber
From Auct_MediaCredential_Raw