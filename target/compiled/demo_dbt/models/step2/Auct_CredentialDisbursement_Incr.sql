
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(DisbursedFromContactID as varchar), Cast(DisbursedByUserID as varchar), Cast(CredentialTypeID as varchar), Cast(PulseEventID as varchar), Cast(AuctionID as varchar), Cast(PulseOrderID as varchar), Cast(DisbursementDate as varchar), CredentialSequenceNumber, DisbursedByUserName, CredentialTypeName, DisbursedtoName)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_CredentialDisbursement_Inter]
	)
Select * From hashData
