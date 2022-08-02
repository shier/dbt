
  
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
	[Id] [ID],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([PrimaryImageURI] as nvarchar(4000)) [PrimaryImageURI],
	cast([OwnerUserName] as nvarchar(4000)) [OwnerUserName],
	cast([CurrentListingActionUserName] as nvarchar(4000)) [CurrentListingActionUserName],
	cast([Title] as nvarchar(4000)) [Title],
	cast([Description] as nvarchar(4000)) [Description],
	cast([Subtitle] as nvarchar(4000)) [SubTitle],
	cast([Location] as nvarchar(4000)) [Location],
	cast([Status] as nvarchar(4000)) [Status],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[EndDTTM] [Enddttm],
	[StartDTTM] [Startdttm],
	[AutoRelistRemaining] [AutoreListrEMAining],
	[CurrentQuantity] [CurrentQuantity],
	[OriginalQuantity] [OriginalQuantity],
	[RelistIteration] [ReListiteration],
	[LotId] [LotID],
	[AcceptedActionCount] [AcceptedActionCount],
	[OwnerId] [OwnerID],
	[ListingTypeId] [ListingTypeID],
	[Duration] [Duration],
	[Version] [Version],
	[CurrencyId] [CurrencyID],
	[PrimaryCategoryId] [PrimaryCategoryID],
	[CurrentListingActionID] [CurrentListingActionID],
	[OfferCount] [OfferCount],
	[OriginalRelistCount] [OriginalreListCount],
	[Hits] [Hits],
	[CurrentPrice] [CurrentPrice],
	[Increment] [Increment],
	[OriginalPrice] [OriginalPrice]
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


