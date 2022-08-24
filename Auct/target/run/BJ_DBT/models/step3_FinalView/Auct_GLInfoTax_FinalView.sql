create view "stg"."Auct_GLInfoTax_FinalView__dbt_tmp" as
    
Select
	[GLInfoTaxID],[GLInfoName],[AuctionBusinessUnit],[TaxTypeID] 
From stg.[Auct_GLInfoTax_Incr] 
Where [dbt_valid_to] is null
