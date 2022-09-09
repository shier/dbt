{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat([BuilDType], [DeviceTypeName], [ID], [MerchantID], [Name], [Model], [Serial], [SecureID], Cast([CreatedDate] as varchar), Cast([Updateddate] as varchar), Cast([RemovedDate] as varchar), Cast([PinDisabled] as varchar), Cast([OffLinePayments] as varchar), Cast([OffLinePaymentsall] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Mer_Terminals_InterView]
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
