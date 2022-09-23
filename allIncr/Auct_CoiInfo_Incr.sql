{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([CoiInfoID] as varchar), Cast([CustomerAccountID] as varchar), Cast([AuctionID] as varchar), [GeneralLiability], [Additionalinsured], [CorrectLimits], [AuctionDates], [AutoInsurance], [Waivers], [Damage], [WorkersComp], [Policy], [InsuranceCompany], [InsuranceContact], [InsurancePhone], [InsuranceFax], [Comments], Cast([Created] as varchar), Cast([UpdateEventID] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_CoiInfo_InterView]
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
