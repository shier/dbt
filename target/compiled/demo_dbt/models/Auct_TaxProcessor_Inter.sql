
Select
	ITEMTAXTYPEID ItemTaxTypeID,
	AUCTIONTYPEBIT AuctionTypeBit,
	cast(NEXUSSTATE as nvarchar(4000)) NexusState,
	cast(PURCHASESTATE as nvarchar(4000)) PurchaseState,
	cast(CLASSNAME as nvarchar(4000)) ClassName,
	cast(TAXRULEDESCRIPTION as nvarchar(4000)) TaxruleDescription
From Auct_TaxProcessor_Raw