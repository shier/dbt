
  
  if object_id ('"dbo"."CC_ListingReadOnly__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ListingReadOnly__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_ListingReadOnly__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_ListingReadOnly__dbt_tmp"
    end


   EXEC('create view dbo.CC_ListingReadOnly__dbt_tmp_temp_view as
    
Select
	cast([City] as nvarchar(4000)) [City],
	cast([State] as nvarchar(4000)) [State],
	cast([ZipCode] as nvarchar(4000)) [ZipCode],
	cast([Make] as nvarchar(4000)) [Make],
	cast([Model] as nvarchar(4000)) [Model],
	cast([Description] as nvarchar(4000)) [Description],
	cast([CompanyName] as nvarchar(4000)) [CompanyName],
	cast([SrcsetandFirstURL] as nvarchar(4000)) [SrcsetandFirstURL],
	cast([Country] as nvarchar(4000)) [Country],
	cast([StockNumber] as nvarchar(4000)) [StockNumber],
	cast([ID] as int) [ID],
	cast([ListingStatusID] as int) [ListingStatusID],
	cast([CompanyID] as int) [CompanyID],
	cast([Year] as int) [Year],
	cast([PriceTypeID] as int) [PriceTypeID],
	cast([VehicleTypeID] as int) [VehicleTypeID],
	cast([CompanyTypeID] as int) [CompanyTypeID],
	cast([ImageCount] as int) [ImageCount],
	cast([VideoCount] as int) [VideoCount],
	cast([CategoryID] as int) [CategoryID],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([FeaturedUntil] as datetime) [FeaturedUntil],
	cast([FeaturedOn] as datetime) [FeaturedOn],
	cast([IsActive] as bit) [IsActive],
	cast([IsFeaturedListing] as bit) [IsFeaturedListing],
	cast([Convertible] as bit) [Convertible],
	cast([Price] as numeric(19,4)) [Price],
	cast([Latitude] as float) [Latitude],
	cast([Longitude] as float) [Longitude] 
From stg.[CC_ListingReadOnly_FinalView]
    ');

  CREATE TABLE "dbo"."CC_ListingReadOnly__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_ListingReadOnly__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_ListingReadOnly__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ListingReadOnly__dbt_tmp_temp_view"
    end


