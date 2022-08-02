{{ config(materialized='view',schema='stg')}}
Select
	cast([NEXUSSTATE] as nvarchar(4000)) [NexusState],
	cast([PURCHASESTATE] as nvarchar(4000)) [PurchaseState],
	cast([CLASSNAME] as nvarchar(4000)) [ClassName],
	[ITEMTAXTYPEID] [ItemTaxTypeID],
	cast([TAXRULEDESCRIPTION] as nvarchar(4000)) [TaxruleDescription],
	[AUCTIONTYPEBIT] [AuctionTypeBit]
From stg.[Auct_TaxProcessor_Raw]
