{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([HoldPackageatWillCall] as varchar), Cast([AuctionBidderID] as varchar), Cast([AuctionID] as varchar), Cast([BidderID] as varchar), Cast([AuctionBidderNumber] as varchar), Cast([RegistrationDate] as varchar), [Comments], Cast([Created] as varchar), Cast([UpdateEventID] as varchar), Cast([BankAccountID] as varchar), [Insurance], [DriverLicense], [DealerLicense], [TaxCertificate], [AuthBidLetter], [OwnershipLetter], [OtherLetter], [RockDoc], Cast([InsuranceExpire] as varchar), Cast([InsuranceID] as varchar), [MethODOfPayment], [RegistrationFee], [SignedAgreement], [PacketatWillCall], Cast([CreatedByUserID] as varchar), Cast([SkyBoxPassCount] as varchar), Cast([BidLimit] as varchar), Cast([BidderStatusID] as varchar), Cast([CompleteStatusBit] as varchar), [BidderRequestID], Cast([ShippingAddressID] as varchar), Cast([ContactPhoneID] as varchar), Cast([PaymentMethodID] as varchar), Cast([AddressID] as varchar), Cast([BidLimiTestimate] as varchar), [TrackingNumber], Cast([DocumentationBit] as varchar), Cast([AuctionBidderSourceID] as varchar), Cast([RegisteredOnlineBit] as varchar), Cast([ChargeCount] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_AuctionBidder_InterView]
	)
Select * From hashData
{% if is_incremental() %}
	where not exists 
	(
		select dbt_scd_id 
		from {{ this }} compareData
		where hashData.dbt_scd_id=compareData.dbt_scd_id
	)
{% endif %}
