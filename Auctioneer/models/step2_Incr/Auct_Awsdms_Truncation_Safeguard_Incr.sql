{{ config(materialized='incremental',schema='stg')}}
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([LatchTaskName], [LatchMachineGUID], [LatchKey], Cast([LatchLocker] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Awsdms_Truncation_Safeguard_InterView]
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
