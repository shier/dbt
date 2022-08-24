{{ config(materialized='view',schema='stg')}}
Select
	[COLLECTIONID] [CollectionID],
	[CONSIGNMENTID] [ConsignmentID],
	[ACTIVE] [Active]
From stg.[Auct_Collection_Consignment_Raw]
