
  
  if object_id ('"stg"."CC_Company_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Company_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_Company_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_Company_Final__dbt_tmp"
    end


   EXEC('create view stg.CC_Company_Final__dbt_tmp_temp_view as
    
Select
	[ID],[IsActive],[OptinThirdParty],[DisableImmediateSavedSearches],[BlacklistedForAHNominations],[DisabledailySavedSearches],[DisableFirstAlerts],[BuyerInquiry_IncludeADF],[DashboardLock],[WhiteListedForAHNominations],[OptOutAHNominationAlerts],[Latitude],[Longitude],[CreateDate],[ModifyDate],[BuyerInquiry_AdfOptionID],[CompanyTypeID],[MaxActiveListings],[MaxFeaturedListings],[ImageSortType],[ListingPaymentType],[OverrideMAxActiveAlertCount],[CompanyName],[TelePhone],[Country],[Aboutus],[LogoURL],[CompanyURL],[BuyerInquiryEmailAddress],[CompanyDescription],[Email],[Address1],[Address2],[City],[State],[ZipCode] 
From stg.[CC_Company_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."CC_Company_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_Company_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_Company_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Company_Final__dbt_tmp_temp_view"
    end


