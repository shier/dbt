{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([SearchHistoryPK] as varchar), Cast([PageNumber] as varchar), Cast([PageSize] as varchar), Cast([UserFK] as varchar), Cast([YearFrom] as varchar), Cast([Yearto] as varchar), Cast([Distance] as varchar), Cast([SearchDateUTC] as varchar), Cast([VehicleTypeFK] as varchar), Cast([Year] as varchar), Cast([SortAscending] as varchar), Cast([IncludePrivate] as varchar), Cast([IncludeDealer] as varchar), Cast([IncludeAuction] as varchar), Cast([CausedBackofftoHAppen] as varchar), Cast([WasExeCutedDuetoBackoff] as varchar), Cast([PriceFrom] as varchar), Cast([Priceto] as varchar), [SortTerm], [DataTokenID], [IpAddress], [UserAgent], [Make], [Model], [Country], [State], [ZipCode], [SearchTerms])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[CC_SearchHistory_InterView]
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
