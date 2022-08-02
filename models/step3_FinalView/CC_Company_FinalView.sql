{{ config(materialized='view',schema='stg')}}
Select
	[ID],[IsActive],[OptinThirdParty],[DisableImmediateSavedSearches],[BlacklistedForAHNominations],[DisabledailySavedSearches],[DisableFirstAlerts],[BuyerInquiry_IncludeADF],[DashboardLock],[WhiteListedForAHNominations],[OptOutAHNominationAlerts],[Latitude],[Longitude],[CreateDate],[ModifyDate],[BuyerInquiry_AdfOptionID],[CompanyTypeID],[MaxActiveListings],[MaxFeaturedListings],[ImageSortType],[ListingPaymentType],[OverrideMAxActiveAlertCount],[CompanyName],[TelePhone],[Country],[Aboutus],[LogoURL],[CompanyURL],[BuyerInquiryEmailAddress],[CompanyDescription],[Email],[Address1],[Address2],[City],[State],[ZipCode] 
From stg.[CC_Company_Incr] 
Where [dbt_valid_to] is null