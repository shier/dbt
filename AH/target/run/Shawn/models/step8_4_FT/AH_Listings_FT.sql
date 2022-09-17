
  
  if object_id ('"dbo_dbo"."AH_Listings_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_dbo"."AH_Listings_FT__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo_dbo"."AH_Listings_FT__dbt_tmp"','U') is not null
    begin
    drop table "dbo_dbo"."AH_Listings_FT__dbt_tmp"
    end


   EXEC('create view dbo_dbo.AH_Listings_FT__dbt_tmp_temp_view as
    
with updateData as (
    select 
    	FTstg.[ListingID],
		FTtmp.[Consignor_SKey],
		FTtmp.[Car_Skey],
		FTstg.[PrimaryCategoryId],
		FTstg.[CurrencyID],
		FTstg.[ListingTypeID],
		FTstg.[ListingType],
		FTstg.[CreatedDate],
		FTstg.[UpdatedDate],
		FTstg.[DeletedDate],
		FTstg.[Title],
		FTstg.[OriginalRelistCount],
		FTstg.[Hits],
		FTstg.[EndDTTM],
		FTstg.[StartDTTM],
		FTstg.[Subtitle],
		FTstg.[Location],
		FTstg.[Status],
		FTstg.[CurrentPrice],
		FTstg.[LastUpdatedUser],
		FTstg.[Duration],
		FTstg.[Version],
		FTstg.[Increment],
		FTstg.[OriginalPrice],
		FTstg.[AutoRelistRemaining],
		FTstg.[CurrentQuantity],
		FTstg.[OriginalQuantity],
		FTstg.[RelistIteration],
		FTstg.[PrimaryImageURI],
		FTstg.[AcceptedActionCount],
		FTstg.[OwnerUserName],
		FTstg.[CurrentListingActionId],
		FTstg.[CurrentListingActionUserName],
		FTstg.[OfferCount],
		FTstg.[VehicleStoryOpeningStatement],
		FTstg.[VehicleStoryDescriptionCarFax],
		FTstg.[Acct_Rep_Phone],
		FTstg.[HasMagicBox],
		FTstg.[HasDealerFee],
		FTstg.[VehicleStory],
		FTstg.[CarfaxPassFailError],
		FTstg.[LeadSource],
		FTstg.[VehicleStoryDescriptionInterior2Pictures],
		FTstg.[Decade],
		FTstg.[PaintWork],
		FTstg.[Specialist_Section_Comp2_Info],
		FTstg.[Curated],
		FTstg.[VehicleStoryDescriptionUndercarriagePictures],
		FTstg.[IsFeaturedVehicle],
		FTstg.[VehicleStoryOpeningStatementPictures],
		FTstg.[Copy_Writer_Status],
		FTstg.[FixedPrice],
		FTstg.[LockUsername],
		FTstg.[NoReserveCheck],
		FTstg.[VehicleStoryDescriptionCarFaxPictures],
		FTstg.[BeenListed],
		FTstg.[Acct_Rep],
		FTstg.[MagicBoxSection4],
		FTstg.[Copy_Writer],
		FTstg.[Taxonomy],
		FTstg.[PersonalMileage],
		FTstg.[Specialist_Section_Comp2_Price],
		FTstg.[VehicleStoryDescriptionInterior2],
		FTstg.[VehicleStoryDescriptionUndercarriage],
		FTstg.[VehicleStoryDescriptionInteriorPictures],
		FTstg.[Acct_Rep_Name],
		FTstg.[CarfaxLink],
		FTstg.[HideListing],
		FTstg.[CurrentIssues],
		FTstg.[TargetReserve],
		FTstg.[TransactionId],
		FTstg.[Specialist],
		FTstg.[BuyItNow],
		FTstg.[VehicleStoryDescriptionEngineTransmission],
		FTstg.[CountryOfOrigin],
		FTstg.[CommissionOverrideReason],
		FTstg.[WhereDidYouHearAboutUsListingReferral],
		FTstg.[CaliforniaSmogCheck],
		FTstg.[Modifications],
		FTstg.[Zip],
		FTstg.[ListingState],
		FTstg.[AnythingElseWeShouldKnow],
		FTstg.[VehicleTitle],
		FTstg.[Specialist_Section_Notes],
		FTstg.[VehicleStoryDescriptionExterior2],
		FTstg.[Photo_Plan],
		FTstg.[VehicleStoryDescriptionExterior2Pictures],
		FTstg.[Era],
		FTstg.[Commission],
		FTstg.[MakeOfferAvailable],
		FTstg.[IsEdited],
		FTstg.[WhereDidYouHearAboutUsListingOther],
		FTstg.[MagicBoxSection1],
		FTstg.[VehicleStoryDescriptionExteriorPictures],
		FTstg.[Specialist_Section_Original_Reserve],
		FTstg.[Specialist_Section_Comp1_Info],
		FTstg.[UI_ListingStateHold],
		FTstg.[AddressLine2],
		FTstg.[Specialist_Section_Comp5_Price],
		FTstg.[WGL_Public_Report],
		FTstg.[PremiumListing],
		FTstg.[ReservePrice],
		FTstg.[DealerURL],
		FTstg.[IsPaid],
		FTstg.[OriginalEngineText],
		FTstg.[HasProMarketing],
		FTstg.[PhotoPlanId],
		FTstg.[TransmissionText],
		FTstg.[MakeOfferAllowed],
		FTstg.[SchedulingComplete],
		FTstg.[ServiceRecords],
		FTstg.[CountryCL],
		FTstg.[OdometerUnits],
		FTstg.[BuyItNowUsed],
		FTstg.[MagicBoxSection3],
		FTstg.[SnapprPackage],
		FTstg.[CarfaxPassFail],
		FTstg.[CCID],
		FTstg.[StateProvinceRegion],
		FTstg.[DealerName],
		FTstg.[ListingProgress],
		FTstg.[StartingBid],
		FTstg.[EstimatedMarketValue],
		FTstg.[Mileage],
		FTstg.[IsPromoVehicle],
		FTstg.[MagicBoxSection2],
		FTstg.[SpinCarLink],
		FTstg.[MagicBoxSection5],
		FTstg.[Photo_Plan_Status],
		FTstg.[Address],
		FTstg.[HaveAllPhotos],
		FTstg.[MagicBoxSection6],
		FTstg.[OriginalEngine],
		FTstg.[VehicleStoryDescriptionInterior],
		FTstg.[UserComments],
		FTstg.[CarTitleInYourName],
		FTstg.[MarketValue],
		FTstg.[PackageTransactionId],
		FTstg.[Specialist_Section_Comp1_Price],
		FTstg.[Rust],
		FTstg.[MakeWholeAmount],
		FTstg.[Specialist_Section_Comp3_Price],
		FTstg.[VehicleStoryDescriptionEngineTransmissionPictures],
		FTstg.[WhereDidYouHearAboutUsListing],
		FTstg.[HasProPhotography],
		FTstg.[IsApproved],
		FTstg.[ListingNotes],
		FTstg.[Specialist_Section_Comp4_Info],
		FTstg.[HowLongOwned],
		FTstg.[DraftEmailNotificationSent],
		FTstg.[Copy_Writer_Feedback],
		FTstg.[ExpertVideoReview],
		FTstg.[Specialist_Section_Comp5_Info],
		FTstg.[Comped],
		FTstg.[BeenListedText],
		FTstg.[IsTaxable],
		FTstg.[Transmission],
		FTstg.[BeenModified],
		FTstg.[Specialist_Section_Comp3_Info],
		FTstg.[CityCL],
		FTstg.[PaintWorkText],
		FTstg.[Dealer],
		FTstg.[ReservePriceCL],
		FTstg.[MileageAccurate],
		FTstg.[Acct_Rep_Email],
		FTstg.[LastServiceInformation],
		FTstg.[DealerFees],
		FTstg.[Specialist_Section_Comp4_Price],
		FTstg.[VehicleStoryDescriptionExterior]
    from stg.AH_Listings_FT_tmp as FTtmp 
    join stg.AH_Listings_FT_stg as FTstg 
    on FTstg.ListingID=FTtmp.ListingID
)
,
insertData as (
    select 
        [ListingID],
        [Consignor_SKey],
        [Car_Skey],
        [PrimaryCategoryId],
        [CurrencyID],
        [ListingTypeID],
        [ListingType],
        [CreatedDate],
        [UpdatedDate],
        [DeletedDate],
        [Title],
        [OriginalRelistCount],
        [Hits],
        [EndDTTM],
        [StartDTTM],
        [Subtitle],
        [Location],
        [Status],
        [CurrentPrice],
        [LastUpdatedUser],
        [Duration],
        [Version],
        [Increment],
        [OriginalPrice],
        [AutoRelistRemaining],
        [CurrentQuantity],
        [OriginalQuantity],
        [RelistIteration],
        [PrimaryImageURI],
        [AcceptedActionCount],
        [OwnerUserName],
        [CurrentListingActionId],
        [CurrentListingActionUserName],
        [OfferCount],
        [VehicleStoryOpeningStatement],
        [VehicleStoryDescriptionCarFax],
        [Acct_Rep_Phone],
        [HasMagicBox],
        [HasDealerFee],
        [VehicleStory],
        [CarfaxPassFailError],
        [LeadSource],
        [VehicleStoryDescriptionInterior2Pictures],
        [Decade],
        [PaintWork],
        [Specialist_Section_Comp2_Info],
        [Curated],
        [VehicleStoryDescriptionUndercarriagePictures],
        [IsFeaturedVehicle],
        [VehicleStoryOpeningStatementPictures],
        [Copy_Writer_Status],
        [FixedPrice],
        [LockUsername],
        [NoReserveCheck],
        [VehicleStoryDescriptionCarFaxPictures],
        [BeenListed],
        [Acct_Rep],
        [MagicBoxSection4],
        [Copy_Writer],
        [Taxonomy],
        [PersonalMileage],
        [Specialist_Section_Comp2_Price],
        [VehicleStoryDescriptionInterior2],
        [VehicleStoryDescriptionUndercarriage],
        [VehicleStoryDescriptionInteriorPictures],
        [Acct_Rep_Name],
        [CarfaxLink],
        [HideListing],
        [CurrentIssues],
        [TargetReserve],
        [TransactionId],
        [Specialist],
        [BuyItNow],
        [VehicleStoryDescriptionEngineTransmission],
        [CountryOfOrigin],
        [CommissionOverrideReason],
        [WhereDidYouHearAboutUsListingReferral],
        [CaliforniaSmogCheck],
        [Modifications],
        [Zip],
        [ListingState],
        [AnythingElseWeShouldKnow],
        [VehicleTitle],
        [Specialist_Section_Notes],
        [VehicleStoryDescriptionExterior2],
        [Photo_Plan],
        [VehicleStoryDescriptionExterior2Pictures],
        [Era],
        [Commission],
        [MakeOfferAvailable],
        [IsEdited],
        [WhereDidYouHearAboutUsListingOther],
        [MagicBoxSection1],
        [VehicleStoryDescriptionExteriorPictures],
        [Specialist_Section_Original_Reserve],
        [Specialist_Section_Comp1_Info],
        [UI_ListingStateHold],
        [AddressLine2],
        [Specialist_Section_Comp5_Price],
        [WGL_Public_Report],
        [PremiumListing],
        [ReservePrice],
        [DealerURL],
        [IsPaid],
        [OriginalEngineText],
        [HasProMarketing],
        [PhotoPlanId],
        [TransmissionText],
        [MakeOfferAllowed],
        [SchedulingComplete],
        [ServiceRecords],
        [CountryCL],
        [OdometerUnits],
        [BuyItNowUsed],
        [MagicBoxSection3],
        [SnapprPackage],
        [CarfaxPassFail],
        [CCID],
        [StateProvinceRegion],
        [DealerName],
        [ListingProgress],
        [StartingBid],
        [EstimatedMarketValue],
        [Mileage],
        [IsPromoVehicle],
        [MagicBoxSection2],
        [SpinCarLink],
        [MagicBoxSection5],
        [Photo_Plan_Status],
        [Address],
        [HaveAllPhotos],
        [MagicBoxSection6],
        [OriginalEngine],
        [VehicleStoryDescriptionInterior],
        [UserComments],
        [CarTitleInYourName],
        [MarketValue],
        [PackageTransactionId],
        [Specialist_Section_Comp1_Price],
        [Rust],
        [MakeWholeAmount],
        [Specialist_Section_Comp3_Price],
        [VehicleStoryDescriptionEngineTransmissionPictures],
        [WhereDidYouHearAboutUsListing],
        [HasProPhotography],
        [IsApproved],
        [ListingNotes],
        [Specialist_Section_Comp4_Info],
        [HowLongOwned],
        [DraftEmailNotificationSent],
        [Copy_Writer_Feedback],
        [ExpertVideoReview],
        [Specialist_Section_Comp5_Info],
        [Comped],
        [BeenListedText],
        [IsTaxable],
        [Transmission],
        [BeenModified],
        [Specialist_Section_Comp3_Info],
        [CityCL],
        [PaintWorkText],
        [Dealer],
        [ReservePriceCL],
        [MileageAccurate],
        [Acct_Rep_Email],
        [LastServiceInformation],
        [DealerFees],
        [Specialist_Section_Comp4_Price],
        [VehicleStoryDescriptionExterior]
    from stg.AH_Listings_FT_tmp
    where ListingID not in (select  ListingID from stg.AH_Listings_FT_stg)
)
SELECT
	[ListingID],
	[Consignor_SKey],
	[Car_Skey],
	[PrimaryCategoryId],
	[CurrencyID],
	[ListingTypeID],
	[ListingType],
	[CreatedDate],
	[UpdatedDate],
	[DeletedDate],
	[Title],
	[OriginalRelistCount],
	[Hits],
	[EndDTTM],
	[StartDTTM],
	[Subtitle],
	[Location],
	[Status],
	[CurrentPrice],
	[LastUpdatedUser],
	[Duration],
	[Version],
	[Increment],
	[OriginalPrice],
	[AutoRelistRemaining],
	[CurrentQuantity],
	[OriginalQuantity],
	[RelistIteration],
	[PrimaryImageURI],
	[AcceptedActionCount],
	[OwnerUserName],
	[CurrentListingActionId],
	[CurrentListingActionUserName],
	[OfferCount],
	[VehicleStoryOpeningStatement],
	[VehicleStoryDescriptionCarFax],
	[Acct_Rep_Phone],
	[HasMagicBox],
	[HasDealerFee],
	[VehicleStory],
	[CarfaxPassFailError],
	[LeadSource],
	[VehicleStoryDescriptionInterior2Pictures],
	[Decade],
	[PaintWork],
	[Specialist_Section_Comp2_Info],
	[Curated],
	[VehicleStoryDescriptionUndercarriagePictures],
	[IsFeaturedVehicle],
	[VehicleStoryOpeningStatementPictures],
	[Copy_Writer_Status],
	[FixedPrice],
	[LockUsername],
	[NoReserveCheck],
	[VehicleStoryDescriptionCarFaxPictures],
	[BeenListed],
	[Acct_Rep],
	[MagicBoxSection4],
	[Copy_Writer],
	[Taxonomy],
	[PersonalMileage],
	[Specialist_Section_Comp2_Price],
	[VehicleStoryDescriptionInterior2],
	[VehicleStoryDescriptionUndercarriage],
	[VehicleStoryDescriptionInteriorPictures],
	[Acct_Rep_Name],
	[CarfaxLink],
	[HideListing],
	[CurrentIssues],
	[TargetReserve],
	[TransactionId],
	[Specialist],
	[BuyItNow],
	[VehicleStoryDescriptionEngineTransmission],
	[CountryOfOrigin],
	[CommissionOverrideReason],
	[WhereDidYouHearAboutUsListingReferral],
	[CaliforniaSmogCheck],
	[Modifications],
	[Zip],
	[ListingState],
	[AnythingElseWeShouldKnow],
	[VehicleTitle],
	[Specialist_Section_Notes],
	[VehicleStoryDescriptionExterior2],
	[Photo_Plan],
	[VehicleStoryDescriptionExterior2Pictures],
	[Era],
	[Commission],
	[MakeOfferAvailable],
	[IsEdited],
	[WhereDidYouHearAboutUsListingOther],
	[MagicBoxSection1],
	[VehicleStoryDescriptionExteriorPictures],
	[Specialist_Section_Original_Reserve],
	[Specialist_Section_Comp1_Info],
	[UI_ListingStateHold],
	[AddressLine2],
	[Specialist_Section_Comp5_Price],
	[WGL_Public_Report],
	[PremiumListing],
	[ReservePrice],
	[DealerURL],
	[IsPaid],
	[OriginalEngineText],
	[HasProMarketing],
	[PhotoPlanId],
	[TransmissionText],
	[MakeOfferAllowed],
	[SchedulingComplete],
	[ServiceRecords],
	[CountryCL],
	[OdometerUnits],
	[BuyItNowUsed],
	[MagicBoxSection3],
	[SnapprPackage],
	[CarfaxPassFail],
	[CCID],
	[StateProvinceRegion],
	[DealerName],
	[ListingProgress],
	[StartingBid],
	[EstimatedMarketValue],
	[Mileage],
	[IsPromoVehicle],
	[MagicBoxSection2],
	[SpinCarLink],
	[MagicBoxSection5],
	[Photo_Plan_Status],
	[Address],
	[HaveAllPhotos],
	[MagicBoxSection6],
	[OriginalEngine],
	[VehicleStoryDescriptionInterior],
	[UserComments],
	[CarTitleInYourName],
	[MarketValue],
	[PackageTransactionId],
	[Specialist_Section_Comp1_Price],
	[Rust],
	[MakeWholeAmount],
	[Specialist_Section_Comp3_Price],
	[VehicleStoryDescriptionEngineTransmissionPictures],
	[WhereDidYouHearAboutUsListing],
	[HasProPhotography],
	[IsApproved],
	[ListingNotes],
	[Specialist_Section_Comp4_Info],
	[HowLongOwned],
	[DraftEmailNotificationSent],
	[Copy_Writer_Feedback],
	[ExpertVideoReview],
	[Specialist_Section_Comp5_Info],
	[Comped],
	[BeenListedText],
	[IsTaxable],
	[Transmission],
	[BeenModified],
	[Specialist_Section_Comp3_Info],
	[CityCL],
	[PaintWorkText],
	[Dealer],
	[ReservePriceCL],
	[MileageAccurate],
	[Acct_Rep_Email],
	[LastServiceInformation],
	[DealerFees],
	[Specialist_Section_Comp4_Price],
	[VehicleStoryDescriptionExterior]
from updateData

union all

SELECT
	[ListingID],
	[Consignor_SKey],
	[Car_Skey],
	[PrimaryCategoryId],
	[CurrencyID],
	[ListingTypeID],
	[ListingType],
	[CreatedDate],
	[UpdatedDate],
	[DeletedDate],
	[Title],
	[OriginalRelistCount],
	[Hits],
	[EndDTTM],
	[StartDTTM],
	[Subtitle],
	[Location],
	[Status],
	[CurrentPrice],
	[LastUpdatedUser],
	[Duration],
	[Version],
	[Increment],
	[OriginalPrice],
	[AutoRelistRemaining],
	[CurrentQuantity],
	[OriginalQuantity],
	[RelistIteration],
	[PrimaryImageURI],
	[AcceptedActionCount],
	[OwnerUserName],
	[CurrentListingActionId],
	[CurrentListingActionUserName],
	[OfferCount],
	[VehicleStoryOpeningStatement],
	[VehicleStoryDescriptionCarFax],
	[Acct_Rep_Phone],
	[HasMagicBox],
	[HasDealerFee],
	[VehicleStory],
	[CarfaxPassFailError],
	[LeadSource],
	[VehicleStoryDescriptionInterior2Pictures],
	[Decade],
	[PaintWork],
	[Specialist_Section_Comp2_Info],
	[Curated],
	[VehicleStoryDescriptionUndercarriagePictures],
	[IsFeaturedVehicle],
	[VehicleStoryOpeningStatementPictures],
	[Copy_Writer_Status],
	[FixedPrice],
	[LockUsername],
	[NoReserveCheck],
	[VehicleStoryDescriptionCarFaxPictures],
	[BeenListed],
	[Acct_Rep],
	[MagicBoxSection4],
	[Copy_Writer],
	[Taxonomy],
	[PersonalMileage],
	[Specialist_Section_Comp2_Price],
	[VehicleStoryDescriptionInterior2],
	[VehicleStoryDescriptionUndercarriage],
	[VehicleStoryDescriptionInteriorPictures],
	[Acct_Rep_Name],
	[CarfaxLink],
	[HideListing],
	[CurrentIssues],
	[TargetReserve],
	[TransactionId],
	[Specialist],
	[BuyItNow],
	[VehicleStoryDescriptionEngineTransmission],
	[CountryOfOrigin],
	[CommissionOverrideReason],
	[WhereDidYouHearAboutUsListingReferral],
	[CaliforniaSmogCheck],
	[Modifications],
	[Zip],
	[ListingState],
	[AnythingElseWeShouldKnow],
	[VehicleTitle],
	[Specialist_Section_Notes],
	[VehicleStoryDescriptionExterior2],
	[Photo_Plan],
	[VehicleStoryDescriptionExterior2Pictures],
	[Era],
	[Commission],
	[MakeOfferAvailable],
	[IsEdited],
	[WhereDidYouHearAboutUsListingOther],
	[MagicBoxSection1],
	[VehicleStoryDescriptionExteriorPictures],
	[Specialist_Section_Original_Reserve],
	[Specialist_Section_Comp1_Info],
	[UI_ListingStateHold],
	[AddressLine2],
	[Specialist_Section_Comp5_Price],
	[WGL_Public_Report],
	[PremiumListing],
	[ReservePrice],
	[DealerURL],
	[IsPaid],
	[OriginalEngineText],
	[HasProMarketing],
	[PhotoPlanId],
	[TransmissionText],
	[MakeOfferAllowed],
	[SchedulingComplete],
	[ServiceRecords],
	[CountryCL],
	[OdometerUnits],
	[BuyItNowUsed],
	[MagicBoxSection3],
	[SnapprPackage],
	[CarfaxPassFail],
	[CCID],
	[StateProvinceRegion],
	[DealerName],
	[ListingProgress],
	[StartingBid],
	[EstimatedMarketValue],
	[Mileage],
	[IsPromoVehicle],
	[MagicBoxSection2],
	[SpinCarLink],
	[MagicBoxSection5],
	[Photo_Plan_Status],
	[Address],
	[HaveAllPhotos],
	[MagicBoxSection6],
	[OriginalEngine],
	[VehicleStoryDescriptionInterior],
	[UserComments],
	[CarTitleInYourName],
	[MarketValue],
	[PackageTransactionId],
	[Specialist_Section_Comp1_Price],
	[Rust],
	[MakeWholeAmount],
	[Specialist_Section_Comp3_Price],
	[VehicleStoryDescriptionEngineTransmissionPictures],
	[WhereDidYouHearAboutUsListing],
	[HasProPhotography],
	[IsApproved],
	[ListingNotes],
	[Specialist_Section_Comp4_Info],
	[HowLongOwned],
	[DraftEmailNotificationSent],
	[Copy_Writer_Feedback],
	[ExpertVideoReview],
	[Specialist_Section_Comp5_Info],
	[Comped],
	[BeenListedText],
	[IsTaxable],
	[Transmission],
	[BeenModified],
	[Specialist_Section_Comp3_Info],
	[CityCL],
	[PaintWorkText],
	[Dealer],
	[ReservePriceCL],
	[MileageAccurate],
	[Acct_Rep_Email],
	[LastServiceInformation],
	[DealerFees],
	[Specialist_Section_Comp4_Price],
	[VehicleStoryDescriptionExterior]
from insertData
    ');

  CREATE TABLE "dbo_dbo"."AH_Listings_FT__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo_dbo.AH_Listings_FT__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo_dbo"."AH_Listings_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_dbo"."AH_Listings_FT__dbt_tmp_temp_view"
    end


