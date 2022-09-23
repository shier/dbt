{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat([IpAddress], [Browser], [FirstName], [LastName], [Email], [Phone], [Message], [UserAgent], Cast([ID] as varchar), Cast([ListingID] as varchar), Cast([EmailFilterCodeID] as varchar), Cast([WantsNewsLetter] as varchar), Cast([WantsrrcInfo] as varchar), Cast([IsActive] as varchar), Cast([EmailProcessed] as varchar), Cast([CopyProcessed] as varchar), Cast([FollowupProcessed] as varchar), Cast([CreateDate] as varchar), Cast([ModifyDate] as varchar), Cast([EmailSentUTC] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[CC_BuyerInquiry_InterView]
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
