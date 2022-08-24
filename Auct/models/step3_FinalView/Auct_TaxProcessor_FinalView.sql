{{ config(materialized='view',schema='stg')}}
Select
	[NexusState],[PurchaseState],[ClassName],[ItemTaxTypeID],[TaxruleDescription],[AuctionTypeBit] 
From [Auct_TaxProcessor_Incr]