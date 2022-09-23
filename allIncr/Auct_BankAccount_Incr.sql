{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([AccountTypeID] as varchar), Cast([BankAccountID] as varchar), Cast([AddressID] as varchar), [AccountNumber], Cast([Expiration] as varchar), [BankContact], Cast([OwnerCustomerAccountID] as varchar), Cast([BankAccountStatusID] as varchar), Cast([Created] as varchar), Cast([UpdateEventID] as varchar), [MbnaAccount1], [MbnaAccount2], [MbnaAccount3], Cast([PhoneID] as varchar), Cast([FaxID] as varchar), [BankName], [Active])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_BankAccount_InterView]
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
