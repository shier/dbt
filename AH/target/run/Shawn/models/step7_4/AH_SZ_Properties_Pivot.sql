
  
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
        listingid, [VehicleStoryDescriptionExterior2], [Commission], [MagicBoxSection1], [BuyItNowUsed], [DealerName], [Mileage], [LockUsername], [WhereDidYouHearAboutUsListingReferral], [ExpertVideoReview], [CarfaxPassFail], [MileageAccurate], [DealerFees], [Make], [IsTaxable], [CurrentIssues], [PersonalMileage], [VehicleStoryDescriptionUndercarriage], [CarfaxLink], [HideListing], [TargetReserve], [HasProPhotography], [ListingNotes], [VehicleStoryDescriptionInterior2Pictures], [VehicleStoryDescriptionUndercarriagePictures], [Utm_Campaign_Listing_Submission], [VehicleStory], [VehicleColor], [Decade], [PaintWork], [IsFeaturedVehicle], [StartingBid], [Copy_Writer_Status], [VehicleStoryDescriptionCarFaxPictures], [OdometerUnits], [Specialist_Section_Notes], [Era], [Acct_Rep_Phone], [CountryOfOrigin], [CommissionOverrideReason], [MakeOfferAvailable], [MagicBoxSection5], [MagicBoxSection6], [BeenListed], [Copy_Writer], [VehicleStoryDescriptionExterior2Pictures], [VehicleStoryDescriptionExterior], [HasMagicBox], [HasDealerFee], [Utm_Source_Listing_Submission], [AddressLine2], [PremiumListing], [IsPaid], [MakeWholeAmount], [CarfaxPassFailError], [LeadSource], [Specialist_Section_Comp2_Info], [ListingState], [WGL_Public_Report], [PhotoPlanId], [Specialist_Section_Comp1_Info], [Curated], [VehicleStoryOpeningStatementPictures], [HowLongOwned], [MagicBoxSection2], [Dealer], [HaveAllPhotos], [DealerURL], [OriginalEngine], [Model], [BuyItNow], [Specialist], [StateProvinceRegion], [EstimatedMarketValue], [OriginalEngineText], [HasProMarketing], [VehicleStoryDescriptionExteriorPictures], [DraftEmailNotificationSent], [Specialist_Section_Comp5_Info], [CarTitleInYourName], [Specialist_Section_Comp1_Price], [Specialist_Section_Comp3_Price], [MakeOfferAllowed], [CountryCL], [SnapprPackage], [FixedPrice], [Acct_Rep], [Taxonomy], [CCID], [VehicleStoryDescriptionCarFax], [IsPromoVehicle], [IsApproved], [Specialist_Section_Comp4_Info], [BeenListedText], [ReserveReviewEmailDate], [VehicleTitle], [WhereDidYouHearAboutUsListingOther], [Specialist_Section_Original_Reserve], [Address], [UserComments], [NoReserveCheck], [MagicBoxSection4], [Specialist_Section_Comp2_Price], [CaliforniaSmogCheck], [Modifications], [SchedulingComplete], [LastServiceInformation], [CityCL], [Transmission], [TransactionId], [Comped], [VehicleStoryDescriptionEngineTransmission], [ReservePrice], [UI_ListingStateHold], [Specialist_Section_Comp5_Price], [Rust], [VehicleStoryDescriptionEngineTransmissionPictures], [VehicleStoryDescriptionInterior2], [VehicleStoryDescriptionInteriorPictures], [WhereDidYouHearAboutUsListing], [Photo_Plan], [IsEdited], [VIN], [Acct_Rep_Name], [Photo_Plan_Status], [VehicleStoryDescriptionInterior], [MarketValue], [VehicleStoryOpeningStatement], [MaxReserve], [SpinCarLink], [PaintWorkText], [Copy_Writer_Feedback], [Specialist_Section_Comp3_Info], [Utm_Medium_Listing_Submission], [CounterReserve], [TransmissionText], [ServiceRecords], [MagicBoxSection3], [ListingProgress], [AnythingElseWeShouldKnow], [EngineSize], [PackageTransactionId], [Year], [BeenModified], [Acct_Rep_Email], [Specialist_Section_Comp4_Price], [Zip], [ReservePriceCL]
    FROM pivot_data_input
    PIVOT (
        max(customfieldvalue) for customfieldname in ( [VehicleStoryDescriptionExterior2], [Commission], [MagicBoxSection1], [BuyItNowUsed], [DealerName], [Mileage], [LockUsername], [WhereDidYouHearAboutUsListingReferral], [ExpertVideoReview], [CarfaxPassFail], [MileageAccurate], [DealerFees], [Make], [IsTaxable], [CurrentIssues], [PersonalMileage], [VehicleStoryDescriptionUndercarriage], [CarfaxLink], [HideListing], [TargetReserve], [HasProPhotography], [ListingNotes], [VehicleStoryDescriptionInterior2Pictures], [VehicleStoryDescriptionUndercarriagePictures], [Utm_Campaign_Listing_Submission], [VehicleStory], [VehicleColor], [Decade], [PaintWork], [IsFeaturedVehicle], [StartingBid], [Copy_Writer_Status], [VehicleStoryDescriptionCarFaxPictures], [OdometerUnits], [Specialist_Section_Notes], [Era], [Acct_Rep_Phone], [CountryOfOrigin], [CommissionOverrideReason], [MakeOfferAvailable], [MagicBoxSection5], [MagicBoxSection6], [BeenListed], [Copy_Writer], [VehicleStoryDescriptionExterior2Pictures], [VehicleStoryDescriptionExterior], [HasMagicBox], [HasDealerFee], [Utm_Source_Listing_Submission], [AddressLine2], [PremiumListing], [IsPaid], [MakeWholeAmount], [CarfaxPassFailError], [LeadSource], [Specialist_Section_Comp2_Info], [ListingState], [WGL_Public_Report], [PhotoPlanId], [Specialist_Section_Comp1_Info], [Curated], [VehicleStoryOpeningStatementPictures], [HowLongOwned], [MagicBoxSection2], [Dealer], [HaveAllPhotos], [DealerURL], [OriginalEngine], [Model], [BuyItNow], [Specialist], [StateProvinceRegion], [EstimatedMarketValue], [OriginalEngineText], [HasProMarketing], [VehicleStoryDescriptionExteriorPictures], [DraftEmailNotificationSent], [Specialist_Section_Comp5_Info], [CarTitleInYourName], [Specialist_Section_Comp1_Price], [Specialist_Section_Comp3_Price], [MakeOfferAllowed], [CountryCL], [SnapprPackage], [FixedPrice], [Acct_Rep], [Taxonomy], [CCID], [VehicleStoryDescriptionCarFax], [IsPromoVehicle], [IsApproved], [Specialist_Section_Comp4_Info], [BeenListedText], [ReserveReviewEmailDate], [VehicleTitle], [WhereDidYouHearAboutUsListingOther], [Specialist_Section_Original_Reserve], [Address], [UserComments], [NoReserveCheck], [MagicBoxSection4], [Specialist_Section_Comp2_Price], [CaliforniaSmogCheck], [Modifications], [SchedulingComplete], [LastServiceInformation], [CityCL], [Transmission], [TransactionId], [Comped], [VehicleStoryDescriptionEngineTransmission], [ReservePrice], [UI_ListingStateHold], [Specialist_Section_Comp5_Price], [Rust], [VehicleStoryDescriptionEngineTransmissionPictures], [VehicleStoryDescriptionInterior2], [VehicleStoryDescriptionInteriorPictures], [WhereDidYouHearAboutUsListing], [Photo_Plan], [IsEdited], [VIN], [Acct_Rep_Name], [Photo_Plan_Status], [VehicleStoryDescriptionInterior], [MarketValue], [VehicleStoryOpeningStatement], [MaxReserve], [SpinCarLink], [PaintWorkText], [Copy_Writer_Feedback], [Specialist_Section_Comp3_Info], [Utm_Medium_Listing_Submission], [CounterReserve], [TransmissionText], [ServiceRecords], [MagicBoxSection3], [ListingProgress], [AnythingElseWeShouldKnow], [EngineSize], [PackageTransactionId], [Year], [BeenModified], [Acct_Rep_Email], [Specialist_Section_Comp4_Price], [Zip], [ReservePriceCL])
    )as pvt
)


select 
    listingid, [VehicleStoryDescriptionExterior2], [Commission], [MagicBoxSection1], [BuyItNowUsed], [DealerName], [Mileage], [LockUsername], [WhereDidYouHearAboutUsListingReferral], [ExpertVideoReview], [CarfaxPassFail], [MileageAccurate], [DealerFees], [Make], [IsTaxable], [CurrentIssues], [PersonalMileage], [VehicleStoryDescriptionUndercarriage], [CarfaxLink], [HideListing], [TargetReserve], [HasProPhotography], [ListingNotes], [VehicleStoryDescriptionInterior2Pictures], [VehicleStoryDescriptionUndercarriagePictures], [Utm_Campaign_Listing_Submission], [VehicleStory], [VehicleColor], [Decade], [PaintWork], [IsFeaturedVehicle], [StartingBid], [Copy_Writer_Status], [VehicleStoryDescriptionCarFaxPictures], [OdometerUnits], [Specialist_Section_Notes], [Era], [Acct_Rep_Phone], [CountryOfOrigin], [CommissionOverrideReason], [MakeOfferAvailable], [MagicBoxSection5], [MagicBoxSection6], [BeenListed], [Copy_Writer], [VehicleStoryDescriptionExterior2Pictures], [VehicleStoryDescriptionExterior], [HasMagicBox], [HasDealerFee], [Utm_Source_Listing_Submission], [AddressLine2], [PremiumListing], [IsPaid], [MakeWholeAmount], [CarfaxPassFailError], [LeadSource], [Specialist_Section_Comp2_Info], [ListingState], [WGL_Public_Report], [PhotoPlanId], [Specialist_Section_Comp1_Info], [Curated], [VehicleStoryOpeningStatementPictures], [HowLongOwned], [MagicBoxSection2], [Dealer], [HaveAllPhotos], [DealerURL], [OriginalEngine], [Model], [BuyItNow], [Specialist], [StateProvinceRegion], [EstimatedMarketValue], [OriginalEngineText], [HasProMarketing], [VehicleStoryDescriptionExteriorPictures], [DraftEmailNotificationSent], [Specialist_Section_Comp5_Info], [CarTitleInYourName], [Specialist_Section_Comp1_Price], [Specialist_Section_Comp3_Price], [MakeOfferAllowed], [CountryCL], [SnapprPackage], [FixedPrice], [Acct_Rep], [Taxonomy], [CCID], [VehicleStoryDescriptionCarFax], [IsPromoVehicle], [IsApproved], [Specialist_Section_Comp4_Info], [BeenListedText], [ReserveReviewEmailDate], [VehicleTitle], [WhereDidYouHearAboutUsListingOther], [Specialist_Section_Original_Reserve], [Address], [UserComments], [NoReserveCheck], [MagicBoxSection4], [Specialist_Section_Comp2_Price], [CaliforniaSmogCheck], [Modifications], [SchedulingComplete], [LastServiceInformation], [CityCL], [Transmission], [TransactionId], [Comped], [VehicleStoryDescriptionEngineTransmission], [ReservePrice], [UI_ListingStateHold], [Specialist_Section_Comp5_Price], [Rust], [VehicleStoryDescriptionEngineTransmissionPictures], [VehicleStoryDescriptionInterior2], [VehicleStoryDescriptionInteriorPictures], [WhereDidYouHearAboutUsListing], [Photo_Plan], [IsEdited], [VIN], [Acct_Rep_Name], [Photo_Plan_Status], [VehicleStoryDescriptionInterior], [MarketValue], [VehicleStoryOpeningStatement], [MaxReserve], [SpinCarLink], [PaintWorkText], [Copy_Writer_Feedback], [Specialist_Section_Comp3_Info], [Utm_Medium_Listing_Submission], [CounterReserve], [TransmissionText], [ServiceRecords], [MagicBoxSection3], [ListingProgress], [AnythingElseWeShouldKnow], [EngineSize], [PackageTransactionId], [Year], [BeenModified], [Acct_Rep_Email], [Specialist_Section_Comp4_Price], [Zip], [ReservePriceCL]
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


