
Select
	cast([CredentialDisbursementID] as int) [CREDENTIALDISBURSEMENTID],
	cast([DisbursedFromContactID] as int) [DISBURSEDFROMCONTACTID],
	cast([CredentialSequenceNumber] as nvarchar(4000)) [CREDENTIALSEQUENCENUMBER],
	cast([DisbursedByUserID] as int) [DISBURSEDBYUSERID],
	cast([DisbursedByUserName] as nvarchar(4000)) [DISBURSEDBYUSERNAME],
	cast([DisbursementDate] as DATETIME) [DISBURSEMENTDATE],
	cast([CredentialTypeID] as int) [CREDENTIALTYPEID],
	cast([CredentialTypeName] as nvarchar(4000)) [CREDENTIALTYPENAME],
	cast([PulseEventID] as int) [PULSEEVENTID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([PulseOrderID] as int) [PULSEORDERID],
	cast([DisbursedtoName] as nvarchar(4000)) [DISBURSEDTONAME] 
From stg.[Auct_CredentialDisbursement_FinalView]