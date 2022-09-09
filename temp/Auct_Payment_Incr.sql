{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([PaymentID] as varchar), Cast([PaymentMethodID] as varchar), Cast([PaymentDate] as varchar), Cast([BankAccountID] as varchar), [PaymentNumber], [PaymentCleared], [Comments], Cast([Created] as varchar), Cast([UpdateEventID] as varchar), Cast([InvoiceID] as varchar), [IsLotPayment], Cast([ClearedDate] as varchar), Cast([RefundedByPaymentID] as varchar), Cast([RefundedPaymentID] as varchar), Cast([RefundApprovedByUserID] as varchar), Cast([AmountPaID] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_Payment_InterView]
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
