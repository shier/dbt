{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([Amount] as varchar), Cast([EnvelopeNumber] as varchar), Cast([BidLimitDepositID] as varchar), Cast([PaymentMethodID] as varchar), Cast([PaymentDate] as varchar), [PaymentNumber], [PaymentCleared], Cast([ClearedDate] as varchar), [Comments], Cast([BidderID] as varchar), Cast([AuctionID] as varchar), Cast([Created] as varchar), Cast([UpdateEventID] as varchar), [ConfirmIDEntification], [ReceivedSignature], [ConfirmedCount], [NoPurchase], [ReturnedOnSite], [Depositcashiering], [Depositmailed], [Mailedhome], [MailedBusiness], [MailedOther], [ReturnedOnSiteText], [DepositcashieringText], [ReturnedComments], Cast([ReturnedDate] as varchar), Cast([ReturnedUsersID] as varchar), Cast([PaymentID] as varchar), Cast([InvoiceID] as varchar), Cast([RefundedByBidLimitDepositID] as varchar), Cast([RefundedBidLimitDepositID] as varchar), Cast([BidLimitDepositReturnTypeID] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_BidLimitDeposit_InterView]
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
