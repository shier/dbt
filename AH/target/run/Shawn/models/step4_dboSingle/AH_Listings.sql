
  
  if object_id ('"dbo"."AH_Listings__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Listings__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Listings__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Listings__dbt_tmp"
    end


   EXEC('create view dbo.AH_Listings__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ListingID],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser],
	cast([PrimaryImageURI] as nvarchar(2048)) [PrimaryImageURL],
	cast([OwnerUserName] as nvarchar(500)) [OwnerUserName],
	cast([CurrentListingActionUserName] as nvarchar(500)) [CurrentListingActionUserName],
	cast([Title] as nvarchar(4000)) [Title],
	cast([SubTitle] as nvarchar(4000)) [Subtitle],
	cast([Status] as nvarchar(100)) [Status],
	cast([CreatedOn] as datetime) [Created],
	cast([UpdatedOn] as datetime) [UpdatedDate],
	cast([DeletedOn] as datetime) [DeletedDate],
	cast([Enddttm] as datetime) [EndDTTM],
	cast([Startdttm] as datetime) [StartDTTM],
	cast([CurrentQuantity] as int) [CurrentQuantity],
	cast([OriginalQuantity] as int) [OriginalQuantity],
	cast([AcceptedActionCount] as int) [AcceptedActionCount],
	cast([OwnerID] as int) [OwnerID],
	cast([ListingTypeID] as int) [ListingTypeID],
	cast([Duration] as int) [Duration],
	cast([Version] as int) [Version],
	cast([CurrencyID] as money) [CurrencyID],
	cast([PrimaryCategoryID] as int) [PrimaryCategoryId],
	cast([CurrentListingActionID] as int) [CurrentListingActionId],
	cast([Hits] as int) [Hits],
	cast([CurrentPrice] as decimal(24,2)) [CurrentPrice],
	cast([Increment] as decimal(24,2)) [Increment],
	cast([OriginalPrice] as money) [OriginalPrice] 
From stg.[AH_Listings_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Listings__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Listings__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Listings__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Listings__dbt_tmp_temp_view"
    end

