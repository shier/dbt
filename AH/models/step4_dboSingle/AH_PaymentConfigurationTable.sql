{{ config(materialized='table',schema='dbo')}}
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