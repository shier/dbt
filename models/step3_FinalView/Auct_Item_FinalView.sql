{{ config(materialized='view',schema='stg')}}
Select
	[ItemID],[EstimatedValue],[Descr],[ItemTypeID],[ItemStatusID],[ContactID],[Created],[UpdateEventID],[ItemTaxTypeID] 
From stg.[Auct_Item_Incr] 
Where [dbt_valid_to] is null