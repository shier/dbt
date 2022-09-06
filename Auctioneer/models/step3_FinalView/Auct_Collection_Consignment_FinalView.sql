{{ config(materialized='view',schema='stg')}}
Select
	[CollectionID],[ConsignmentID],[Active] 
From [Auct_Collection_Consignment_Incr]