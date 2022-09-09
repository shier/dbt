{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([Active] as varchar), Cast([ParkingPassissued] as varchar), Cast([MediaAttendeeID] as varchar), Cast([MediaOrganizationID] as varchar), [Name], [Title], [StoryDescription], [EmailAddress], [CredentialNumber], [CoverageStarts], Cast([Import] as varchar), Cast([MediaAttendeeStatusID] as varchar), [MediaAttendeeGUID], Cast([Created] as varchar), Cast([ModifiedDate] as varchar), Cast([ModifiedByUserID] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_MediaAttendee_InterView]
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
