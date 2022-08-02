
Select
	cast(AUCTIONBUSINESSUNIT as nvarchar(4000)) AuctionBusinessUnit,
	cast(GLINFONAME as nvarchar(4000)) GLInfoName,
	TAXTYPEID TaxTypeID,
	GLINFOTAXID GLInfoTaxID
From Auct_GLInfoTax_Raw