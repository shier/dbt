
Select
	cast([TaxRatesID] as int) [TAXRATESID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([Rate] as numeric(18,6)) [RATE] 
From stg.[Auct_TaxRates_FinalView]