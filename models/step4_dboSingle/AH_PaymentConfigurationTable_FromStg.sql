{{ config(materialized='table',schema='dbo')}}
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