{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([IsActive] as varchar), Cast([OptinThirdParty] as varchar), Cast([DisableImmediateSavedSearches] as varchar), Cast([BlacklistedForAHNominations] as varchar), Cast([DisabledailySavedSearches] as varchar), Cast([DisableFirstAlerts] as varchar), Cast([BuyerInquiry_IncludeADF] as varchar), Cast([DashboardLock] as varchar), Cast([WhiteListedForAHNominations] as varchar), Cast([OptOutAHNominationAlerts] as varchar), Cast([Latitude] as varchar), Cast([Longitude] as varchar), Cast([ID] as varchar), Cast([CreateDate] as varchar), Cast([ModifyDate] as varchar), Cast([BuyerInquiry_AdfOptionID] as varchar), Cast([CompanyTypeID] as varchar), Cast([MaxActiveListings] as varchar), Cast([MaxFeaturedListings] as varchar), Cast([ImageSortType] as varchar), Cast([ListingPaymentType] as varchar), Cast([OverrideMAxActiveAlertCount] as varchar), [CompanyName], [TelePhone], [Country], [Aboutus], [LogoURL], [CompanyURL], [BuyerInquiryEmailAddress], [CompanyDescription], [Email], [Address1], [Address2], [City], [State], [ZipCode])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[CC_Company_InterView]
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
