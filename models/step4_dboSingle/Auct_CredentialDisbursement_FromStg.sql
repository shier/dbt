{{ config(materialized='table',schema='dbo')}}
Select
	cast([CredentialDisbursementID] as int) [CredentialDisbursementID],
	cast([DisbursedFromContactID] as int) [DisbursedFromContactID],
	cast([CredentialSequenceNumber] as nvarchar(4000)) [CredentialSequenceNumber],
	cast([DisbursedByUserID] as int) [DisbursedByUserID],
	cast([DisbursedByUserName] as nvarchar(4000)) [DisbursedByUserName],
	cast([DisbursementDate] as DATETIME) [DisbursementDate],
	cast([CredentialTypeID] as int) [CredentialTypeID],
	cast([CredentialTypeName] as nvarchar(4000)) [CredentialTypeName],
	cast([PulseEventID] as int) [PulseEventID],
	cast([AuctionID] as int) [AuctionID],
	cast([PulseOrderID] as int) [PulseOrderID],
	cast([DisbursedtoName] as nvarchar(4000)) [DisbursedToName] 
From stg.[Auct_CredentialDisbursement_FinalView]