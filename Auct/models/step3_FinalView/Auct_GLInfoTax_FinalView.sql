{{ config(materialized='view',schema='stg')}}
Select
	[GLInfoTaxID],[GLInfoName],[AuctionBusinessUnit],[TaxTypeID] 
From stg.[Auct_GLInfoTax_Incr] 
Where [dbt_valid_to] is null