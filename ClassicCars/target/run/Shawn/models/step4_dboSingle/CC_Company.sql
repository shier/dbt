
  
  if object_id ('"dbo"."CC_Company__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Company__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_Company__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_Company__dbt_tmp"
    end


   EXEC('create view dbo.CC_Company__dbt_tmp_temp_view as
    
Select
	cast([IsActive] as bit) [IsActive_Company],
	cast([OptinThirdParty] as bit) [IsOptInThirdParty],
	cast([DisableImmediateSavedSearches] as bit) [HasDisableImmediateSavedSearches],
	cast([BlacklistedForAHNominations] as bit) [IsBlacklistedForAHNominations],
	cast([DisabledailySavedSearches] as bit) [DisabledailySavedSearches],
	cast([DisableFirstAlerts] as bit) [DisableFirstAlerts],
	cast([BuyerInquiry_IncludeADF] as bit) [HasBuyerInquiryIncludeADF],
	cast([DashboardLock] as bit) [HasDashboardLock],
	cast([WhiteListedForAHNominations] as bit) [IsWhitelistedForAHNominations],
	cast([OptOutAHNominationAlerts] as bit) [IsOptOutAHNominationAlerts],
	cast([Latitude] as varchar(128)) [Latitude],
	cast([Longitude] as varchar(128)) [Longitude],
	cast([ID] as int) [CompanyID],
	cast([CreateDate] as datetime) [Created_Company],
	cast([ModifyDate] as datetime) [ModifiedDate_Company],
	cast([BuyerInquiry_AdfOptionID] as int) [BuyerInquiryADFOptionID],
	cast([CompanyTypeID] as int) [CompanyTypeID],
	cast([MaxActiveListings] as int) [MaxActiveListings],
	cast([MaxFeaturedListings] as int) [MaxFeaturedListings],
	cast([ImageSortType] as int) [ImageSortType],
	cast([ListingPaymentType] as int) [ListingPaymentTypeID],
	cast([OverrideMAxActiveAlertCount] as int) [OverrideMaxActiveAlertCount],
	cast([CompanyName] as nvarchar(500)) [CompanyName],
	cast([TelePhone] as nvarchar(40)) [PhoneNumber],
	cast([Country] as nvarchar(100)) [Country],
	cast([Aboutus] as nvarchar(4000)) [AboutUs],
	cast([LogoURL] as nvarchar(2048)) [LogoURL],
	cast([CompanyURL] as nvarchar(2048)) [CompanyURL],
	cast([BuyerInquiryEmailAddress] as nvarchar(500)) [BuyerInquiryEmail],
	cast([CompanyDescription] as nvarchar(4000)) [CompanyDescription],
	cast([Email] as nvarchar(320)) [Email_Company],
	cast([Address1] as nvarchar(256)) [Address1],
	cast([Address2] as nvarchar(256)) [Address2],
	cast([City] as nvarchar(100)) [City],
	cast([State] as nvarchar(50)) [State],
	cast([ZipCode] as nvarchar(50)) [PostalCode] 
From stg.[CC_Company_FinalView]
    ');

  CREATE TABLE "dbo"."CC_Company__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_Company__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_Company__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Company__dbt_tmp_temp_view"
    end


