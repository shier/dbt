
Select
	[ID],[State],[ZipCode],[Country],[Aboutus],[LogoURL],[CompanyURL],[CompanyName],[TelePhone],[Email],[Address1],[Address2],[City],[BuyerInquiryEmailAddress],[CompanyDescription],[DisableFirstAlerts],[BuyerInquiry_IncludeADF],[DashboardLock],[WhiteListedForAHNominations],[OptOutAHNominationAlerts],[BlacklistedForAHNominations],[IsActive],[OptinThirdParty],[DisableImmediateSavedSearches],[DisabledailySavedSearches],[Latitude],[Longitude],[CreateDate],[ModifyDate],[BuyerInquiry_AdfOptionID],[CompanyTypeID],[MaxActiveListings],[MaxFeaturedListings],[ImageSortType],[ListingPaymentType],[OverrideMAxActiveAlertCount] 
From stg.[CC_Company_Incr] 
Where [dbt_valid_to] is null