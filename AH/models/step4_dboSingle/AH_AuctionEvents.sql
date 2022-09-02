{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([SoftclosingGroupIncrementseconds] as int) [SoftclosingGroupIncrementseconds],
	cast([LotCount] as int) [LotCount],
	cast([CategoryID] as int) [CategoryID],
	cast([CurrencyID] as int) [CurrencyID],
	cast([ClosingGroupIncrementseconds] as int) [ClosingGroupIncrementseconds],
	cast([CurrentclosingGroup] as int) [CurrentclosingGroup],
	cast([CurrentSoftclosingGroup] as int) [CurrentSoftclosingGroup],
	cast([CurrentLotOrder] as int) [CurrentLotOrder],
	cast([OwnerID] as int) [OwnerID],
	cast([ProxyBidding] as bit) [ProxyBidding],
	cast([Published] as bit) [Published],
	cast([PreviewLots] as bit) [PreviewLots],
	cast([LotsTaxable] as bit) [LotsTaxable],
	cast([FollowLiveEnabled] as bit) [FollowLiveEnabled],
	cast([BuyersPremiumPercent] as numeric(194)) [BuyersPremiumPercent],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([Startdttm] as datetime) [Startdttm],
	cast([Enddttm] as datetime) [Enddttm],
	cast([EstimatedLastEnddttm] as datetime) [EstimatedLastEnddttm],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([Description] as nvarchar(4000)) [Description],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([Status] as nvarchar(4000)) [Status],
	cast([Timezone] as nvarchar(4000)) [Timezone],
	cast([TermsandConditions] as nvarchar(4000)) [TermsandConditions],
	cast([PrimaryImageURI] as nvarchar(4000)) [PrimaryImageURI],
	cast([Title] as nvarchar(4000)) [Title],
	cast([SecondaryImageURI] as nvarchar(4000)) [SecondaryImageURI],
	cast([OwnerUserName] as nvarchar(4000)) [OwnerUserName],
	cast([ShippingInfo] as nvarchar(4000)) [ShippingInfo],
	cast([SubTitle] as nvarchar(4000)) [SubTitle],
	cast([ManagedByName] as nvarchar(4000)) [ManagedByName] 
From stg.[AH_AuctionEvents_FinalView]