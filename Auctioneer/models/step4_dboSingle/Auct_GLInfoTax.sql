{{ config(materialized='table',schema='dbo')}}
Select
	cast([GLInfoName] as nvarchar(4000)) [GLINFONAME],
	cast([AuctionBusinessUnit] as nvarchar(4000)) [AUCTIONBUSINESSUNIT],
	cast([TaxTypeID] as int) [TAXTYPEID],
	cast([GLInfoTaxID] as int) [GLINFOTAXID] 
From stg.[Auct_GLInfoTax_FinalView]