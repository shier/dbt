{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([SoftclosingGroupIncrementseconds] as varchar), Cast([LotCount] as varchar), Cast([CategoryID] as varchar), Cast([CurrencyID] as varchar), Cast([ID] as varchar), Cast([ClosingGroupIncrementseconds] as varchar), Cast([CurrentclosingGroup] as varchar), Cast([CurrentSoftclosingGroup] as varchar), Cast([CurrentLotOrder] as varchar), Cast([OwnerID] as varchar), Cast([ProxyBidding] as varchar), Cast([Published] as varchar), Cast([PreviewLots] as varchar), Cast([LotsTaxable] as varchar), Cast([FollowLiveEnabled] as varchar), Cast([BuyersPremiumPercent] as varchar), Cast([DeletedOn] as varchar), Cast([Startdttm] as varchar), Cast([Enddttm] as varchar), Cast([EstimatedLastEnddttm] as varchar), Cast([CreatedOn] as varchar), Cast([UpdatedOn] as varchar), [Description], [LastUpdatedUser], [Status], [Timezone], [TermsandConditions], [PrimaryImageURI], [Title], [SecondaryImageURI], [OwnerUserName], [ShippingInfo], [SubTitle], [ManagedByName])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[AH_AuctionEvents_InterView]
	)
Select * From hashData
{% if is_incremental() %}
	where not exists 
	(
		select dbt_scd_id 
		from {{ this }} compareData
		where hashData.dbt_scd_id=compareData.dbt_scd_id
	)
{% endif %}
