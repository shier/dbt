
  
  if object_id ('"dbo"."AH_PaymentConfigurationTable__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_PaymentConfigurationTable__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_PaymentConfigurationTable__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_PaymentConfigurationTable__dbt_tmp"
    end


   EXEC('create view dbo.AH_PaymentConfigurationTable__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [Id],
	cast([Active] as bit) [Active],
	cast([MinimumBidHold] as numeric(19,4)) [MinimumBidHold],
	cast([BasicplanPrice] as numeric(19,4)) [BasicPlanPrice],
	cast([ProPhotographyPrice] as numeric(19,4)) [ProPhotographyPrice],
	cast([ProMarketingPrice] as numeric(19,4)) [ProMarketingPrice],
	cast([Minfraudscore] as numeric(19,4)) [minFraudScore],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([MaximumBidCharge] as numeric(19,4)) [MaximumBidCharge],
	cast([BidHoldPercentage] as numeric(19,4)) [BidHoldPercentage] 
From stg.[AH_PaymentConfigurationTable_FinalView]
    ');

  CREATE TABLE "dbo"."AH_PaymentConfigurationTable__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_PaymentConfigurationTable__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_PaymentConfigurationTable__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_PaymentConfigurationTable__dbt_tmp_temp_view"
    end


