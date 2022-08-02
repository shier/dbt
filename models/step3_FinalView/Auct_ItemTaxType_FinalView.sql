{{ config(materialized='view',schema='stg')}}
Select
	[ItemTaxTypeID],[Name] 
From stg.[Auct_ItemTaxType_Incr] 
Where [dbt_valid_to] is null