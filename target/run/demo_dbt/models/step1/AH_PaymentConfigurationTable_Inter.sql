
  
  if object_id ('"stg"."AH_PaymentConfigurationTable_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_PaymentConfigurationTable_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_PaymentConfigurationTable_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_PaymentConfigurationTable_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_PaymentConfigurationTable_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	[Active] [Active],
	[MinimumBidHold] [MinimumBidHold],
	[BasicPlanPrice] [BasicplanPrice],
	[ProPhotographyPrice] [ProPhotographyPrice],
	[ProMarketingPrice] [ProMarketingPrice],
	[minFraudScore] [Minfraudscore],
	[UpdatedOn] [UpdatedOn],
	[CreatedOn] [CreatedOn],
	[MaximumBidCharge] [MaximumBidCharge],
	[BidHoldPercentage] [BidHoldPercentage]
From stg.[AH_PaymentConfigurationTable_Raw]
    ');

  CREATE TABLE "stg"."AH_PaymentConfigurationTable_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_PaymentConfigurationTable_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_PaymentConfigurationTable_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_PaymentConfigurationTable_Inter__dbt_tmp_temp_view"
    end


