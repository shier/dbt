
Select
	CREDENTIALDISBURSEMENTID CredentialDisbursementID,
	DISBURSEDFROMCONTACTID DisbursedFromContactID,
	DISBURSEDBYUSERID DisbursedByUserID,
	CREDENTIALTYPEID CredentialTypeID,
	PULSEEVENTID PulseEventID,
	AUCTIONID AuctionID,
	PULSEORDERID PulseOrderID,
	DISBURSEMENTDATE DisbursementDate,
	cast(CREDENTIALSEQUENCENUMBER as nvarchar(4000)) CredentialSequenceNumber,
	cast(DISBURSEDBYUSERNAME as nvarchar(4000)) DisbursedByUserName,
	cast(CREDENTIALTYPENAME as nvarchar(4000)) CredentialTypeName,
	cast(DISBURSEDTONAME as nvarchar(4000)) DisbursedtoName
From Auct_CredentialDisbursement_Raw