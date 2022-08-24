{{ config(materialized='view',schema='stg')}}
Select
	[CREDENTIALDISBURSEMENTID] [CredentialDisbursementID],
	[DISBURSEDFROMCONTACTID] [DisbursedFromContactID],
	cast([CREDENTIALSEQUENCENUMBER] as nvarchar(4000)) [CredentialSequenceNumber],
	[DISBURSEDBYUSERID] [DisbursedByUserID],
	cast([DISBURSEDBYUSERNAME] as nvarchar(4000)) [DisbursedByUserName],
	[DISBURSEMENTDATE] [DisbursementDate],
	[CREDENTIALTYPEID] [CredentialTypeID],
	cast([CREDENTIALTYPENAME] as nvarchar(4000)) [CredentialTypeName],
	[PULSEEVENTID] [PulseEventID],
	[AUCTIONID] [AuctionID],
	[PULSEORDERID] [PulseOrderID],
	cast([DISBURSEDTONAME] as nvarchar(4000)) [DisbursedtoName]
From stg.[Auct_CredentialDisbursement_Raw]
