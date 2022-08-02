{{ config(materialized='table',schema='dbo')}}
Select
	cast([TaxRatesID] as int) [TaxRatesID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([AuctionID] as int) [AuctionID],
	cast([Rate] as numeric(18,6)) [Rate] 
From stg.[Auct_TaxRates_FinalView]