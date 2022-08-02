
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[Startdttm],[Enddttm],[EstimatedLastEnddttm],[ClosingGroupIncrementseconds],[CurrentclosingGroup],[CurrentSoftclosingGroup],[CurrentLotOrder],[OwnerID],[SoftclosingGroupIncrementseconds],[LotCount],[CategoryID],[CurrencyID],[FollowLiveEnabled],[ProxyBidding],[Published],[PreviewLots],[LotsTaxable],[LastUpdatedUser],[Status],[Timezone],[TermsandConditions],[PrimaryImageURI],[SecondaryImageURI],[OwnerUserName],[ShippingInfo],[SubTitle],[ManagedByName],[Title],[Description],[BuyersPremiumPercent] 
From stg.[AH_AuctionEvents_Incr] 
Where [dbt_valid_to] is null