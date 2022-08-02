
  
  if object_id ('"stg"."AH_AuctionEvents_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_AuctionEvents_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_AuctionEvents_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_AuctionEvents_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_AuctionEvents_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	[SoftClosingGroupIncrementSeconds] [SoftclosingGroupIncrementseconds],
	[LotCount] [LotCount],
	[CategoryID] [CategoryID],
	[CurrencyId] [CurrencyID],
	[ClosingGroupIncrementSeconds] [ClosingGroupIncrementseconds],
	[CurrentClosingGroup] [CurrentclosingGroup],
	[CurrentSoftClosingGroup] [CurrentSoftclosingGroup],
	[CurrentLotOrder] [CurrentLotOrder],
	[OwnerId] [OwnerID],
	[ProxyBidding] [ProxyBidding],
	[Published] [Published],
	[PreviewLots] [PreviewLots],
	[LotsTaxable] [LotsTaxable],
	[FollowLiveEnabled] [FollowLiveEnabled],
	[BuyersPremiumPercent] [BuyersPremiumPercent],
	[DeletedOn] [DeletedOn],
	[StartDTTM] [Startdttm],
	[EndDTTM] [Enddttm],
	[EstimatedLastEndDTTM] [EstimatedLastEnddttm],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	cast([Description] as nvarchar(4000)) [Description],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([Status] as nvarchar(4000)) [Status],
	cast([TimeZone] as nvarchar(4000)) [Timezone],
	cast([TermsAndConditions] as nvarchar(4000)) [TermsandConditions],
	cast([PrimaryImageURI] as nvarchar(4000)) [PrimaryImageURI],
	cast([Title] as nvarchar(4000)) [Title],
	cast([SecondaryImageURI] as nvarchar(4000)) [SecondaryImageURI],
	cast([OwnerUserName] as nvarchar(4000)) [OwnerUserName],
	cast([ShippingInfo] as nvarchar(4000)) [ShippingInfo],
	cast([Subtitle] as nvarchar(4000)) [SubTitle],
	cast([ManagedByName] as nvarchar(4000)) [ManagedByName]
From stg.[AH_AuctionEvents_Raw]
    ');

  CREATE TABLE "stg"."AH_AuctionEvents_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_AuctionEvents_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_AuctionEvents_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_AuctionEvents_Inter__dbt_tmp_temp_view"
    end


