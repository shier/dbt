{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([ID] as varchar), Cast([CompanyID] as varchar), Cast([UserCreationSourceID] as varchar), Cast([CreateDate] as varchar), Cast([ModifyDate] as varchar), Cast([PasswordResetDate] as varchar), Cast([TwoFactorResetDate] as varchar), [SessionToken], [Email], [FirstName], [LastName], [DataTokenID], [PasswordResetToken], [TwoFactorToken], Cast([IsActive] as varchar), Cast([EmailConfirmed] as varchar), Cast([UseTwoFactor] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[CC_User_InterView]
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