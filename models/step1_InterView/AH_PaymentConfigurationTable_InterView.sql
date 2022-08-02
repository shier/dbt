{{ config(materialized='view',schema='stg')}}
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
