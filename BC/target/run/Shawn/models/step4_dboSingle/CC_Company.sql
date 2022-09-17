
  
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
	cast([IsActive] as bit) [IsActive],
	cast([OptinThirdParty] as bit) [OptInThirdParty],
	cast([DisableImmediateSavedSearches] as bit) [DisableImmediateSavedSearches],
	cast([BlacklistedForAHNominations] as bit) [BlacklistedForAHNominations],
	cast([DisabledailySavedSearches] as bit) [DisableDailySavedSearches],
	cast([DisableFirstAlerts] as bit) [DisableFirstAlerts],
	cast([BuyerInquiry_IncludeADF] as bit) [BuyerInquiry_IncludeADF],
	cast([DashboardLock] as bit) [DashboardLock],
	cast([WhiteListedForAHNominations] as bit) [WhitelistedForAHNominations],
	cast([OptOutAHNominationAlerts] as bit) [OptOutAHNominationAlerts],
	cast([Latitude] as varchar(128)) [Latitude],
	cast([Longitude] as varchar(128)) [Longitude],
	cast([ID] as int) [Id],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([BuyerInquiry_AdfOptionID] as int) [BuyerInquiry_ADFOptionID],
	cast([CompanyTypeID] as int) [CompanyTypeId],
	cast([MaxActiveListings] as int) [MaxActiveListings],
	cast([MaxFeaturedListings] as int) [MaxFeaturedListings],
	cast([ImageSortType] as int) [ImageSortType],
	cast([ListingPaymentType] as int) [ListingPaymentType],
	cast([OverrideMAxActiveAlertCount] as int) [OverrideMaxActiveAlertCount],
	cast([CompanyName] as nvarchar(500)) [CompanyName],
	cast([TelePhone] as nvarchar(40)) [Telephone],
	cast([Country] as nvarchar(100)) [Country],
	cast([Aboutus] as nvarchar(4000)) [AboutUs],
	cast([LogoURL] as nvarchar(2048)) [LogoUrl],
	cast([CompanyURL] as nvarchar(2048)) [CompanyUrl],
	cast([BuyerInquiryEmailAddress] as nvarchar(500)) [BuyerInquiryEmailAddress],
	cast([CompanyDescription] as nvarchar(4000)) [CompanyDescription],
	cast([Email] as nvarchar(320)) [Email],
	cast([Address1] as nvarchar(256)) [Address1],
	cast([Address2] as nvarchar(256)) [Address2],
	cast([City] as nvarchar(100)) [City],
	cast([State] as nvarchar(50)) [State],
	cast([ZipCode] as nvarchar(50)) [ZipCode] 
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


