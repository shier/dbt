
  
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
	[ID],[SoftclosingGroupIncrementseconds],[LotCount],[CategoryID],[CurrencyID],[ClosingGroupIncrementseconds],[CurrentclosingGroup],[CurrentSoftclosingGroup],[CurrentLotOrder],[OwnerID],[ProxyBidding],[Published],[PreviewLots],[LotsTaxable],[FollowLiveEnabled],[BuyersPremiumPercent],[DeletedOn],[Startdttm],[Enddttm],[EstimatedLastEnddttm],[CreatedOn],[UpdatedOn],[Description],[LastUpdatedUser],[Status],[Timezone],[TermsandConditions],[PrimaryImageURI],[Title],[SecondaryImageURI],[OwnerUserName],[ShippingInfo],[SubTitle],[ManagedByName] 
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


