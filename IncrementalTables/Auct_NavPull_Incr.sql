{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([DebitAMT] as varchar), Cast([Amount] as varchar), Cast([CreditAMT] as varchar), Cast([ID] as varchar), Cast([PostingDate] as varchar), Cast([Created] as varchar), [CustvEndID], [DocNumber], [BankAcctno], [Description], Cast([AuctionID] as varchar), [ProjectCode], Cast([Status] as varchar), [Import], [Hidden], Cast([EntryNumber] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_NavPull_InterView]
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
