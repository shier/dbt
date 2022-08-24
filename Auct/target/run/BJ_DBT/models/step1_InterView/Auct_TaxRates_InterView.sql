create view "dbo_stg"."Auct_TaxRates_InterView__dbt_tmp" as
    
Select
	[TAXRATESID] [TaxRatesID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[AUCTIONID] [AuctionID],
	[RATE] [Rate]
From stg.[Auct_TaxRates_Raw]
