{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([MediaOrganizationID] as varchar), [MediaOrganizationGUID], Cast([PrimaryMediaAttendeeID] as varchar), Cast([AuctionID] as varchar), [Name], Cast([IsAttending] as varchar), [Phone], [Fax], [WebSite], [Address1], [Address2], [City], [State], [PostalCode], Cast([PhotosPublished] as varchar), [PriorCoverage], Cast([MediaTypeID] as varchar), Cast([DistributionTypeID] as varchar), [Circulation], Cast([AudienceTypeID] as varchar), Cast([Import] as varchar), [CountryID], Cast([Created] as varchar), Cast([Active] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_MediaOrganization_InterView]
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
