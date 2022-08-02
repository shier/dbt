{{ config(materialized='table',schema='dbo')}}
Select
	cast([GLInfoTaxID] as int) [GLInfoTaxID],
	cast([GLInfoName] as nvarchar(4000)) [GLInfoName],
	cast([AuctionBusinessUnit] as nvarchar(4000)) [AuctionBusinessUnit],
	cast([TaxTypeID] as int) [TaxTypeID] 
From stg.[Auct_GLInfoTax_FinalView]