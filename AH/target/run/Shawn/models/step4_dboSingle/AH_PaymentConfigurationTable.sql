
  
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
	cast([ID] as int) [ID],
	cast([Active] as bit) [Active],
	cast([MinimumBidHold] as numeric(194)) [MinimumBidHold],
	cast([BasicplanPrice] as numeric(194)) [BasicplanPrice],
	cast([ProPhotographyPrice] as numeric(194)) [ProPhotographyPrice],
	cast([ProMarketingPrice] as numeric(194)) [ProMarketingPrice],
	cast([Minfraudscore] as numeric(194)) [Minfraudscore],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([MaximumBidCharge] as numeric(194)) [MaximumBidCharge],
	cast([BidHoldPercentage] as numeric(194)) [BidHoldPercentage] 
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


