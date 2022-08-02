
      
  
  if object_id ('"stg"."CC_Company_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Company_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_Company_Incr"','U') is not null
    begin
    drop table "stg"."CC_Company_Incr"
    end


   EXEC('create view stg.CC_Company_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(State, ZipCode, Country, Aboutus, LogoURL, CompanyURL, CompanyName, TelePhone, Email, Address1, Address2, City, BuyerInquiryEmailAddress, CompanyDescription, Cast(DisableFirstAlerts as varchar), Cast(BuyerInquiry_IncludeADF as varchar), Cast(DashboardLock as varchar), Cast(WhiteListedForAHNominations as varchar), Cast(OptOutAHNominationAlerts as varchar), Cast(BlacklistedForAHNominations as varchar), Cast(IsActive as varchar), Cast(OptinThirdParty as varchar), Cast(DisableImmediateSavedSearches as varchar), Cast(DisabledailySavedSearches as varchar), Cast(Latitude as varchar), Cast(Longitude as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(BuyerInquiry_AdfOptionID as varchar), Cast(CompanyTypeID as varchar), Cast(MaxActiveListings as varchar), Cast(MaxFeaturedListings as varchar), Cast(ImageSortType as varchar), Cast(ListingPaymentType as varchar), Cast(OverrideMAxActiveAlertCount as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Company_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_Company_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_Company_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_Company_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Company_Incr_temp_view"
    end



  