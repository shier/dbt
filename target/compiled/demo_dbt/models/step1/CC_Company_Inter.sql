
Select
	[Id] [ID],
	[IsActive] [IsActive],
	[OptInThirdParty] [OptinThirdParty],
	[DisableImmediateSavedSearches] [DisableImmediateSavedSearches],
	[BlacklistedForAHNominations] [BlacklistedForAHNominations],
	[DisableDailySavedSearches] [DisabledailySavedSearches],
	[DisableFirstAlerts] [DisableFirstAlerts],
	[BuyerInquiry_IncludeADF] [BuyerInquiry_IncludeADF],
	[DashboardLock] [DashboardLock],
	[WhitelistedForAHNominations] [WhiteListedForAHNominations],
	[OptOutAHNominationAlerts] [OptOutAHNominationAlerts],
	[Latitude] [Latitude],
	[Longitude] [Longitude],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	[BuyerInquiry_ADFOptionID] [BuyerInquiry_AdfOptionID],
	[CompanyTypeId] [CompanyTypeID],
	[MaxActiveListings] [MaxActiveListings],
	[MaxFeaturedListings] [MaxFeaturedListings],
	[ImageSortType] [ImageSortType],
	[ListingPaymentType] [ListingPaymentType],
	[OverrideMaxActiveAlertCount] [OverrideMAxActiveAlertCount],
	cast([CompanyName] as nvarchar(4000)) [CompanyName],
	cast([Telephone] as nvarchar(4000)) [TelePhone],
	cast([Country] as nvarchar(4000)) [Country],
	cast([AboutUs] as nvarchar(4000)) [Aboutus],
	cast([LogoUrl] as nvarchar(4000)) [LogoURL],
	cast([CompanyUrl] as nvarchar(4000)) [CompanyURL],
	cast([BuyerInquiryEmailAddress] as nvarchar(4000)) [BuyerInquiryEmailAddress],
	cast([CompanyDescription] as nvarchar(4000)) [CompanyDescription],
	cast([Email] as nvarchar(4000)) [Email],
	cast([Address1] as nvarchar(4000)) [Address1],
	cast([Address2] as nvarchar(4000)) [Address2],
	cast([City] as nvarchar(4000)) [City],
	cast([State] as nvarchar(4000)) [State],
	cast([ZipCode] as nvarchar(4000)) [ZipCode]
From stg.[CC_Company_Raw]