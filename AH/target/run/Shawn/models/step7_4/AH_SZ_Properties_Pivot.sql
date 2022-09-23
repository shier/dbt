
  
  if object_id ('"stg"."AH_SZ_Properties_Pivot__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_SZ_Properties_Pivot__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_SZ_Properties_Pivot__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_SZ_Properties_Pivot__dbt_tmp"
    end


   EXEC('create view stg.AH_SZ_Properties_Pivot__dbt_tmp_temp_view as
    









    

    

 







    
    

 

WITH pivot_data_input AS
(
    SELECT 
        listingid, -- Grouping Column
        customfieldname, -- Spreading Column
        customfieldvalue -- Aggregate Column
    FROM [stg].[AH_SZ_AllProperties_One_Column] 
        -- [TEST] where listingid = 10023682
),
pivoted_data AS
(
    SELECT 
        listingid, [Specialist_Section_Notes], [Era], [Acct_Rep_Phone], [Photo_Plan], [IsEdited], [AddressLine2], [PremiumListing], [IsPaid], [LockUsername], [Specialist_Section_Comp5_Info], [CarfaxPassFailError], [LeadSource], [Specialist_Section_Comp2_Info], [WGL_Public_Report], [Specialist_Section_Comp3_Info], [HasMagicBox], [StateProvinceRegion], [EstimatedMarketValue], [ListingState], [VehicleStoryDescriptionExterior2], [Commission], [MagicBoxSection1], [PersonalMileage], [VehicleStoryDescriptionUndercarriage], [CarfaxLink], [HideListing], [TargetReserve], [IsApproved], [ReservePrice], [Copy_Writer_Status], [VehicleStoryDescriptionCarFaxPictures], [VehicleStoryDescriptionExteriorPictures], [UI_ListingStateHold], [Specialist_Section_Comp5_Price], [Model], [BuyItNow], [Comped], [MagicBoxSection5], [MagicBoxSection6], [ReserveReviewEmailDate], [NoReserveCheck], [BuyItNowUsed], [DealerName], [Mileage], [OdometerUnits], [CCID], [Acct_Rep], [Taxonomy], [VehicleStoryDescriptionInterior2], [VehicleStoryDescriptionInteriorPictures], [CarfaxPassFail], [Utm_Medium_Listing_Submission], [Acct_Rep_Name], [PaintWork], [IsFeaturedVehicle], [BeenListed], [VehicleStoryDescriptionCarFax], [AnythingElseWeShouldKnow], [Photo_Plan_Status], [Curated], [VehicleStoryOpeningStatementPictures], [DraftEmailNotificationSent], [Utm_Campaign_Listing_Submission], [IsTaxable], [Transmission], [BeenModified], [Rust], [CaliforniaSmogCheck], [Modifications], [ServiceRecords], [MagicBoxSection3], [MakeOfferAvailable], [VehicleStoryDescriptionInterior2Pictures], [Specialist_Section_Comp1_Info], [CounterReserve], [VehicleStory], [VehicleColor], [Decade], [DealerURL], [Specialist_Section_Comp4_Info], [OriginalEngineText], [HasProMarketing], [UserComments], [PackageTransactionId], [Specialist_Section_Comp4_Price], [Specialist_Section_Comp1_Price], [Copy_Writer_Feedback], [BeenListedText], [VIN], [CountryOfOrigin], [MagicBoxSection4], [Specialist_Section_Comp2_Price], [SnapprPackage], [StartingBid], [FixedPrice], [OriginalEngine], [VehicleTitle], [VehicleStoryDescriptionExterior2Pictures], [WhereDidYouHearAboutUsListingOther], [Specialist_Section_Original_Reserve], [HowLongOwned], [ExpertVideoReview], [Copy_Writer], [SchedulingComplete], [MagicBoxSection2], [HasProPhotography], [ListingNotes], [MakeWholeAmount], [HasDealerFee], [Utm_Source_Listing_Submission], [CurrentIssues], [ListingProgress], [IsPromoVehicle], [VehicleStoryDescriptionUndercarriagePictures], [WhereDidYouHearAboutUsListingReferral], [Year], [WhereDidYouHearAboutUsListing], [Make], [CityCL], [Address], [MaxReserve], [Acct_Rep_Email], [CarTitleInYourName], [Specialist_Section_Comp3_Price], [LastServiceInformation], [CommissionOverrideReason], [CountryCL], [DealerFees], [EngineSize], [Zip], [VehicleStoryDescriptionInterior], [MarketValue], [VehicleStoryDescriptionEngineTransmissionPictures], [TransmissionText], [TransactionId], [Specialist], [VehicleStoryDescriptionEngineTransmission], [VehicleStoryOpeningStatement], [ReservePriceCL], [MakeOfferAllowed], [MileageAccurate], [PhotoPlanId], [SpinCarLink], [HaveAllPhotos], [VehicleStoryDescriptionExterior], [PaintWorkText], [Dealer]
    FROM pivot_data_input
    PIVOT (
        max(customfieldvalue) for customfieldname in ( [Specialist_Section_Notes], [Era], [Acct_Rep_Phone], [Photo_Plan], [IsEdited], [AddressLine2], [PremiumListing], [IsPaid], [LockUsername], [Specialist_Section_Comp5_Info], [CarfaxPassFailError], [LeadSource], [Specialist_Section_Comp2_Info], [WGL_Public_Report], [Specialist_Section_Comp3_Info], [HasMagicBox], [StateProvinceRegion], [EstimatedMarketValue], [ListingState], [VehicleStoryDescriptionExterior2], [Commission], [MagicBoxSection1], [PersonalMileage], [VehicleStoryDescriptionUndercarriage], [CarfaxLink], [HideListing], [TargetReserve], [IsApproved], [ReservePrice], [Copy_Writer_Status], [VehicleStoryDescriptionCarFaxPictures], [VehicleStoryDescriptionExteriorPictures], [UI_ListingStateHold], [Specialist_Section_Comp5_Price], [Model], [BuyItNow], [Comped], [MagicBoxSection5], [MagicBoxSection6], [ReserveReviewEmailDate], [NoReserveCheck], [BuyItNowUsed], [DealerName], [Mileage], [OdometerUnits], [CCID], [Acct_Rep], [Taxonomy], [VehicleStoryDescriptionInterior2], [VehicleStoryDescriptionInteriorPictures], [CarfaxPassFail], [Utm_Medium_Listing_Submission], [Acct_Rep_Name], [PaintWork], [IsFeaturedVehicle], [BeenListed], [VehicleStoryDescriptionCarFax], [AnythingElseWeShouldKnow], [Photo_Plan_Status], [Curated], [VehicleStoryOpeningStatementPictures], [DraftEmailNotificationSent], [Utm_Campaign_Listing_Submission], [IsTaxable], [Transmission], [BeenModified], [Rust], [CaliforniaSmogCheck], [Modifications], [ServiceRecords], [MagicBoxSection3], [MakeOfferAvailable], [VehicleStoryDescriptionInterior2Pictures], [Specialist_Section_Comp1_Info], [CounterReserve], [VehicleStory], [VehicleColor], [Decade], [DealerURL], [Specialist_Section_Comp4_Info], [OriginalEngineText], [HasProMarketing], [UserComments], [PackageTransactionId], [Specialist_Section_Comp4_Price], [Specialist_Section_Comp1_Price], [Copy_Writer_Feedback], [BeenListedText], [VIN], [CountryOfOrigin], [MagicBoxSection4], [Specialist_Section_Comp2_Price], [SnapprPackage], [StartingBid], [FixedPrice], [OriginalEngine], [VehicleTitle], [VehicleStoryDescriptionExterior2Pictures], [WhereDidYouHearAboutUsListingOther], [Specialist_Section_Original_Reserve], [HowLongOwned], [ExpertVideoReview], [Copy_Writer], [SchedulingComplete], [MagicBoxSection2], [HasProPhotography], [ListingNotes], [MakeWholeAmount], [HasDealerFee], [Utm_Source_Listing_Submission], [CurrentIssues], [ListingProgress], [IsPromoVehicle], [VehicleStoryDescriptionUndercarriagePictures], [WhereDidYouHearAboutUsListingReferral], [Year], [WhereDidYouHearAboutUsListing], [Make], [CityCL], [Address], [MaxReserve], [Acct_Rep_Email], [CarTitleInYourName], [Specialist_Section_Comp3_Price], [LastServiceInformation], [CommissionOverrideReason], [CountryCL], [DealerFees], [EngineSize], [Zip], [VehicleStoryDescriptionInterior], [MarketValue], [VehicleStoryDescriptionEngineTransmissionPictures], [TransmissionText], [TransactionId], [Specialist], [VehicleStoryDescriptionEngineTransmission], [VehicleStoryOpeningStatement], [ReservePriceCL], [MakeOfferAllowed], [MileageAccurate], [PhotoPlanId], [SpinCarLink], [HaveAllPhotos], [VehicleStoryDescriptionExterior], [PaintWorkText], [Dealer])
    )as pvt
)


select 
    listingid, [Specialist_Section_Notes], [Era], [Acct_Rep_Phone], [Photo_Plan], [IsEdited], [AddressLine2], [PremiumListing], [IsPaid], [LockUsername], [Specialist_Section_Comp5_Info], [CarfaxPassFailError], [LeadSource], [Specialist_Section_Comp2_Info], [WGL_Public_Report], [Specialist_Section_Comp3_Info], [HasMagicBox], [StateProvinceRegion], [EstimatedMarketValue], [ListingState], [VehicleStoryDescriptionExterior2], [Commission], [MagicBoxSection1], [PersonalMileage], [VehicleStoryDescriptionUndercarriage], [CarfaxLink], [HideListing], [TargetReserve], [IsApproved], [ReservePrice], [Copy_Writer_Status], [VehicleStoryDescriptionCarFaxPictures], [VehicleStoryDescriptionExteriorPictures], [UI_ListingStateHold], [Specialist_Section_Comp5_Price], [Model], [BuyItNow], [Comped], [MagicBoxSection5], [MagicBoxSection6], [ReserveReviewEmailDate], [NoReserveCheck], [BuyItNowUsed], [DealerName], [Mileage], [OdometerUnits], [CCID], [Acct_Rep], [Taxonomy], [VehicleStoryDescriptionInterior2], [VehicleStoryDescriptionInteriorPictures], [CarfaxPassFail], [Utm_Medium_Listing_Submission], [Acct_Rep_Name], [PaintWork], [IsFeaturedVehicle], [BeenListed], [VehicleStoryDescriptionCarFax], [AnythingElseWeShouldKnow], [Photo_Plan_Status], [Curated], [VehicleStoryOpeningStatementPictures], [DraftEmailNotificationSent], [Utm_Campaign_Listing_Submission], [IsTaxable], [Transmission], [BeenModified], [Rust], [CaliforniaSmogCheck], [Modifications], [ServiceRecords], [MagicBoxSection3], [MakeOfferAvailable], [VehicleStoryDescriptionInterior2Pictures], [Specialist_Section_Comp1_Info], [CounterReserve], [VehicleStory], [VehicleColor], [Decade], [DealerURL], [Specialist_Section_Comp4_Info], [OriginalEngineText], [HasProMarketing], [UserComments], [PackageTransactionId], [Specialist_Section_Comp4_Price], [Specialist_Section_Comp1_Price], [Copy_Writer_Feedback], [BeenListedText], [VIN], [CountryOfOrigin], [MagicBoxSection4], [Specialist_Section_Comp2_Price], [SnapprPackage], [StartingBid], [FixedPrice], [OriginalEngine], [VehicleTitle], [VehicleStoryDescriptionExterior2Pictures], [WhereDidYouHearAboutUsListingOther], [Specialist_Section_Original_Reserve], [HowLongOwned], [ExpertVideoReview], [Copy_Writer], [SchedulingComplete], [MagicBoxSection2], [HasProPhotography], [ListingNotes], [MakeWholeAmount], [HasDealerFee], [Utm_Source_Listing_Submission], [CurrentIssues], [ListingProgress], [IsPromoVehicle], [VehicleStoryDescriptionUndercarriagePictures], [WhereDidYouHearAboutUsListingReferral], [Year], [WhereDidYouHearAboutUsListing], [Make], [CityCL], [Address], [MaxReserve], [Acct_Rep_Email], [CarTitleInYourName], [Specialist_Section_Comp3_Price], [LastServiceInformation], [CommissionOverrideReason], [CountryCL], [DealerFees], [EngineSize], [Zip], [VehicleStoryDescriptionInterior], [MarketValue], [VehicleStoryDescriptionEngineTransmissionPictures], [TransmissionText], [TransactionId], [Specialist], [VehicleStoryDescriptionEngineTransmission], [VehicleStoryOpeningStatement], [ReservePriceCL], [MakeOfferAllowed], [MileageAccurate], [PhotoPlanId], [SpinCarLink], [HaveAllPhotos], [VehicleStoryDescriptionExterior], [PaintWorkText], [Dealer]
from pivoted_data
    ');

  CREATE TABLE "stg"."AH_SZ_Properties_Pivot__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_SZ_Properties_Pivot__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_SZ_Properties_Pivot__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_SZ_Properties_Pivot__dbt_tmp_temp_view"
    end


