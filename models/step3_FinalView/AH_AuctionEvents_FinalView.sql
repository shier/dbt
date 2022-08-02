{{ config(materialized='view',schema='stg')}}
Select
	[ID],[SoftclosingGroupIncrementseconds],[LotCount],[CategoryID],[CurrencyID],[ClosingGroupIncrementseconds],[CurrentclosingGroup],[CurrentSoftclosingGroup],[CurrentLotOrder],[OwnerID],[ProxyBidding],[Published],[PreviewLots],[LotsTaxable],[FollowLiveEnabled],[BuyersPremiumPercent],[DeletedOn],[Startdttm],[Enddttm],[EstimatedLastEnddttm],[CreatedOn],[UpdatedOn],[Description],[LastUpdatedUser],[Status],[Timezone],[TermsandConditions],[PrimaryImageURI],[Title],[SecondaryImageURI],[OwnerUserName],[ShippingInfo],[SubTitle],[ManagedByName] 
From stg.[AH_AuctionEvents_Incr] 
Where [dbt_valid_to] is null