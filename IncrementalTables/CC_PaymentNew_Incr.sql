{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat([GatewayMessage], Cast([DiscountAmount] as varchar), [LineItemDescription], [CustomerIP], [Email], [Telephone], [ZipCode], [LastName], [FirstName], Cast([ListingID] as varchar), [PaymentStatus], [ErrorTransactionID], Cast([ErrorCode] as varchar), [TransactionID], Cast([ResponseReasonCode] as varchar), Cast([ResponseCode] as varchar), [AuthorizationCode], Cast([IsApproved] as varchar), [PayerId], [Token], Cast([CardLastFour] as varchar), Cast([Year] as varchar), Cast([Month] as varchar), [CardCountry], [CardState], [Address2], [CardAddress], [CardCity], [CardName], Cast([Success] as varchar), Cast([ChargeAmount] as varchar), Cast([OrderDiscount] as varchar), Cast([OrderTotal] as varchar), Cast([CouponID] as varchar), Cast([PaymentTypeID] as varchar), Cast([UserID] as varchar), Cast([IsActive] as varchar), Cast([ModifyDate] as varchar), Cast([CreateDate] as varchar), Cast([ID] as varchar), Cast([ID] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[CC_PaymentNew_InterView]
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
