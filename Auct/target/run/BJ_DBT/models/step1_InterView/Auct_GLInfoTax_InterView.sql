create view "dbo_stg"."Auct_GLInfoTax_InterView__dbt_tmp" as
    
Select
	[GLINFOTAXID] [GLInfoTaxID],
	cast([GLINFONAME] as nvarchar(4000)) [GLInfoName],
	cast([AUCTIONBUSINESSUNIT] as nvarchar(4000)) [AuctionBusinessUnit],
	[TAXTYPEID] [TaxTypeID]
From stg.[Auct_GLInfoTax_Raw]
