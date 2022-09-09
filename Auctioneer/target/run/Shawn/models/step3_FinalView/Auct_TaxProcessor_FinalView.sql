create view "stg"."Auct_TaxProcessor_FinalView__dbt_tmp" as
    
Select
	[NexusState],[PurchaseState],[ClassName],[ItemTaxTypeID],[TaxruleDescription],[AuctionTypeBit] 
From [Auct_TaxProcessor_Incr] 
Where [dbt_valid_to] is null
