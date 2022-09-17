{{ config(materialized='table',schema='dbo')}}
Select
	cast([SoftclosingGroupIncrementseconds] as int) [SoftClosingGroupIncrementSeconds],
	cast([LotCount] as int) [LotCount],
	cast([CategoryID] as int) [CategoryID],
	cast([CurrencyID] as int) [CurrencyId],
	cast([ID] as int) [Id],
	cast([ClosingGroupIncrementseconds] as int) [ClosingGroupIncrementSeconds],
	cast([CurrentclosingGroup] as int) [CurrentClosingGroup],
	cast([CurrentSoftclosingGroup] as int) [CurrentSoftClosingGroup],
	cast([CurrentLotOrder] as int) [CurrentLotOrder],
	cast([OwnerID] as int) [OwnerId],
	cast([ProxyBidding] as bit) [ProxyBidding],
	cast([Published] as bit) [Published],
	cast([PreviewLots] as bit) [PreviewLots],
	cast([LotsTaxable] as bit) [LotsTaxable],
	cast([FollowLiveEnabled] as bit) [FollowLiveEnabled],
	cast([BuyersPremiumPercent] as numeric(19,4)) [BuyersPremiumPercent],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([Startdttm] as datetime) [StartDTTM],
	cast([Enddttm] as datetime) [EndDTTM],
	cast([EstimatedLastEnddttm] as datetime) [EstimatedLastEndDTTM],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([Description] as nvarchar(4000)) [Description],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([Status] as nvarchar(4000)) [Status],
	cast([Timezone] as nvarchar(4000)) [TimeZone],
	cast([TermsandConditions] as nvarchar(4000)) [TermsAndConditions],
	cast([PrimaryImageURI] as nvarchar(4000)) [PrimaryImageURI],
	cast([Title] as nvarchar(4000)) [Title],
	cast([SecondaryImageURI] as nvarchar(4000)) [SecondaryImageURI],
	cast([OwnerUserName] as nvarchar(4000)) [OwnerUserName],
	cast([ShippingInfo] as nvarchar(4000)) [ShippingInfo],
	cast([SubTitle] as nvarchar(4000)) [Subtitle],
	cast([ManagedByName] as nvarchar(4000)) [ManagedByName] 
From stg.[AH_AuctionEvents_FinalView]