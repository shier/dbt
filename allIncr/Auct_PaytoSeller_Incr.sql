{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([PaytoSellerID] as varchar), [AccountingID], [SellerName], [LotsPurchased], Cast([VerifiedByUserID] as varchar), [VerfiedByUserName], [PaymentTypeName], [CompanyName], [Address], [Notes], Cast([LotNumber] as varchar), Cast([Hammer] as varchar), Cast([SellerCommission] as varchar), Cast([SellerCommissionPercent] as varchar), Cast([FeeTotal] as varchar), Cast([PaidFromescrow] as varchar), Cast([TotalowedtoSeller] as varchar), Cast([AmountPaidtoSeller] as varchar), Cast([TitleReceived] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_PaytoSeller_InterView]
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
