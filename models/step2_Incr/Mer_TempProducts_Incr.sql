{{ config(materialized='incremental',schema='stg')}}
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([UnitPrice] as varchar), [No_], [No_2], [Description], [Description2], [BaseUnitofMeasure], [ItemCategoryCode])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_TempProducts_InterView]
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
