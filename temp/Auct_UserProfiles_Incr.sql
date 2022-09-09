{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([UserProfileID] as varchar), [UserName], Cast([AuctionID] as varchar), Cast([SearchForID] as varchar), Cast([SearchByID] as varchar), Cast([DefaultConsignmentType] as varchar), Cast([UserID] as varchar), Cast([CurrentTaskCount] as varchar), Cast([Taskinterval] as varchar), Cast([PulseQueueID] as varchar), [SearchCustomerText], [SearchConsignmentText], [Signature], Cast([TaskautoUpdate] as varchar), Cast([Taskautoopen] as varchar), Cast([Taskplaysound] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_UserProfiles_InterView]
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
