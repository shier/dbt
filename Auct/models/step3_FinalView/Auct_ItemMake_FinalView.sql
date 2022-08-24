{{ config(materialized='view',schema='stg')}}
Select
	[ItemMakeID],[Name],[ItemTaxTypeID] 
From stg.[Auct_ItemMake_Incr] 
Where [dbt_valid_to] is null