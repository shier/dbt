
  
  if object_id ('"dbo_dbo"."SZ_AH_Properties_Pivot__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_dbo"."SZ_AH_Properties_Pivot__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo_dbo"."SZ_AH_Properties_Pivot__dbt_tmp"','U') is not null
    begin
    drop table "dbo_dbo"."SZ_AH_Properties_Pivot__dbt_tmp"
    end


   EXEC('create view dbo_dbo.SZ_AH_Properties_Pivot__dbt_tmp_temp_view as
    









    

    

 







    
    

 

WITH pivot_data_input AS
(
    SELECT 
        listingid, -- Grouping Column
        customfieldname, -- Spreading Column
        customfieldvalue -- Aggregate Column
    FROM [stg].[SZ_AH_AllProperties_One_Column] 
        -- [TEST] where listingid = 10023682
),
pivoted_data AS
(
    SELECT 
        listingid, [LockUsername], [Curated], [VehicleStoryOpeningStatementPictures], [CCID], [OdometerUnits], [DealerName], [Mileage], [MagicBoxSection6], [ReserveReviewEmailDate], [LeadSource], [Specialist_Section_Comp2_Info], [CarfaxPassFailError], [Taxonomy], [VehicleStoryDescriptionInterior2], [VehicleStoryDescriptionInteriorPictures], [HasProPhotography], [HideListing], [TargetReserve], [PersonalMileage], [VehicleStoryDescriptionUndercarriage], [CarfaxLink], [Utm_Source_Listing_Submission], [Copy_Writer_Status], [VehicleStoryDescriptionCarFaxPictures], [OriginalEngineText], [HasProMarketing], [CarfaxPassFail], [Specialist_Section_Notes], [Era], [IsPaid], [AddressLine2], [PremiumListing], [MagicBoxSection4], [Specialist_Section_Comp2_Price], [NoReserveCheck], [BeenListed], [Copy_Writer], [VehicleStoryDescriptionExterior], [OriginalEngine], [Commission], [MagicBoxSection1], [Specialist_Section_Comp1_Info], [CaliforniaSmogCheck], [Modifications], [ListingState], [VehicleStoryDescriptionExterior2], [VehicleColor], [MaxReserve], [VehicleStoryOpeningStatement], [Year], [IsApproved], [Specialist_Section_Comp4_Info], [VehicleStoryDescriptionCarFax], [Acct_Rep_Phone], [VehicleStoryDescriptionUndercarriagePictures], [Model], [Copy_Writer_Feedback], [BuyItNowUsed], [UserComments], [BuyItNow], [Dealer], [MileageAccurate], [EstimatedMarketValue], [StateProvinceRegion], [Acct_Rep], [DraftEmailNotificationSent], [Specialist_Section_Comp5_Info], [Utm_Campaign_Listing_Submission], [Zip], [Specialist_Section_Comp3_Info], [IsTaxable], [Transmission], [HasMagicBox], [HasDealerFee], [UI_ListingStateHold], [Specialist_Section_Comp5_Price], [ReservePrice], [BeenListedText], [VIN], [VehicleStoryDescriptionExteriorPictures], [MakeWholeAmount], [Photo_Plan_Status], [VehicleStoryDescriptionInterior], [SchedulingComplete], [PhotoPlanId], [EngineSize], [Acct_Rep_Name], [WhereDidYouHearAboutUsListingReferral], [CounterReserve], [CurrentIssues], [TransactionId], [MakeOfferAvailable], [VehicleStoryDescriptionEngineTransmission], [Decade], [VehicleStory], [Acct_Rep_Email], [WhereDidYouHearAboutUsListingOther], [Specialist_Section_Original_Reserve], [VehicleTitle], [VehicleStoryDescriptionExterior2Pictures], [CommissionOverrideReason], [VehicleStoryDescriptionInterior2Pictures], [Comped], [Address], [MagicBoxSection5], [FixedPrice], [ListingNotes], [Rust], [VehicleStoryDescriptionEngineTransmissionPictures], [IsEdited], [AnythingElseWeShouldKnow], [Photo_Plan], [MagicBoxSection3], [ListingProgress], [IsPromoVehicle], [TransmissionText], [ServiceRecords], [MagicBoxSection2], [SpinCarLink], [ExpertVideoReview], [MarketValue], [LastServiceInformation], [IsFeaturedVehicle], [PaintWork], [Specialist], [CityCL], [PaintWorkText], [ReservePriceCL], [CarTitleInYourName], [WhereDidYouHearAboutUsListing], [CountryOfOrigin], [PackageTransactionId], [SnapprPackage], [StartingBid], [MakeOfferAllowed], [CountryCL], [WGL_Public_Report], [HaveAllPhotos], [HowLongOwned], [Specialist_Section_Comp4_Price], [Make], [Specialist_Section_Comp1_Price], [Specialist_Section_Comp3_Price], [DealerFees], [DealerURL], [Utm_Medium_Listing_Submission], [BeenModified]
    FROM pivot_data_input
    PIVOT (
        max(customfieldvalue) for customfieldname in ( [LockUsername], [Curated], [VehicleStoryOpeningStatementPictures], [CCID], [OdometerUnits], [DealerName], [Mileage], [MagicBoxSection6], [ReserveReviewEmailDate], [LeadSource], [Specialist_Section_Comp2_Info], [CarfaxPassFailError], [Taxonomy], [VehicleStoryDescriptionInterior2], [VehicleStoryDescriptionInteriorPictures], [HasProPhotography], [HideListing], [TargetReserve], [PersonalMileage], [VehicleStoryDescriptionUndercarriage], [CarfaxLink], [Utm_Source_Listing_Submission], [Copy_Writer_Status], [VehicleStoryDescriptionCarFaxPictures], [OriginalEngineText], [HasProMarketing], [CarfaxPassFail], [Specialist_Section_Notes], [Era], [IsPaid], [AddressLine2], [PremiumListing], [MagicBoxSection4], [Specialist_Section_Comp2_Price], [NoReserveCheck], [BeenListed], [Copy_Writer], [VehicleStoryDescriptionExterior], [OriginalEngine], [Commission], [MagicBoxSection1], [Specialist_Section_Comp1_Info], [CaliforniaSmogCheck], [Modifications], [ListingState], [VehicleStoryDescriptionExterior2], [VehicleColor], [MaxReserve], [VehicleStoryOpeningStatement], [Year], [IsApproved], [Specialist_Section_Comp4_Info], [VehicleStoryDescriptionCarFax], [Acct_Rep_Phone], [VehicleStoryDescriptionUndercarriagePictures], [Model], [Copy_Writer_Feedback], [BuyItNowUsed], [UserComments], [BuyItNow], [Dealer], [MileageAccurate], [EstimatedMarketValue], [StateProvinceRegion], [Acct_Rep], [DraftEmailNotificationSent], [Specialist_Section_Comp5_Info], [Utm_Campaign_Listing_Submission], [Zip], [Specialist_Section_Comp3_Info], [IsTaxable], [Transmission], [HasMagicBox], [HasDealerFee], [UI_ListingStateHold], [Specialist_Section_Comp5_Price], [ReservePrice], [BeenListedText], [VIN], [VehicleStoryDescriptionExteriorPictures], [MakeWholeAmount], [Photo_Plan_Status], [VehicleStoryDescriptionInterior], [SchedulingComplete], [PhotoPlanId], [EngineSize], [Acct_Rep_Name], [WhereDidYouHearAboutUsListingReferral], [CounterReserve], [CurrentIssues], [TransactionId], [MakeOfferAvailable], [VehicleStoryDescriptionEngineTransmission], [Decade], [VehicleStory], [Acct_Rep_Email], [WhereDidYouHearAboutUsListingOther], [Specialist_Section_Original_Reserve], [VehicleTitle], [VehicleStoryDescriptionExterior2Pictures], [CommissionOverrideReason], [VehicleStoryDescriptionInterior2Pictures], [Comped], [Address], [MagicBoxSection5], [FixedPrice], [ListingNotes], [Rust], [VehicleStoryDescriptionEngineTransmissionPictures], [IsEdited], [AnythingElseWeShouldKnow], [Photo_Plan], [MagicBoxSection3], [ListingProgress], [IsPromoVehicle], [TransmissionText], [ServiceRecords], [MagicBoxSection2], [SpinCarLink], [ExpertVideoReview], [MarketValue], [LastServiceInformation], [IsFeaturedVehicle], [PaintWork], [Specialist], [CityCL], [PaintWorkText], [ReservePriceCL], [CarTitleInYourName], [WhereDidYouHearAboutUsListing], [CountryOfOrigin], [PackageTransactionId], [SnapprPackage], [StartingBid], [MakeOfferAllowed], [CountryCL], [WGL_Public_Report], [HaveAllPhotos], [HowLongOwned], [Specialist_Section_Comp4_Price], [Make], [Specialist_Section_Comp1_Price], [Specialist_Section_Comp3_Price], [DealerFees], [DealerURL], [Utm_Medium_Listing_Submission], [BeenModified])
    )as pvt
)


select 
    listingid, [LockUsername], [Curated], [VehicleStoryOpeningStatementPictures], [CCID], [OdometerUnits], [DealerName], [Mileage], [MagicBoxSection6], [ReserveReviewEmailDate], [LeadSource], [Specialist_Section_Comp2_Info], [CarfaxPassFailError], [Taxonomy], [VehicleStoryDescriptionInterior2], [VehicleStoryDescriptionInteriorPictures], [HasProPhotography], [HideListing], [TargetReserve], [PersonalMileage], [VehicleStoryDescriptionUndercarriage], [CarfaxLink], [Utm_Source_Listing_Submission], [Copy_Writer_Status], [VehicleStoryDescriptionCarFaxPictures], [OriginalEngineText], [HasProMarketing], [CarfaxPassFail], [Specialist_Section_Notes], [Era], [IsPaid], [AddressLine2], [PremiumListing], [MagicBoxSection4], [Specialist_Section_Comp2_Price], [NoReserveCheck], [BeenListed], [Copy_Writer], [VehicleStoryDescriptionExterior], [OriginalEngine], [Commission], [MagicBoxSection1], [Specialist_Section_Comp1_Info], [CaliforniaSmogCheck], [Modifications], [ListingState], [VehicleStoryDescriptionExterior2], [VehicleColor], [MaxReserve], [VehicleStoryOpeningStatement], [Year], [IsApproved], [Specialist_Section_Comp4_Info], [VehicleStoryDescriptionCarFax], [Acct_Rep_Phone], [VehicleStoryDescriptionUndercarriagePictures], [Model], [Copy_Writer_Feedback], [BuyItNowUsed], [UserComments], [BuyItNow], [Dealer], [MileageAccurate], [EstimatedMarketValue], [StateProvinceRegion], [Acct_Rep], [DraftEmailNotificationSent], [Specialist_Section_Comp5_Info], [Utm_Campaign_Listing_Submission], [Zip], [Specialist_Section_Comp3_Info], [IsTaxable], [Transmission], [HasMagicBox], [HasDealerFee], [UI_ListingStateHold], [Specialist_Section_Comp5_Price], [ReservePrice], [BeenListedText], [VIN], [VehicleStoryDescriptionExteriorPictures], [MakeWholeAmount], [Photo_Plan_Status], [VehicleStoryDescriptionInterior], [SchedulingComplete], [PhotoPlanId], [EngineSize], [Acct_Rep_Name], [WhereDidYouHearAboutUsListingReferral], [CounterReserve], [CurrentIssues], [TransactionId], [MakeOfferAvailable], [VehicleStoryDescriptionEngineTransmission], [Decade], [VehicleStory], [Acct_Rep_Email], [WhereDidYouHearAboutUsListingOther], [Specialist_Section_Original_Reserve], [VehicleTitle], [VehicleStoryDescriptionExterior2Pictures], [CommissionOverrideReason], [VehicleStoryDescriptionInterior2Pictures], [Comped], [Address], [MagicBoxSection5], [FixedPrice], [ListingNotes], [Rust], [VehicleStoryDescriptionEngineTransmissionPictures], [IsEdited], [AnythingElseWeShouldKnow], [Photo_Plan], [MagicBoxSection3], [ListingProgress], [IsPromoVehicle], [TransmissionText], [ServiceRecords], [MagicBoxSection2], [SpinCarLink], [ExpertVideoReview], [MarketValue], [LastServiceInformation], [IsFeaturedVehicle], [PaintWork], [Specialist], [CityCL], [PaintWorkText], [ReservePriceCL], [CarTitleInYourName], [WhereDidYouHearAboutUsListing], [CountryOfOrigin], [PackageTransactionId], [SnapprPackage], [StartingBid], [MakeOfferAllowed], [CountryCL], [WGL_Public_Report], [HaveAllPhotos], [HowLongOwned], [Specialist_Section_Comp4_Price], [Make], [Specialist_Section_Comp1_Price], [Specialist_Section_Comp3_Price], [DealerFees], [DealerURL], [Utm_Medium_Listing_Submission], [BeenModified]
from pivoted_data
    ');

  CREATE TABLE "dbo_dbo"."SZ_AH_Properties_Pivot__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo_dbo.SZ_AH_Properties_Pivot__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo_dbo"."SZ_AH_Properties_Pivot__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_dbo"."SZ_AH_Properties_Pivot__dbt_tmp_temp_view"
    end


