
  
  if object_id ('"stg"."CC_ListingReadOnly_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingReadOnly_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ListingReadOnly_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_ListingReadOnly_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_ListingReadOnly_Inter__dbt_tmp_temp_view as
    
Select
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	FeaturedUntil FeaturedUntil,
	FeaturedOn Featuredon,
	IsActive IsActive,
	IsFeaturedListing IsFeaturedListing,
	Convertible Convertible,
	Id ID,
	ListingStatusId ListingStatusID,
	CompanyId CompanyID,
	Year Year,
	PriceTypeId PriceTypeID,
	VehicleTypeId VehicleTypeID,
	Latitude Latitude,
	Longitude Longitude,
	CompanyTypeId CompanyTypeID,
	ImageCount ImageCount,
	VideoCount VideoCount,
	CategoryId CategoryID,
	Price Price,
	cast(City as nvarchar(4000)) City,
	cast(State as nvarchar(4000)) State,
	cast(ZipCode as nvarchar(4000)) ZipCode,
	cast(StockNumber as nvarchar(4000)) StockNumber,
	cast(Make as nvarchar(4000)) Make,
	cast(Model as nvarchar(4000)) Model,
	cast(Description as nvarchar(4000)) Description,
	cast(CompanyName as nvarchar(4000)) CompanyName,
	cast(SrcsetAndFirstURL as nvarchar(4000)) SrcsetandFirstURL,
	cast(Country as nvarchar(4000)) Country
From CC_ListingReadOnly_Raw
    ');

  CREATE TABLE "stg"."CC_ListingReadOnly_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ListingReadOnly_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_ListingReadOnly_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingReadOnly_Inter__dbt_tmp_temp_view"
    end


