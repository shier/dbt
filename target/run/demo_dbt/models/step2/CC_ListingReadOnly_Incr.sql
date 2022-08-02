
      
  
  if object_id ('"stg"."CC_ListingReadOnly_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingReadOnly_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ListingReadOnly_Incr"','U') is not null
    begin
    drop table "stg"."CC_ListingReadOnly_Incr"
    end


   EXEC('create view stg.CC_ListingReadOnly_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(FeaturedUntil as varchar), Cast(FeaturedOn as varchar), Cast(IsActive as varchar), Cast(IsFeaturedListing as varchar), Cast(Convertible as varchar), Cast(ListingStatusID as varchar), Cast(CompanyID as varchar), Cast(Year as varchar), Cast(PriceTypeID as varchar), Cast(VehicleTypeID as varchar), Cast(Latitude as varchar), Cast(Longitude as varchar), Cast(CompanyTypeID as varchar), Cast(ImageCount as varchar), Cast(VideoCount as varchar), Cast(CategoryID as varchar), Cast(Price as varchar), City, State, ZipCode, StockNumber, Make, Model, Description, CompanyName, SrcsetandFirstURL, Country)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ListingReadOnly_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_ListingReadOnly_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ListingReadOnly_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_ListingReadOnly_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingReadOnly_Incr_temp_view"
    end



  