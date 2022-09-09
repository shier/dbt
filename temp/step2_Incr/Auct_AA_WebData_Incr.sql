{{ config(materialized='incremental',schema='stg')}}
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([CarInfoID] as varchar), [Horsepower], Cast([OriginalHorsepower] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_AA_WebData_InterView]
	)
Select * From hashData
{% if is_incremental() %}
	where not exists 
	(
		select hashValue 
		from {{ this }} compareData
		where hashData.hashValue=compareData.hashValue
	)
{% endif %}
