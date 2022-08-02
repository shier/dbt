{{ config(materialized='view',schema='stg')}}
Select
	[CredentialDisbursementID],[DisbursedFromContactID],[CredentialSequenceNumber],[DisbursedByUserID],[DisbursedByUserName],[DisbursementDate],[CredentialTypeID],[CredentialTypeName],[PulseEventID],[AuctionID],[PulseOrderID],[DisbursedtoName] 
From stg.[Auct_CredentialDisbursement_Incr] 
Where [dbt_valid_to] is null