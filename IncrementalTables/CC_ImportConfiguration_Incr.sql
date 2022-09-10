{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([CompanyID] as varchar), Cast([FileSize_kBytes] as varchar), Cast([Totalentries] as varchar), Cast([ValIDEntries] as varchar), Cast([Completedentries] as varchar), Cast([ActiveFromUTC] as varchar), Cast([ActivetOutC] as varchar), Cast([LastSuccessFileTimeStamp] as varchar), Cast([LastSuccessCompletedUTC] as varchar), Cast([FileTimeStamp] as varchar), Cast([CycleStart] as varchar), Cast([CycleEnd] as varchar), Cast([AllowLinksinDescriptions] as varchar), Cast([SkipMakeModelVerification] as varchar), [FileName])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[CC_ImportConfiguration_InterView]
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
