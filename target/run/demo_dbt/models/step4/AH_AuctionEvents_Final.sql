
  
  if object_id ('"stg"."AH_AuctionEvents_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_AuctionEvents_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_AuctionEvents_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_AuctionEvents_Final__dbt_tmp"
    end


   EXEC('create view stg.AH_AuctionEvents_Final__dbt_tmp_temp_view as
    
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[Startdttm],[Enddttm],[EstimatedLastEnddttm],[ClosingGroupIncrementseconds],[CurrentclosingGroup],[CurrentSoftclosingGroup],[CurrentLotOrder],[OwnerID],[SoftclosingGroupIncrementseconds],[LotCount],[CategoryID],[CurrencyID],[FollowLiveEnabled],[ProxyBidding],[Published],[PreviewLots],[LotsTaxable],[LastUpdatedUser],[Status],[Timezone],[TermsandConditions],[PrimaryImageURI],[SecondaryImageURI],[OwnerUserName],[ShippingInfo],[SubTitle],[ManagedByName],[Title],[Description],[BuyersPremiumPercent] 
From stg.[AH_AuctionEvents_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."AH_AuctionEvents_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_AuctionEvents_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_AuctionEvents_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_AuctionEvents_Final__dbt_tmp_temp_view"
    end


