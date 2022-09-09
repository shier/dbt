{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([ID] as varchar), Cast([BillingAddressID] as varchar), Cast([BillingCreditCardID] as varchar), Cast([PrimaryAddressID] as varchar), Cast([AccessfailedCount] as varchar), Cast([IsApproved] as varchar), Cast([IsLockedOut] as varchar), Cast([NewsLetter] as varchar), Cast([IsVerified] as varchar), Cast([IsActive] as varchar), Cast([EmailConfirmed] as varchar), Cast([PhoneNumberConfirmed] as varchar), Cast([TwoFactorEnabled] as varchar), Cast([LockOutEnabled] as varchar), Cast([WebapiEnabled] as varchar), Cast([CreationDate] as varchar), Cast([LastLoginDate] as varchar), Cast([LastActivityDate] as varchar), Cast([CreatedOn] as varchar), Cast([UpdatedOn] as varchar), Cast([DeletedOn] as varchar), Cast([LockOutEndDateUTC] as varchar), [UserName], [Email], [Password], [Comment], [LastUpdatedUser], [Culture], [Lastip], [VerificationToken], [PasswordResetToken], [ServiceAuthorizationToken], [PasswordHash], [SecURItyStamp], [PhoneNumber])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[AH_Users_InterView]
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
