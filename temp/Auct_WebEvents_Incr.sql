{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([Latitude] as varchar), Cast([Longitude] as varchar), [EventID], [Address], [City], [State], [PostalCode], [SiteMapImageURL], [SiteMapPdfURL], [GooglEMapdirectionURL], Cast([WeatherLocationID] as varchar), [VenueName], Cast([VenueStartDate] as varchar), Cast([VenueEndDate] as varchar), [VenueImage], [VendorSiteMapPdfURL], [TicketPackageURL], Cast([EventStatusBit] as varchar), [EventName], [EventURLName], [HotelsForHopeID], [VipPackagePageName], [AuctionProject], Cast([AcceptingApplicationsBit] as varchar), [BlockLiveStreamID], [LivesTageStreamID], [BlockLiveStreamlsembedID], [LivesTageStreamlsembedID], [AcceptingConsignmentsMessage], [CDNBaseURL], [LivesTagePageURL], [ModifiedByUserName], Cast([ModifiedDateTime] as varchar), [License], Cast([EventTypeID] as varchar), [MapdirectionImageURL])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_WebEvents_InterView]
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
