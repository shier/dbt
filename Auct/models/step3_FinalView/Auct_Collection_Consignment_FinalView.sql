{{ config(materialized='view',schema='stg')}}
Select
	[CollectionID],[ConsignmentID],[Active] 
From stg.[Auct_Collection_Consignment_Incr] 
Where [dbt_valid_to] is null