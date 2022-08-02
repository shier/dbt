{{ config(materialized='table',schema='dbo')}}
Select
	cast([NexusState] as nvarchar(4000)) [NexusState],
	cast([PurchaseState] as nvarchar(4000)) [PurchaseState],
	cast([ClassName] as nvarchar(4000)) [ClassName],
	cast([ItemTaxTypeID] as int) [ItemTaxTypeID],
	cast([TaxruleDescription] as nvarchar(4000)) [TaxruleDescription],
	cast([AuctionTypeBit] as int) [AuctionTypeBit] 
From stg.[Auct_TaxProcessor_FinalView]