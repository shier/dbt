{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([DealerID] as varchar), [DealerNumber], [DealerState], [ReSaleNumber], [TaxIDNumber], [TaxIDsTage], Cast([Created] as varchar), Cast([UpdateEventID] as varchar), [DealerComment], Cast([DealernumExpire] as varchar), Cast([DeAlerTaxExpire] as varchar), [EmployeeIDNumber])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_Dealer_InterView]
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
