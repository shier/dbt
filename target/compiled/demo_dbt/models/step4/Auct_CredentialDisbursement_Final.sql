
Select
	[CredentialDisbursementID],[DisbursedFromContactID],[DisbursedByUserID],[CredentialTypeID],[PulseEventID],[AuctionID],[PulseOrderID],[DisbursementDate],[CredentialSequenceNumber],[DisbursedByUserName],[CredentialTypeName],[DisbursedtoName] 
From stg.[Auct_CredentialDisbursement_Incr] 
Where [dbt_valid_to] is null