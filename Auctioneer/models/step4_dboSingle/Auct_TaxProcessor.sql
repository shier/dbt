{{ config(materialized='table',schema='dbo')}}
Select
	cast([NexusState] as nvarchar(4000)) [NEXUSSTATE],
	cast([PurchaseState] as nvarchar(4000)) [PURCHASESTATE],
	cast([ClassName] as nvarchar(4000)) [CLASSNAME],
	cast([ItemTaxTypeID] as int) [ITEMTAXTYPEID],
	cast([TaxruleDescription] as nvarchar(4000)) [TAXRULEDESCRIPTION],
	cast([AuctionTypeBit] as int) [AUCTIONTYPEBIT] 
From stg.[Auct_TaxProcessor_FinalView]