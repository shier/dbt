{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([UsersID] as varchar), [Name], [EmailAddress], [Password], Cast([QuestionID] as varchar), [SecretAnswer], Cast([LastLoggedin] as varchar), Cast([LastActivity] as varchar), [Enabled], [Reason], [WinLogon], [WinDomain], Cast([Created] as varchar), Cast([UpdateEventID] as varchar), [SMSNotificationNumber], Cast([SMSNotificationBit] as varchar), Cast([DepartmentID] as varchar), [Phone1], [Phone2], [Title], [DeScripton], [Address], [City], [State], [PostalCode])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_Users_InterView]
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
