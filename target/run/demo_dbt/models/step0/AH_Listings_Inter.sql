
  
  if object_id ('"stg"."AH_Listings_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Listings_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Listings_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Listings_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_Listings_Inter__dbt_tmp_temp_view as
    
Select
	[CurrentPrice] [CurrentPrice],
	[Increment] [Increment],
	[OriginalPrice] [OriginalPrice],
	cast([Title] as nvarchar(4000)) [Title],
	[Description] [Description],
	cast([CurrentListingActionUserName] as nvarchar(4000)) [CurrentListingActionUserName],
	cast([Subtitle] as nvarchar(4000)) [SubTitle],
	cast([Location] as nvarchar(4000)) [Location],
	cast([Status] as nvarchar(4000)) [Status],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([PrimaryImageURI] as nvarchar(4000)) [PrimaryImageURI],
	cast([OwnerUserName] as nvarchar(4000)) [OwnerUserName],
	[DeletedOn] [DeletedOn],
	[EndDTTM] [Enddttm],
	[StartDTTM] [Startdttm],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[LotId] [LotID],
	[AcceptedActionCount] [AcceptedActionCount],
	[CurrentListingActionID] [CurrentListingActionID],
	[OfferCount] [OfferCount],
	[Id] [ID],
	[CurrencyId] [CurrencyID],
	[PrimaryCategoryId] [PrimaryCategoryID],
	[AutoRelistRemaining] [AutoreListrEMAining],
	[CurrentQuantity] [CurrentQuantity],
	[OriginalQuantity] [OriginalQuantity],
	[RelistIteration] [ReListiteration],
	[OriginalRelistCount] [OriginalreListCount],
	[Hits] [Hits],
	[OwnerId] [OwnerID],
	[ListingTypeId] [ListingTypeID],
	[Duration] [Duration],
	[Version] [Version]
From stg.[AH_Listings_Raw]
    ');

  CREATE TABLE "stg"."AH_Listings_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Listings_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Listings_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Listings_Inter__dbt_tmp_temp_view"
    end


